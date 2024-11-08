��          �               L  6   M  �   �  *   '  j   R     �  L   �  �     t   �  0   _     �     �  9   �  c   �     Y  U   j     �     �  !   �  �    B   �  �   1  2   �  b   	     v	  ]   �	  �   �	  �   �
  0   j     �     �  7   �  q        �  c   �          !  *   =   Activate your GeoNode virtualenv and set the env vars: Also, make sure the code is ``Python 3.8`` compatible and that you switched and aligned the **source code** and the **requirements.txt** to the ``master`` branch. Apply migrations and apply basic fixtures: Check the :ref:`install_dep` and :ref:`install_venv` sections in order to upgrade your Python environment. Create superuser Here are the variables to export - update them to your environment settings: Incase of an error of :guilabel:`django.db.utils.ProgrammingError: column "colum-name" of relation "table-name" already exists` on running migrations, you can backup the field data with the following steps. Perform the ``migrations`` management command; in case some attribute is conflicting, remove it manually from the DB Proform the ``collectstatic`` management command Run GeoNode migrations Run migration then: This must be done manually and with particular attention. To create a superuser you should drop the following constraints (they can be re-enabled if needed): Update Templates Update available templates to use {% load static %} instead of {% load staticfiles %} Upgrade from 3.2.x / 3.3.x Upgrade the dependencies Upgrade the instance dependencies Project-Id-Version: GeoNode master
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2024-07-19 16:32-0300
PO-Revision-Date: 2024-07-19 20:53+0000
Last-Translator: Hernán Javier López, 2024
Language: es
Language-Team: Spanish (https://app.transifex.com/kantit/teams/125753/es/)
Plural-Forms: nplurals=3; plural=n == 1 ? 0 : n != 0 && n % 1000000 == 0 ? 1 : 2;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.13.1
 Active su GeoNode virtualenv y configure las variables de entorno: Además, asegúrate de que el código sea compatible con  ``Python 3.8`` y que hayas cambiado y alineado el **código fuente** y el **requirements.txt** a la rama ``master``. Aplica migraciones y aplica las fixtures básicas: Consulte las secciones :ref:`install_dep` y :ref:`install_venv` para actualizar tu entorno Python. Crea un superusuario Aquí están las variables a exportar - actualízalas según la configuración de tu entorno: En caso de un error de :guilabel:`django.db.utils.ProgrammingError: column "colum-name" of relation "table-name" already exists` al ejecutar las migraciones, puedes hacer una copia de seguridad de los datos del campo con los siguientes pasos. Ejecute el comando de gestión ``migraciones``; en caso de que algún atributo esté en conflicto, elimínelo manualmente de la base de datos Realiza el comando de gestión ``collectstatic`` Ejecutar migraciones de GeoNode Ejecute la migración entonces: Esto debe hacerse manualmente y con especial atención. Para crear un superusuario, debes eliminar las siguientes restricciones (pueden ser reactivadas si es necesario): Actualiza las plantillas Actualiza las plantillas disponibles para usar {% load static %} en lugar de {% load staticfiles %} Actualizar desde 3.2.x / 3.3.x Actualizar las dependencias Actualiza las dependencias de la instancia 