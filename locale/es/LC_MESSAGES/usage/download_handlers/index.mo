��          �            h     i     n      �     �  C   �     �  D     u   T  q   �  1   <     n  �   w  �     %   �  �  �     �     �      �     �  J   �     I  X   b  �   �  ]   <  ;   �     �  �   �  �   �	  0   A
              
                                 	                                 CODE DATASET_DOWNLOAD_HANDLERS DEFAULT_DATASET_DOWNLOAD_HANDLER Default: ``[]`` Default: ``geonode.layers.download_handler.DatasetDownloadHandler`` Download Handlers Follow an example of an basic class for define the download handler: Follow an example of how to create a custom download handler and to replace the default one or add an additional one. If you prefer to inherit from the already existing one, the response is generated in the `process_dowload` method List of paths of the additional download handlers Settings The default download handler is placed under the `geonode.layers` [package](https://github.com/GeoNode/geonode/blob/master/geonode/layers/download_handler.py) With GeoNode 4.2.x has been introduced the concept of Download Handler and ofc GeoNode provides a default implementation of it which process the download via WPS path to the download handler location Project-Id-Version: GeoNode master
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2024-08-21 14:20-0300
Last-Translator: Hernán Javier López, 2024
Language-Team: Spanish (https://app.transifex.com/kantit/teams/125753/es/)
Language: es
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=n == 1 ? 0 : n != 0 && n % 1000000 == 0 ? 1 : 2;
Generated-By: Babel 2.13.1
X-Generator: Poedit 3.4.3
 CODE DATASET_DOWNLOAD_HANDLERS DEFAULT_DATASET_DOWNLOAD_HANDLER Predeterminado: ``[]`` Predeterminado: ``geonode.layers.download_handler.DatasetDownloadHandler`` Manejadores de Descargas A continuación un ejemplo de una clase básica para definir el controlador de descarga: Sigue un ejemplo de cómo crear un controlador de descarga personalizado y reemplazar el predeterminado o agregar uno adicional. Si prefieres heredar del ya existente, la respuesta se genera en el método `process_dowload` Lista de rutas de los controladores de descarga adicionales Ajustes El controlador de descarga predeterminado se coloca en el `geonode.layers` [package](https://github.com/GeoNode/geonode/blob/master/geonode/layers/download_handler.py) Con GeoNode 4.2.x se ha introducido el concepto de Manejador de Descargas y, por supuesto, GeoNode proporciona una implementación predeterminada que procesa la descarga a través de WPS ruta a la ubicación del controlador de descarga 