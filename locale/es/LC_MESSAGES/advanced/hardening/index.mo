��          D               l   I   m   M  �        /     �  O  U   &  i  |     �  :      After that we need to update the `/etc/nginx/sites-enabled/geonode` file, By default geonode will be installed in the port 80 (i.e. HTTP) port. But what if you want to change the port of the geonode to other than HTTP port (For this example, I am taking 8082 port)? We need to edit couple of things in the web configuration. First things is, we need to update the `/etc/uwsgi/apps-enabled/geonode.ini` file, Edit the following lines, Publish on other than HTTP port (for e.g. 8082) Project-Id-Version: GeoNode 3.2.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-07-10 11:11+0200
PO-Revision-Date: 2024-07-19 20:54+0000
Last-Translator: Hernán Javier López, 2024
Language: es
Language-Team: Spanish (https://app.transifex.com/kantit/teams/125753/es/)
Plural-Forms: nplurals=3; plural=n == 1 ? 0 : n != 0 && n % 1000000 == 0 ? 1 : 2;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.13.1
 Después de eso necesitamos actualizar el archivo `/etc/nginx/sites-enabled/geonode`, De forma predeterminada, GeoNode se instalará en el puerto 80 (es decir, HTTP). Pero, ¿qué sucede si desea cambiar el puerto de GeoNode a otro que no sea el puerto HTTP? (para este ejemplo, estoy utilizando el puerto 8082) Necesitamos editar un par de cosas en la configuración web. Lo primero es actualizar el archivo `/etc/uwsgi/apps-enabled/geonode.ini`, Edita las siguientes líneas, Publicar en un puerto distinto al HTTP (por ejemplo, 8082) 