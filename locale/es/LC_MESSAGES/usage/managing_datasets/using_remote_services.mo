��             +         �     �     �     �          /     F     X     h  `   z  `   �     <  �   �  �   C  #  >  3   b  �   �     o	  �   }	  �   �	  D   �
  �  �
  �  �     �  �   �  �   E     �  �   �  '   �     �     �     �  �  �  #   �     �          '     G     e     y     �  d   �  k   
  �   v  �   
    �  �  �  5   7  �   m     a  �   w  �   �  H   �  )  �  )     "   ;"  �   ^"  �   �"     �#  �   �#  /   `$     �$      �$     �$                                
                                                                                              	                  *ArcGIS REST ImageServer* *ArcGIS REST MapServer* *GeoNode Web Map Service* *Remote Service metadata* *Remote Services link* *Remote Services* *Service Types* *Web Map Service* An example of GeoNode WMS is available at ``http://dev.geonode.geo-solutions.it/geoserver/wms``. Click on the :guilabel:`Remote Services` link of the :guilabel:`New` menu in the navigation bar. Each service has its own metadata such as the *Service Type*, the *URL*, an *Abstract*, some *Keywords* and the *Contact* user. From the page where the services are listed, it is possible to click on the *Title* of a service. It opens the *Service Details* page. Generally a WMS is not directly invoked; client applications such as GIS-Desktop or WEB-GIS are used that provide the user with interactive controls. A GeoNode WMS automatically performs some operations and lets you to immediately retrieve resources. Generic Web Map Service (WMS) based on a standard protocol for serving georeferenced map images over the Internet. These images are typically produced by a map server (like `GeoServer <http://geoserver.org/>`_) from data provided by one or more distributed geospatial databases. Common operations performed by a WMS service are: *GetCapabilities* (to retrieves metadata about the service, including supported operations and parameters, and a list of the available datasets) and *GetMap* (to retrieves a map image for a specified area and content). GeoNode supports four **types of remote services**: In GeoNode you can add new datasets not only by loading them from your disk but also using *Remote Services*. In this section you will learn how to add a new service and how to load resources in GeoNode through that. Let's try it! Lots of WMS services are available on the internet, in this example we used the ``https://demo.geo-solutions.it/geoserver/wms``. Once the service has been configured, you can load the resources you are interested in through the *Import Resources* page where you will be automatically redirected to. The page that opens will contain the list of the available services. This Image Server allows you to assemble, process, analyze, and manage large collections of overlapping, multiresolution imagery and raster data from different sensors, sources, and time periods. You can also publish dynamic image services that transform source imagery and other raster data into multiple image products on demand—without needing to preprocess the data or store intermediate results—saving time and computer resources. In addition, ArcGIS Image Server uses parallel processing across multiple machines and instances, and distributed storage to speed up large raster analysis tasks. The URL should follow this pattern: ``https://<servicecatalog-url>/services/<serviceName>/ImageServer``. This map service provides basic information about the map, including the datasets that it contains, whether the map is cached or not, its spatial reference, initial and full extents, whether the service is allowed to export tiles and max tiles export count, etc. A set of operations that manage the state and contents of the service are allowed: Edit Service, Refresh, Update Tiles. The URL should follow this pattern: ``https://<servicecatalog-url>/services/<serviceName>/MapServer``. To configure a new service: Try the following service to better understand how it works: ``https://sampleserver6.arcgisonline.com/arcgis/rest/services/Toronto/ImageServer``. Try the following service to better understand how it works: ``https://sampleserver6.arcgisonline.com/arcgis/rest/services/USA/MapServer``. Using Remote Services You can edit those metadata through the form available from the :guilabel:`Edit Service Metadata` link of the *Service Details* page (see the picture below). click on :guilabel:`Add Remote Service` click on :guilabel:`Create` select the *Service Type* type the *Service URL* Project-Id-Version: GeoNode master
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2024-07-19 20:54+0000
Last-Translator: Hernán Javier López, 2024
Language-Team: Spanish (https://app.transifex.com/kantit/teams/125753/es/)
Language: es
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=n == 1 ? 0 : n != 0 && n % 1000000 == 0 ? 1 : 2;
Generated-By: Babel 2.13.1
X-Generator: Poedit 3.4.3
 *Servidor de imágenes ArcGIS REST* *Servidor de mapas ArcGIS REST* *Servicio de mapas web GeoNode* *Metadatos del servicio remoto* *Enlace de Servicios Remotos* *Servicios Remotos* *Tipos de servicio* *Servicio de mapas web* Un ejemplo de GeoNode WMS está disponible en ``http://dev.geonode.geo-solutions.it/geoserver/wms``. Haz clic en el enlace :guilabel:`Servicios remotos` del menú :guilabel:`Nuevo` en la barra de navegación. Cada servicio tiene sus propios metadatos, como el *Tipo de servicio*, la *URL*, un *Resumen*, algunas *Palabras clave* y el usuario de *Contacto*. Desde la página donde se enumeran los servicios, es posible hacer clic en el *Título* de un servicio. Abre la página *Detalles del servicio*. Generalmente no se invoca directamente un WMS; Se utilizan aplicaciones cliente como GIS-Desktop o WEB-GIS que proporcionan al usuario controles interactivos. Un GeoNode WMS realiza automáticamente algunas operaciones y te permite recuperar recursos de inmediato. Servicio de mapas web genérico (WMS) basado en un protocolo estándar para servir imágenes de mapas georreferenciados a través de Internet. Estas imágenes normalmente son producidas por un servidor de mapas (como `GeoServer <http://geoserver.org/>`_) a partir de datos proporcionados por una o más bases de datos geoespaciales distribuidas. Las operaciones comunes realizadas por un servicio WMS son: *GetCapabilities* (para recuperar metadatos sobre el servicio, incluidas las operaciones y parámetros admitidos, y una lista de los conjuntos de datos disponibles) y *GetMap* (para recuperar una imagen de mapa para un área y contenido específicos ). GeoNode admite cuatro **tipos de servicios remotos**: En GeoNode puedes agregar nuevos conjuntos de datos no solo cargándolos desde tu disco sino también usando *Servicios Remotos*. En esta sección aprenderás cómo agregar un nuevo servicio y cómo cargar recursos en GeoNode a través de él. ¡Vamos a intentarlo! Muchos servicios WMS están disponibles en Internet; en este ejemplo utilizamos ``https://demo.geo-solutions.it/geoserver/wms``. Una vez configurado el servicio, podrás cargar los recursos que te interesen a través de la página *Importar Recursos* a donde serás redirigido automáticamente. La página que se abre contendrá la lista de los servicios disponibles. Este servidor de imágenes le permite ensamblar, procesar, analizar y administrar grandes colecciones de imágenes superpuestas de resolución múltiple y datos ráster de diferentes sensores, fuentes y períodos de tiempo. También puede publicar servicios de imágenes dinámicas que transforman imágenes de origen y otros datos rasterizados en múltiples productos de imágenes bajo demanda, sin necesidad de preprocesar los datos ni almacenar resultados intermedios, ahorrando tiempo y recursos informáticos. Además, ArcGIS Image Server utiliza procesamiento paralelo en múltiples máquinas e instancias, y almacenamiento distribuido para acelerar las tareas de análisis de ráster de gran tamaño. La URL debe seguir este patrón: ``https://<servicecatalog-url>/services/<serviceName>/ImageServer``. Este servicio de mapas proporciona información básica sobre el mapa, incluidos los conjuntos de datos que contiene, si el mapa está almacenado en caché o no, su referencia espacial, extensiones inicial y completa, si el servicio puede exportar mosaicos y el recuento máximo de exportación de mosaicos, etc. Se permite un conjunto de operaciones que gestionan el estado y el contenido del servicio: Editar servicio, Actualizar, Actualizar mosaicos. La URL debe seguir este patrón: ``https://<servicecatalog-url>/services/<serviceName>/MapServer``. Para configurar un nuevo servicio: Prueba el siguiente servicio para comprender mejor cómo funciona: ``https://sampleserver6.arcgisonline.com/arcgis/rest/services/Toronto/ImageServer``. Prueba el siguiente servicio para comprender mejor cómo funciona: ``https://sampleserver6.arcgisonline.com/arcgis/rest/services/USA/MapServer``. Uso de servicios remotos Puedes editar esos metadatos a través del formulario disponible en el enlace :guilabel:`Editar metadatos del servicio` de la página *Detalles del servicio* (ver la imagen a continuación). haz clic en :guilabel:`Agregar servicio remoto` haz clic en :guilabel:`Crear` selecciona el *Tipo de servicio* escribe la *URL del servicio* 