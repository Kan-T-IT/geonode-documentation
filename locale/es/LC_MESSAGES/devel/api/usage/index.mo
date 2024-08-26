��    �      �  �   <	      P  �   Q    �  4  �  <     (   K     t  '   �  *   �  +   �  /     2   C  -   v  +   �  .   �  Y   �  O   Y  �   �  \   �     �  -   �  "   &  "   I  /   l  <   �  .   �  $     !   -     O     o  $   �  '   �  :   �  3         H     i  3   �  �   �  �   ;  "        %     7     O     j     s     �  	   �  �   �  '   *     R  	   ^     h     z  	   �     �     �    �  %  �  �   �  F   �  +   �       �     �   �  �   �     i  �   �  �   �  |   m   R   �   $   =!  X   b!     �!     �!     �!     �!     "  �   "  �   �"  �   e#     B$  #   O$  �   s$     .%  
   D%     O%  �   [%  ~   �%     q&     �&     �&     �&     �&      �&     �&     '     %'     :'  6   O'  �   �'  �   (  )  �(  q  �)  A   Z+  E   �+  d   �+  `   G,  (  �,  S   �-  �   %.  n   �.      5/  -   V/     �/     �/  �   �/     �0     �0     �0  3  �0  `   2  !  d2  �   �3  
   4     #4  	   04     :4  P   F4  %   �4  4   �4  $   �4     5  -    5     N5  $   j5     �5     �5     �5  %   �5     �5  #   �5  H   6  0   M6  3   ~6     �6     �6  �  �6  �   �8  "  .9  F  Q:  6   �;  (   �;     �;  '   <  *   @<  +   k<  /   �<  2   �<  -   �<  +   (=  .   T=  Y   �=  m   �=  �   K>  p   ;?     �?  -   �?  "   �?  "   @  /   7@  <   g@  .   �@  $   �@  !   �@     A     :A  $   WA  '   |A  :   �A  3   �A      B     4B  3   PB  �   �B  �   #C  "   D     >D  1   UD  +   �D     �D     �D     �D  
   �D  �   �D  9   �E     �E  	   �E     �E     F  	   F     #F     ?F  (  ^F  c  �G  �   �H  U   �I  =    J     ^J  �   eJ    K  �   ,L  �   �L  �   sM  �   $N  ~   O  s   �O  )   P  j   :P  $   �P     �P     �P  "   �P     Q  �   Q  �   �Q  �   �R     {S  '   �S  �   �S  !   �T     �T     �T  �   �T  �   sU  ,   �U     &V     7V     LV     `V      V     �V  %   �V     �V     �V  :   W  �   IW  �   �W  :  �X  �  �Y  W   �[  M   �[  h   @\  �   �\  s  ,]  V   �^  �   �^  �   �_  7   .`  5   f`     �`      �`  "  �`     �a     �a     b  H  b  m   fc  @  �c  �   e  
   �e     �e  	   �e     �e  R   �e  1   <f  4   nf  $   �f     �f  -   �f     �f  $   g     @g     [g     dg  %   jg     �g  -   �g  H   �g  0   h  3   @h     th     �h     /   �       =   -   9   G   n       *   ~             8       R         �       ]         K   V   L   }      1              O       >   B   f           r   {   v         �   �          U      \   c   x   �   W   6   H       $   [   b   �       4   o   ?   �   Z   �   y   +       I   s   l      `   	           ^      )       Q          ,           d   k   
   �       t       P   w   a   &      �   S          �   :       h           #   p          (      F       !      �   E       z                   _   .   j   2   |   N       i      �   A                 �   T   g           0   ;   3           �          @       5      "   e   M   X      <   m   J                              q   '       D   u   Y       C          %   �       �   7      �   �    *Download:* allows to download the resource specifically datasets and documents. ``[ view_resourcebase, download_resourcebase]`` *Edit:* allows to change attributes, properties of the datasets features, styles and metadata for the specified resource. ``[view_resourcebase, download_resourcebase, change_resourcebase, change_dataset_style, change_dataset_data, change_resourcebase_metadata]`` *Manage:* allows to update, delete, change permissions, publish and unpublish the resource. ``[view_resourcebase, download_resourcebase, change_resourcebase, change_dataset_style, change_dataset_data, publish_resourcebase, delete_resourcebase, change_resourcebase_metadata, change_resourcebase_permissions]`` *View:* allows to view the resource. ``[view_resourcebase]`` /api/v2/resources?extent=-180,-90,180,90 /api/v2/resources?favorite=true /api/v2/resources?filter{featured}=true /api/v2/resources?filter{is_approved}=true /api/v2/resources?filter{is_published}=true /api/v2/resources?filter{keywords.name}=example /api/v2/resources?filter{owner.username}=test_user /api/v2/resources?filter{regions.name}=global /api/v2/resources?filter{resource_type}=map /api/v2/resources?filter{resource_type}=vector /api/v2/resources?page=1&search=text-to-search&search_fields=title&search_fields=abstract A complete metadata file conforming to ISO-19115 can be uploaded for a dataset. A resource can be embedded inside a third party website. The “embed view” of a resource is suitable to be placed inside an iframe. The URL for the embedded view can be obtained from the ``resource.embed_url`` property. A token can be used in place of Basic Auth by setting ``'Authorization': 'Bearer <token>'``. API usage examples API: ``DELETE /api/v2/resources/{pk}/delete`` API: ``DELETE /api/v2/users/{pk}`` API: ``GET /api/v2/datasets/{id}`` API: ``GET /api/v2/resources/1791/permissions`` API: ``GET /datasets/{resource.alternate}/dataset_download`` API: ``GET /documents/{resource.pk}/download`` API: ``PATCH /api/v2/datasets/{id}`` API: ``PATCH /api/v2/users/{pk}`` API: ``POST /api/v2/documents`` API: ``POST /api/v2/groups`` API: ``POST /api/v2/uploads/upload`` API: ``POST /api/v2/users/{pk}/groups`` API: ``POST /api/v2/users/{pk}/remove_from_group_manager`` API: ``POST /api/v2/users/{pk}/transfer_resources`` API: ``POST /api/v2/users/{pk}`` API: ``POST /api/v2/users`` API: ``PUT /api/v2/datasets/{dataset_id}/metadata`` All available linked_resources  can be listed with API ``GET /api/v2/resources/{pk}/linked_resources``. where pk Resource base id As mentioned in previous chapters, GeoNode resources are categorized in different types e.g. datasets, maps, documents. Etc. All available resources can be listed with API ``GET /api/v2/resources``. Changing permissions on a resource Create a new user Dataset Update Metadata Dataset specific resources Datasets Delete a User Detail Documents Documents can also be created to reference remote resources. In this case the ``doc_url`` parameter must be used to set the URL of the remote document. Documents can be uploaded as form data. Edit a User Embedding Example Requests: Example: Examples: Filter with a single value Filter with multiple values From the resource detail response, URls and links to services can be obtained from the ``resource.links[]`` array value. The purpose of each link is defined by its ``link_type``. The “name” also can specify additional information about the linked resource. GeoNode also provides an API to get an overview of permissions set on a resource. The response contains users and groups with permissions set on them. However this API returns ``200`` if a requesting user has ``manage`` permissions on the resource otherwise it will return ``403 (Forbidden)``. GeoNode offers a download option to resources of resource_type dataset and document. For datasets, the download option is available for only datasets with uploaded files. GeoNode resources can be filtered with the following query parameters: Get the metadata of uploaded datasets with: Groups If the parameter ``skip_existing_layers`` is set to true ``True`` the uplad procedure will ignore files whose name matched with already existing resources. In GeoNode, On listing groups, the api returns groups which have group profiles. Therefore for django groups which are not related to a group profile are not included in the response. However these can be accessed in the Django Administration panel. In order to view status of the execution, the API method ``GET /api/v2/executionrequest/{execution_id}`` where ``{execution_id}`` is the value returned by the initial call to the upload API. In this case the list of validation rules configured in :ref:`user-deletion-rules` are checked before the deletion is executed. In this case the resources will be transfered to the user with id 1001, instead using the payload={"owner": "DEFAULT"} the resources will be transfered to the principal user In this case the user shall be removed as a group manager from the following group ids, if the payload would be payload={"groups": "ALL"} the user will be removed as a group manager from all the groups its part of In this section, we are going to demostrate how GeoNode API can be utilized/integrated with other applications using Python. It's important to note that other methods are case sensitive except the icontains. Linked Resources Listing and Details Links to each metadata format can be obtained from links with ``link_type = "metadata"`` List all resource links List user groups Listing Listing with basic auth: Metadata NOTE: The id of the “anonymous” and “registered members” groups can be obtained from the permissions of the resource. They are not listed inside the groups API, since these are spceial internal groups Notice that if the URL doesn't end with a valid doc extension, the ``extension`` parameter must be used (e.g. ``extension: 'jpeg'``). OGC requests can be built by taking: the OGC base url from  links from ``resource.links[]`` with ``"link_type"= ("OGC:WMS | OGC:WFS | OGC:WCS)`` the OGC service layername obtained from the ``resource.alternate`` property OGC services Obtaining permissions on a resource On listing the resources or on resource detail API, GeoNode includes perms attribute to each resource with a list of permissions a user making the request has on the respective resource. Overwriting a dataset Parameters Permissions Permissions are configured with a so called ``perms spec``, which is a JSON structured where permissions for single users and groups can be specified. Permissions in GeoNode are set per resource and per user or group. The following are general permissions that can be assigned: Remove user as a group manager Resource Delete Resource Download Resource Links Resource Listing and Details Resource Searching and Filtering Resource Upload Skip existing dataset Status Code: ``200`` Status Code: ``204`` The API supports the upload of datasets and documents. The ``status_url`` property returns the URL to track kthe progress of the request. Querying the URL a result similar to the following will be returned: The above requests work for publicly visible resources. If a resource is private either the Basic Auth or the Bearer token must be included inside the headers. The dataset upload form accepts file formats of ESRI Shapefile, GeoTIFF, Comma Separated Value (CSV), Zip Archive, XML Metadata File, and Styled Layer Descriptor (SLD). For a successful upload, the form requires base_file, dbf_file, shx_file, and prj_file. The xml_file, and Sld_file are optional. The download URL for a resource can be obtained from ``resource.download_url``. This URL executes the synchronous download of a resource in its default download format (ESRI Shapefile for vector, Geotiff for rasters and the original format for documents). Additional export formats for datasets are available through the UI. At the moment the API doesn’t expose them. The example below shows a perm specification for following rules: The following example changes the title and the license of a dataset. The operation will be completed once the ``status`` property is updated with the value ``finished``. The perm spec is sent as JSON, with ``application/json Content-Type``, inside a ``PUT`` request. The returned object contains, beyond all the information related to the execution, the inputs that were passed to the execution request, and output params specific to the type of execution. In the case of a dataset upload, the output params contain the URL of the catalog page for the new datast. This is an asynchrnous operation which returns a response similar to the following: This is very similar to `GET /api/v2/resources` but provides additional metadata specifically for datasets like `featureinfo_custom_template` or `attribute_set` To obtain a single resource, a primary key is provided in the url. Eg ``GET /api/v2/resources/{resource.pk}``. Tracking dataset upload progress Transfer resources owned by a user to another URL Upload of a metadata file Uploading a resource will create by default a new dataset. This behaviour can be changed by setting the ``overwrite_existing_layer`` parameter to ``True``. In this case the upload procedure will overwrite a resource whose name matches with the new one. User detail Users Users, Groups and Permissions When an upload request is executed, GeoNode creates an "Execution request" and keeps updating its state and progress (it’s a property attribute, calculated on getting the response) attributes as the resource is being created and configured in Geoserver. An execution can be in one of the following status: When the dataset is successfully uploaded, the final state of the upload is set to ``finished``. With filter APIs of format ``/api/v2/resources?filter{filter_key}=value``, additional methods(in and icontains) can be used on them to provide extensively filtered results. Eg ``/api/v2/resources?filter{regions.name.icontains}=global`` ``/api/v2/resources?filter{regions.name.in}=global``. You can also filter executions by status. Eg ``GET /api/v2/executionrequest?filter{action}=import&filter{source}=upload&filter{status}=finished`` ``failed`` ``finished`` ``ready`` ``running`` `bbox_polygon` and `ll_bbox_polygon` are derived values which cannot be changed. anonymous users (public) can ``view`` api/v2/resources?filter{category.identifier}=example aprroved ``(Boolean True or False)`` category extent ``(Four comer separated coordinates)`` favorite ``(Boolean True)`` featured ``(Boolean True or False)`` group1 can ``edit`` keywords owner published ``(Boolean True or False)`` regions registered members can ``download`` resource_type ``(dataset, map, document, service, geostory, dashboard)`` subtype ``(raster,vector, vector_time, remote)`` title and abstract ``(paginated free text search)`` user1 can ``edit`` user2 can ``manage`` Project-Id-Version: GeoNode master
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2024-08-26 12:03-0300
Last-Translator: Hernán Javier López, 2024
Language-Team: Spanish (https://app.transifex.com/kantit/teams/125753/es/)
Language: es
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=n == 1 ? 0 : n != 0 && n % 1000000 == 0 ? 1 : 2;
Generated-By: Babel 2.13.1
X-Generator: Poedit 3.4.3
 *Descargar:* permite descargar recursos, específicamente conjuntos de datos y documentos. ``[ view_resourcebase, download_resourcebase]`` *Editar:* permite cambiar atributos, propiedades de las características, estilos y metadatos de los conjuntos de datos para el recurso especificado. ``[view_resourcebase, download_resourcebase, change_resourcebase, change_dataset_style, change_dataset_data, change_resourcebase_metadata]`` *Administrar:* permite actualizar, eliminar, cambiar permisos, publicar y anular la publicación del recurso. ``[view_resourcebase, download_resourcebase, change_resourcebase, change_dataset_style, change_dataset_data, publish_resourcebase, delete_resourcebase, change_resourcebase_metadata, change_resourcebase_permissions]`` *Ver:* permite ver el recurso. ``[view_resourcebase]`` /api/v2/resources?extent=-180,-90,180,90 /api/v2/resources?favorite=true /api/v2/resources?filter{featured}=true /api/v2/resources?filter{is_approved}=true /api/v2/resources?filter{is_published}=true /api/v2/resources?filter{keywords.name}=example /api/v2/resources?filter{owner.username}=test_user /api/v2/resources?filter{regions.name}=global /api/v2/resources?filter{resource_type}=map /api/v2/resources?filter{resource_type}=vector /api/v2/resources?page=1&search=text-to-search&search_fields=title&search_fields=abstract Se puede cargar un archivo de metadatos completo que cumpla con la norma ISO-19115 para un conjunto de datos. Un recurso puede incrustarse dentro de un sitio web de terceros. La “vista incrustada” de un recurso es adecuada para colocarse dentro de un iframe. La URL de la vista incrustada se puede obtener de la propiedad ``resource.embed_url``. Se puede usar un token en lugar de la autenticación básica configurando ``'Authorization': 'Bearer <token>'``. Ejemplos de uso de API API: ``DELETE /api/v2/resources/{pk}/delete`` API: ``DELETE /api/v2/users/{pk}`` API: ``GET /api/v2/datasets/{id}`` API: ``GET /api/v2/resources/1791/permissions`` API: ``GET /datasets/{resource.alternate}/dataset_download`` API: ``GET /documents/{resource.pk}/download`` API: ``PATCH /api/v2/datasets/{id}`` API: ``PATCH /api/v2/users/{pk}`` API: ``POST /api/v2/documents`` API: ``POST /api/v2/groups`` API: ``POST /api/v2/uploads/upload`` API: ``POST /api/v2/users/{pk}/groups`` API: ``POST /api/v2/users/{pk}/remove_from_group_manager`` API: ``POST /api/v2/users/{pk}/transfer_resources`` API: ``POST /api/v2/users/{pk}`` API: ``POST /api/v2/users`` API: ``PUT /api/v2/datasets/{dataset_id}/metadata`` Todos los recursos vinculados disponibles se pueden listar con la API mediante GET /api/v2/resources/{pk}/linked_resources. donde pk es el ID base del recurso Como se mencionó en capítulos anteriores, los recursos de GeoNode se clasifican en diferentes tipos, por ejemplo, conjuntos de datos, mapas, documentos, etc. Todos los recursos disponibles se pueden enumerar con la API ``GET /api/v2/resources``. Cambiar los permisos de un recurso Crear un nuevo usuario Actualización de Metadatos del Conjunto de Datos Recursos específicos del conjunto de datos Conjuntos de datos Eliminar un usuario Detalle Documentos También se pueden crear documentos para hacer referencia a recursos remotos. En este caso, se debe utilizar el parámetro ``doc_url`` para establecer la URL del documento remoto. Los documentos se pueden cargar como datos de formulario. Editar un usuario Incrustar Ejemplos de solicitudes: Ejemplo: Ejemplos: Filtrar con un único valor Filtrar con múltiples valores Desde la respuesta del detalle del recurso, las URL y los enlaces a servicios se pueden obtener del valor de la matriz ``resource.links[]``. El propósito de cada enlace está definido por su ``link_type``. El "nombre" también puede especificar información adicional sobre el recurso vinculado. GeoNode también proporciona una API para obtener una descripción general de los permisos establecidos en un recurso. La respuesta contiene usuarios y grupos con permisos establecidos en ellos. Sin embargo, esta API devuelve "200" si un usuario solicitante tiene permisos de "administración" en el recurso; de lo contrario, devolverá "403 (Prohibido)". GeoNode ofrece una opción de descarga para los recursos de tipo de recurso ``dataset`` y ``documento``. Para los conjuntos de datos, la opción de descarga solo está disponible para aquellos que tienen archivos cargados. Los recursos de GeoNode se pueden filtrar con los siguientes parámetros de consulta: Obtenga los metadatos de los conjuntos de datos cargados con: Grupos Si el parámetro ``skip_existing_layers`` se establece en verdadero ``True`` el procedimiento uplad ignorará los archivos cuyo nombre coincida con recursos ya existentes. En GeoNode, al listar grupos, la API devuelve grupos que tienen perfiles de grupo. Por lo tanto, para Django, los grupos que no están relacionados con un perfil de grupo no se incluyen en la respuesta. Sin embargo, se puede acceder a ellos en el panel de administración de Django. Para ver el estado de la ejecución, el método API ``GET /api/v2/executionrequest/{execution_id}`` donde ``{execution_id}`` es el valor devuelto por la llamada inicial a la API de carga. En este caso, se comprueba la lista de reglas de validación configuradas en :ref:`user-deletion-rules` antes de ejecutar la eliminación. En este caso los recursos serán transferidos al usuario con id 1001, en lugar de utilizar el payload={"owner": "DEFAULT"} los recursos serán transferidos al usuario principal En este caso, el usuario será eliminado como administrador de grupo de los siguientes ID de grupo; si la carga útil fuera payload={"groups": "ALL"}, el usuario será eliminado como administrador de grupo de todos los grupos de los que forma parte En esta sección, demostraremos cómo se puede utilizar/integrar la API de GeoNode con otras aplicaciones que utilizan Python. Es importante tener en cuenta que otros métodos distinguen entre mayúsculas y minúsculas, excepto los icontains. Listado y detalles de recursos vinculados Los enlaces a cada formato de metadatos se pueden obtener desde los enlaces con ``link_type = "metadata"`` Listar todos los enlaces de recursos Lista de grupos de usuarios Listado Listado con autorización básica: Metadata NOTA: El id de los grupos “anónimos” y “miembros registrados” se puede obtener de los permisos del recurso. No se listan dentro de la API de grupos, ya que se trata de grupos internos especiales Tenga en cuenta que si la URL no termina con una extensión de documento válida, se debe utilizar el parámetro ``extension`` (por ejemplo, ``extension: 'jpeg'``). Las solicitudes OGC se pueden crear tomando: la URL base de OGC de los enlaces de ``resource.links[]`` con ``"link_type"= ("OGC:WMS | OGC:WFS | OGC:WCS)`` el nombre de la capa de servicio OGC obtenido de la propiedad ``resource.alternate`` Servicios OGC Obtención de permisos sobre un recurso Al enumerar los recursos o en la API de detalles de recursos, GeoNode incluye el atributo perms para cada recurso con una lista de permisos que tiene el usuario que realiza la solicitud sobre el recurso respectivo. Sobrescribir un conjunto de datos Parámetros Permisos Los permisos se configuran con una denominada «especificación de permisos», que es una estructura JSON donde se pueden especificar permisos para usuarios individuales y grupos. Los permisos en GeoNode se configuran por recurso y por usuario o grupo. Los siguientes son permisos generales que se pueden asignar: Eliminar usuario como administrador de grupo Eliminar recurso Descarga de recursos Enlaces de recursos Listado de recursos y detalles Búsqueda y filtrado de recursos Carga de recursos Omitir el conjunto de datos existente Código de estado: ``200`` Código de estado: ``204`` La API admite la carga de conjuntos de datos y documentos. La propiedad ``status_url`` devuelve la URL para realizar un seguimiento del progreso de la solicitud. Al consultar la URL, se obtendrá un resultado similar al siguiente: Las solicitudes anteriores funcionan para recursos visibles públicamente. Si un recurso es privado, se debe incluir el token de autenticación básica o de portador dentro de los encabezados. El formulario de carga de conjuntos de datos acepta formatos de archivo ESRI Shapefile, GeoTIFF, Comma Separated Value (CSV), Zip Archive, XML Metadata File y Styled Layer Descriptor (SLD). Para una carga exitosa, el formulario requiere base_file, dbf_file, shx_file y prj_file. xml_file y Sld_file son opcionales. La URL de descarga de un recurso se puede obtener desde ``resource.download_url``. Esta URL ejecuta la descarga sincrónica de un recurso en su formato de descarga predeterminado (ESRI Shapefile para vectores, Geotiff para rásteres y el formato original para documentos). Hay formatos de exportación adicionales para conjuntos de datos disponibles a través de la interfaz de usuario. Por el momento, la API no los expone. El siguiente ejemplo muestra una especificación de permiso para las siguientes reglas: El siguiente ejemplo cambia el título y la licencia de un conjunto de datos. La operación se completará una vez que la propiedad ``status`` se actualice con el valor ``finished``. La especificación permanente se envía como JSON, con el tipo de contenido ``application/json``, dentro de una solicitud ``PUT``. El objeto devuelto contiene, además de toda la información relacionada con la ejecución, los datos de entrada que se pasaron a la solicitud de ejecución y los parámetros de salida específicos del tipo de ejecución. En el caso de una carga de conjunto de datos, los parámetros de salida contienen la URL de la página del catálogo para el nuevo conjunto de datos. Esta es una operación asincrónica que devuelve una respuesta similar a la siguiente: Esto es muy similar a `GET /api/v2/resources` pero proporciona metadatos adicionales específicamente para conjuntos de datos como `featureinfo_custom_template` o `attribute_set` Para obtener un único recurso, se proporciona una clave principal en la URL. Por ejemplo, ``GET /api/v2/resources/{resource.pk}``. Seguimiento del progreso de carga del conjunto de datos Transferir recursos de propiedad de un usuario a otro URL Carga de un archivo de metadatos Al cargar un recurso se creará de forma predeterminada un nuevo conjunto de datos. Este comportamiento se puede cambiar configurando el parámetro ``overwrite_existing_layer`` en ``True``. En este caso, el procedimiento de carga sobrescribirá un recurso cuyo nombre coincida con el nuevo. Detalle del usuario Usuarios Usuarios, grupos y permisos Cuando se ejecuta una solicitud de carga, GeoNode crea una "Solicitud de ejecución" y continúa actualizando sus atributos de estado y progreso (es un atributo de propiedad, calculado al obtener la respuesta) a medida que el recurso se crea y configura en Geoserver. Una ejecución puede estar en uno de los siguientes estados: Cuando el conjunto de datos se carga correctamente, el estado final de la carga se establece como "finished". Con las API de filtro de formato ``/api/v2/resources?filter{filter_key}=value``, se pueden usar métodos adicionales (in e icontains) para proporcionar resultados filtrados de forma exhaustiva. Por ejemplo, ``/api/v2/resources?filter{regions.name.icontains}=global`` ``/api/v2/resources?filter{regions.name.in}=global``. También puedes filtrar las ejecuciones por estado. Por ejemplo, ``GET /api/v2/executionrequest?filter{action}=import&filter{source}=upload&filter{status}=finished`` ``failed`` ``finished`` ``ready`` ``running`` `bbox_polygon` y `ll_bbox_polygon` son valores derivados que no se pueden cambiar. los usuarios anónimos (públicos) pueden ``ver`` api/v2/resources?filter{category.identifier}=example aprroved ``(Boolean True or False)`` category extent ``(Four comer separated coordinates)`` favorite ``(Boolean True)`` featured ``(Boolean True or False)`` el group1 puede ``editar`` keywords owner published ``(Boolean True or False)`` regions los miembros registrados pueden ``descargar`` resource_type ``(dataset, map, document, service, geostory, dashboard)`` subtype ``(raster,vector, vector_time, remote)`` title and abstract ``(paginated free text search)`` el user1 puede ``editar`` el user2 puede ``administrar`` 