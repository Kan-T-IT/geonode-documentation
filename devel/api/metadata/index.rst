==================================
Metadata Development via API v2
==================================

Objective
---------

The following project emerged from the need to address the issues presented by GeoNode's API v2 for editing a resource's metadata.
Originally, API v2 includes the `PUT` and `PATCH` methods for editing certain metadata.
However, attempts to edit these often result in uninformative and irrelevant error messages, necessitating backend intervention with tools to uncover the true causes of these issues; based on these, an action plan was devised to address them.
Additionally, it was necessary to develop new *endpoints* and handlers from scratch to enable editing of metadata that previously could not be modified via API v2.
This work is also fundamental for integration with the new metadata editing *frontend* developed by the KAN team, which will communicate with the *backend* via this API.

[Metadata `keywords` and `tkeywords`](https://redmine.kan.com.ar/issues/8138#note-11)
------------------------------------------------------------------------------------

To enable the setting of `keywords`, the `save()` method of the general resource serializer (`ResourceBaseSerializer`) was first edited to check if the `keywords` or `tkeywords` keys are present in the request and whether they are empty (occurs when attempting to delete existing ones and leave them as `null`).
If these variables are present and empty, they are cleared for that instance. If they are not empty, the respective handlers are called to check for existence and create any necessary entries:

.. code-block:: python

    def save(self, **kwargs):
        from geonode.resource.utils import KeywordHandler

        extent = self.validated_data.pop("extent", None)

        if "keywords" in self.validated_data and not self.validated_data["keywords"]:
            self.instance.keywords.clear()
        elif "keywords" in self.validated_data and self.validated_data["keywords"]:
            KeywordHandler(self.instance, self.validated_data["keywords"]).set_keywords()

        if "tkeywords" in self.validated_data and not self.validated_data["tkeywords"]:
            self.instance.tkeywords.clear()
        elif "tkeywords" in self.validated_data and self.validated_data["tkeywords"]:
            self.instance.tkeywords.set(self.validated_data["tkeywords"])

Next, it was necessary to add a handler in the model for cases where a list is provided. We extract the `name` of the `keyword`, which is the value of interest.

.. code-block:: python

    def keyword_list(self):
        if isinstance(self.keywords, list):
            return [kw.name for kw in self.keywords]
        else:
            return [kw.name for kw in self.keywords.all()]

Finally, we check if the `keyword` is already assigned to the resource, and if not, it is created:

.. code-block:: python

    class ComplexDynamicRelationField(DynamicRelationField):
        def to_internal_value_single(self, data, serializer):
            related_model = serializer.Meta.model
            if isinstance(data, str):
                data = json.loads(data)

            if isinstance(data, dict):
                try:
                    if hasattr(serializer, "many") and serializer.many is True:
                        return [serializer.get_model().objects.get(**d) for d in data]
                    return serializer.get_model().objects.get(**data)
                except related_model.DoesNotExist:
                    if self.field_name == 'keywords':
                        return serializer.get_model().objects.create(**data)
                    else:
                        raise ValidationError(
                            "Invalid value for '%s': %s object with ID=%s not found"
                            % (self.field_name, related_model.__name__, data)
                        )
            else:
                return super().to_internal_value_single(data, serializer)

[**VIEW COMMIT**](https://git.kan.com.ar/kan/geoexpressportal/geonode/-/commit/f7f41b2dbe3eccfa5b6c7ef42e48920e80aa3f54)

[Metadata `regions`](https://redmine.kan.com.ar/issues/8138#note-12)
--------------------------------------------------------------------

To enable editing of the `regions` metadata, it was necessary to set this parameter as editable in the endpoint serializer (`ResourceBaseSerializer`) by setting the parameter `read_only=False`.\
Additionally, the `save` method of this serializer had to be modified to first verify if the resource previously had `regions`. If so, the existing regions are cleared, and the new ones are set.

.. code-block:: python

    self.fields["regions"] = DynamicRelationField(SimpleRegionSerializer, embed=True, many=True, read_only=False)

.. code-block:: python

    if "regions" in self.validated_data and not self.validated_data["regions"]:
        self.instance.regions.clear()
    elif "regions" in self.validated_data and self.validated_data["regions"]:
        self.instance.regions.add(*[region.id for region in self.validated_data["regions"]])

[**SEE COMMIT**](https://git.kan.com.ar/kan/geoexpressportal/geonode/-/commit/ad76fe068037ebe4d7aa55f0da5cb2c4b4f9caae)

[Metadata `is_approved`](https://redmine.kan.com.ar/issues/8138#note-13)
------------------------------------------------------------------------

To enable editing of the `is_approved` metadata, it was necessary to set this parameter as editable in the endpoint serializer (`ResourceBaseSerializer`) by setting the parameter `read_only=False`.

.. code-block:: python

    self.fields["is_approved"] = serializers.BooleanField(required=False, read_only=False)

[**SEE COMMIT**](https://git.kan.com.ar/kan/geoexpressportal/geonode/-/commit/994c1b4314c4540d01343c4f78df054927d63696)

[Metadata `linked_resources`](https://redmine.kan.com.ar/issues/8373#note-5)
----------------------------------------------------------------------------

To enable editing of resources related to another resource via API v2, a handler was developed to allow this operation.\
The corresponding view was modified by adding a new handler for the `PATCH` method. This metadata can be modified by accessing the URL: `{base_url}/api/v2/resources/{resource_id}/linked_resources`.\
First, the object is extracted, and it is verified if it is an integer or a list; if it is another type, an exception is raised. If valid, the `update_linked_resources` method is called, passing the object.

.. code-block:: python

    @extend_schema(methods=["get", "patch"], description="Get or update linked resources")
    @action(
        detail=True,
        methods=["get", "patch"],
        permission_classes=[UserHasPerms(perms_dict={"default": {"GET": ["base.view_resourcebase"], "PATCH": ["base.change_resourcebase"]}})],
        url_path=r"linked_resources",  # noqa
        url_name="linked_resources",
    )
    def linked_resources(self, request, pk, *args, **kwargs):
        if request.method == "GET":
            return base_linked_resources(self.get_object().get_real_instance(), request.user, request.GET)

        elif request.method == "PATCH":
            try:
                instance = self.get_object().get_real_instance()
                data = request.data["resource"]
                resources_id_to_link = data["linked_resources"]

                if isinstance(resources_id_to_link, int):
                    res = [get_object_or_404(ResourceBase, pk=resources_id_to_link)]
                elif isinstance(resources_id_to_link, list):
                    res = [get_object_or_404(ResourceBase, pk=resource) for resource in resources_id_to_link]
                else:
                    raise ValueError("If resource IDs to link are many, they must be contained within a list (array). Else resource ID to link must be integer.")
                LinkedResourceSerializer(instance).update_linked_resources(res)

                return Response({"message": f"Resources with id {resources_id_to_link} successfully linked to this resource"}, status=200)

            except KeyError as e:
                logger.error(e)
                logger.exception(e)
                return Response(data={"message": f"BAD REQUEST: '{e.args[0]}' expected", "success": False}, status=400, exception=True)
            except Exception as e:
                logger.error(e)
                logger.exception(e)
                return Response(data={"message": e.args[0], "success": False}, status=500, exception=True)

In the serializer, a method named `update_linked_resources` was created, which removes all resources associated with the resource in question that are not in the list (or *int*) passed as a parameter. This list (or *int*) is first traversed to obtain the IDs of the records corresponding to that association, or if no association exists, it will be created.

[**SEE COMMIT**](https://git.kan.com.ar/kan/geoexpressportal/geonode/-/commit/a27b0e004f2d4986afeee8a865cd44dd71656188)

[Metadata `is_published`](https://redmine.kan.com.ar/issues/8387#note-3)
------------------------------------------------------------------------

To enable the editing of the `is_published` metadata, it was necessary to set this parameter as editable from the endpoint serializer (`ResourceBaseSerializer`), setting the parameter `read_only=False`.

.. code-block:: python

    self.fields["is_published"] = serializers.BooleanField(required=False, read_only=False)

[**SEE COMMIT**](https://git.kan.com.ar/kan/geoexpressportal/geonode/-/commit/c8496e0c0f6f14bf11cde7bdb832c12e969c84e1)

[Metadata `owner`](https://redmine.kan.com.ar/issues/8374#note-4)
-----------------------------------------------------------------

To enable the editing of the `owner` metadata, it was necessary to set this parameter as editable from the endpoint serializer (`ResourceBaseSerializer`), setting the parameter `read_only=False`.

.. code-block:: python

    self.fields["owner"] = DynamicRelationField(UserSerializer, embed=True, many=False, read_only=False)

[**SEE COMMIT**](https://git.kan.com.ar/kan/geoexpressportal/geonode/-/commit/4b8bdf65d0b24e5c9e4e1adb9107cb59714a9dd9)

[Metadata `metadata_uploaded_preserve`](https://redmine.kan.com.ar/issues/8388#note-2)
--------------------------------------------------------------------------------------

To enable the editing of the `metadata_uploaded_preserve` metadata, it was necessary to declare this field in the serializer and set it as a supported field.\
It was also added to the `extra_kwargs` dictionary and set as *not required*.

.. code-block:: python

    self.fields["metadata_uploaded_preserve"] = serializers.BooleanField(required=False)

.. code-block:: python

    class Meta:
        model = ResourceBase
        name = "resource"
        view_name = "base-resources-list"
        fields = (
        "pk",
        "metadata_uploaded_preserve"
        )

.. code-block:: python

    extra_kwargs = {
        "resource_type": {"required": False},
        "download_url": {"required": False},
        "is_copyable": {"required": False},
        "metadata_uploaded_preserve": {"required": False},
    }

[**SEE COMMIT**](https://git.kan.com.ar/kan/geoexpressportal/geonode/-/commit/3bcabccf975ca9ea57df4b0f9c6ff5d2c2d7f652)

[Metadata `use_featureinfo_custom_template`](https://redmine.kan.com.ar/issues/8388#note-2)
-------------------------------------------------------------------------------------------

To enable the editing of the `use_featureinfo_custom_template` metadata, it was necessary to declare this field in the layer serializer (DatasetSerializer) and set it as a supported field.

.. code-block:: python

    class Meta:
        model = Dataset
        name = "dataset"
        view_name = "datasets-list"
        fields = (
            "pk",
            "use_featureinfo_custom_template",
        )

.. code-block:: python

    use_featureinfo_custom_template = serializers.BooleanField(required=False)

[**SEE COMMIT**](https://git.kan.com.ar/kan/geoexpressportal/geonode/-/commit/757014688f59fbafc70a65abdaa8d1c608de5a52)

[Setting Nulls in Metadata `doi`, `temporal_extent_start`, `temporal_extent_end`, `edition`, `maintenance_frequency`, and `spatial_representation_type`](https://redmine.kan.com.ar/issues/8528#note-5)
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Although it was possible to edit the named metadata via API v2, they would fail when trying to set them to null values. To fix this, the parameters `allow_null=True` and in some cases `allow_blank=True` had to be set in the field definitions within the general resource serializer (`ResourceBaseSerializer`).

.. code-block:: python

    self.fields["doi"] = serializers.CharField(required=False, allow_blank=True, allow_null=True)
    self.fields["temporal_extent_start"] = serializers.DateTimeField(required=False, allow_null=True)
    self.fields["temporal_extent_end"] = serializers.DateTimeField(required=False, allow_null=True)
    self.fields["edition"] = serializers.CharField(required=False, allow_blank=True, allow_null=True)
    self.fields["maintenance_frequency"] = serializers.CharField(required=False, allow_blank=True, allow_null=True)
    self.fields["spatial_representation_type"] = ComplexDynamicRelationField(
        SpatialRepresentationTypeSerializer, embed=True, many=False, required=False, allow_null=True
    )

[**SEE COMMIT**](https://git.kan.com.ar/kan/geoexpressportal/geonode/-/commit/20c652d7ecf816c7e5f932a75731f24c2979cfe3)

[Metadata `attribute_set`](https://redmine.kan.com.ar/issues/8383#note-13)
--------------------------------------------------------------------------

New functionality was developed to create and/or update (in the same request) the attribute_set of a layer (Attributes model) via API v2 with the PATCH method.
The way to access this new endpoint is: `{base_url}/api/v2/datasets/{dataset_id}/attribute_set`.\
Using the GET method, the API will respond with the attributes that the layer already has.\
To achieve this, the original ViewSet was overridden by adding handlers for the `GET` and `PATCH` methods.

.. code-block:: python

    @action(
    detail=True,
    methods=["get", "patch"],
    url_path="attribute_set"
    )
    def attribute_set(self, request, pk=None, *args, **kwargs):
        dataset = self.get_object()
        if request.method == "GET":
            ...
        elif request.method == "PATCH":
            attributes_data = request.data.get('attributes', [])

            for attr_data in attributes_data:
                serializer = AttributeSerializer(dataset, data=attr_data)
                serializer.is_valid(raise_exception=True)
                serializer.update_or_create(dataset=dataset, validated_data=serializer.validated_data)

        return Response({"attributes": AttributeSerializer(dataset.attributes, many=True).data})

Additionally, a new method called `update_or_create` was created in the attribute serializer (`AttributeSerializer`). Based on the layer and attribute(s) passed to it, it will check if the `attribute` already exists, in which case it will overwrite the rest of its parameters. Otherwise, it will assign them to the relevant layer.

.. code-block:: python

    attribute = serializers.CharField(read_only=False)

    def update_or_create(self, dataset, validated_data):
        attribute = validated_data.get('attribute')
        existing_attr = Attribute.objects.filter(dataset=dataset, attribute=attribute).first()

        if existing_attr:
            for attr, value in validated_data.items():
                setattr(existing_attr, attr, value)
            existing_attr.save()
            return existing_attr
        else:
            required_fields = ['attribute', 'attribute_label', 'attribute_type', 'visible', 'display_order']
            if not all(field in validated_data for field in required_fields):
                raise serializers.ValidationError(f"Missing required fields: {', '.join(required_fields)}")

            return Attribute.objects.create(dataset=dataset, **validated_data)

[**SEE COMMIT**](https://git.kan.com.ar/kan/geoexpressportal/geonode/-/commit/6a7b0a60eea5d049491d97f88b4f85491094f5e1)
