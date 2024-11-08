��    %      D              l      m     �  N   �  �  �  �   o  ?        H     h     v     �     �  3  �  v   �  Y   m  �   �     h     u  >   �  /   �  "   �  �   	  ?  �	      r   &  �   �  j   Z  �   �  c   �  F     �   b  �  .  e   �    "  �   =  �   �  S   �  �  �      �     �  _   �  �  H  �   �  E   �  "   �                9  +   Z  [  �  y   �  g   \  �   �     v     �  O   �  2   �  .     �   F  h  *  &  �   �   �!  �   B"  t   0#    �#  z   �$  ;   ;%  �   w%  �  t&  s   e(  4  �(  �   *  �   �*  E   {+   **/opt/geonode/my-geonode/.env** **manage.sh** Add ``geonode_ldap.backend.GeonodeLdapBackend`` as an additional auth backend. Any groups that the user is a member of in LDAP (under the ``cn=groups,dc=ad,dc=example,dc=org`` search base and belonging to one of ``(|(cn=abt1)(cn=abt2)(cn=abt3)(cn=abt4)(cn=abt5)(cn=abt6))`` groups) will be mapped to the corresponding geonode groups, even creating these groups in geonode in case they do not exist yet. The geonode user is also made a member of these geonode groups. Be sure to check out `django_auth_ldap <https://django-auth-ldap.readthedocs.io/en/latest/>`_ for more information on the various configuration options. Change to the `ldap` directory and install this contrib package Cloning this repository locally Configuration Example configuration: Example environment variables: Geonode auth via LDAP However, in order to provide full support for mapping LDAP groups with geonode's and enforce group permissions on resources, a custom geonode authentication backend  is required. This contrib package provides such a backend, based on `django_auth_ldap <https://django-auth-ldap.readthedocs.io/en/latest/>`_. If no LDAP groups shall be mirrored ``LDAP_MIRROR_GROUPS`` and ``LDAP_MIRROR_GROUPS_EXCEPT`` must be set to ``False``. If you remove the ``ldap`` tag, the users will be threaten as pure internal GeoNode ones. In order to constantly keep the remote LDAP Users and Groups **synchronized** with GeoNode, you will need to run periodically some specific management commands. Installation Installing geonode Installing system LDAP libraries (development packages needed) Installing this contrib package is a matter of: Keep Users and Groups Synchronized On first login, a geonode user is created from the LDAP user and its LDAP attributes ``cn`` and ``sn`` are used to populate the geonode user's ``first_name`` and ``last_name`` profile fields. Set some additional configuration values. Some of these variables are prefixed with ``AUTH_LDAP`` (these are used directly by `django_auth_ldap <https://django-auth-ldap.readthedocs.io/en/latest/>`_) while others are prefixed with ``GEONODE_LDAP`` (these are used by ``geonode_ldap``). The geonode custom variables are: The `django_auth_ldap <https://django-auth-ldap.readthedocs.io/en/latest/>`_ package is a very capable way to add LDAP integration with django projects. It provides a lot of flexibility in mapping LDAP users to geonode users and is able to manage user authentication. The configuration seen in the example above will allow LDAP users to login to geonode with their LDAP credentials. The django's ``django.contrib.auth.backends.ModelBackend`` must also be used in order to provide full geonode integration with LDAP. However this is included by default on GeoNode ``settings`` This package provides utilities for using LDAP as an authentication and authorization backend for geonode. Upon each login, the user's geonode group memberships are re-evaluated according to the information extracted from LDAP. The ``AUTH_LDAP_MIRROR_GROUPS_EXCEPT`` setting can be used to specify groups whose memberships will not be re-evaluated. Users mapped from LDAP will be marked with an ``ldap`` tag. This will be used to keep them in sync. Where the ``manage.sh`` is a bash script similar to the following one: You may also manually generate the geonode groups in advance, before users login. In this case, when a user logs in and the mapped LDAP group already exists, the user is merely added to the geonode group You may use additional auth backends, the django authentication framework tries them all according to the order listed in the settings. This means that geonode can be setup in such a way as to permit internal organization users to login with their LDAP credentials, while at the same time allowing for casual users to use their facebook login (as long as you enable facebook social auth provider). You might want to use the same ``/opt/geonode/my-geonode/.env`` for your ``UWSGI`` configuration too: ``GEONODE_LDAP_GROUP_NAME_ATTRIBUTE`` - This is the name of the LDAP attribute that will be used for deriving the geonode group name. If not specified it will default to `cn`, which means that the LDAP object's `common name` will be used for generating the name of the geonode group ``GEONODE_LDAP_GROUP_PROFILE_FILTERSTR`` - This is an LDAP search fragment with the filter that allows querying for existing groups. See example below ``GEONODE_LDAP_GROUP_PROFILE_MEMBER_ATTR`` - This is the name of the LDAP attribute that will be used for deriving the geonode membership. If not specified it will default to ``member`` and the ``/opt/geonode/my-geonode/.env`` is something similar to the following one: Project-Id-Version: GeoNode 3.2.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2024-07-19 16:32-0300
PO-Revision-Date: 2024-07-19 20:54+0000
Last-Translator: Hernán Javier López, 2024
Language: es
Language-Team: Spanish (https://app.transifex.com/kantit/teams/125753/es/)
Plural-Forms: nplurals=3; plural=n == 1 ? 0 : n != 0 && n % 1000000 == 0 ? 1 : 2;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.13.1
 **/opt/geonode/my-geonode/.env** **manage.sh** Agrega ``geonode_ldap.backend.GeonodeLdapBackend`` como un backend de autenticación adicional. Cualquier grupo del que el usuario sea miembro en LDAP (bajo la base de búsqueda ``cn=groups,dc=ad,dc=example,dc=org`` y perteneciente a uno de los grupos ``(|(cn=abt1)(cn=abt2)(cn=abt3)(cn=abt4)(cn=abt5)(cn=abt6))``) se mapeará a los correspondientes grupos en GeoNode, incluso creando estos grupos en GeoNode en caso de que aún no existan. El usuario de GeoNode también se convertirá en miembro de estos grupos en GeoNode. Asegúrate de consultar `django_auth_ldap <https://django-auth-ldap.readthedocs.io/en/latest/>`_ para obtener más información sobre las distintas opciones de configuración. Cambar al directorio `ldap` e instalar este paquete de contribuciones Clonar este repositorio localmente Configuración Configuración de ejemplo: Ejemplo de variables de entorno: Autenticación de Geonode a través de LDAP Sin embargo, para proporcionar soporte completo para mapear grupos LDAP con GeoNode y hacer cumplir los permisos de grupo en los recursos, se requiere un backend de autenticación de GeoNode personalizado. Este paquete de contribuciones proporciona dicho backend, basado en `django_auth_ldap <https://django-auth-ldap.readthedocs.io/en/latest/>`_. Si no se reflejarán grupos LDAP, ``LDAP_MIRROR_GROUPS`` y ``LDAP_MIRROR_GROUPS_EXCEPT`` deben establecerse en ``Falso``. Si eliminas la etiqueta ldap, los usuarios serán tratados como usuarios puramente internos de GeoNode. Para mantener constantemente sincronizados los usuarios y grupos LDAP remotos con GeoNode, necesitará ejecutar periódicamente algunos comandos de administración específicos. Instalación Instalar GeoNode Instalar las bibliotecas LDAP del sistema (se necesitan paquetes de desarrollo) Instalar este paquete contrib es una cuestión de: Mantenga sincronizados a los usuarios y grupos En el primer inicio de sesión, se crea un usuario de GeoNode a partir del usuario LDAP y sus atributos LDAP ``cn`` y ``sn`` se utilizan para completar los campos de perfil ``first_name`` y ``last_name`` del usuario de GeoNode. Establece algunos valores de configuración adicionales. Algunas de estas variables tienen el prefijo ``AUTH_LDAP`` (son utilizadas directamente por `django_auth_ldap <https://django-auth-ldap.readthedocs.io/en/latest/>`_) mientras que otras tienen el prefijo ``GEONODE_LDAP`` (son utilizadas por ``geonode_ldap``). Las variables personalizadas de GeoNode son: El paquete `django_auth_ldap <https://django-auth-ldap.readthedocs.io/en/latest/>`_ es una forma muy eficaz de agregar integración LDAP a los proyectos de Django. Proporciona mucha flexibilidad para asignar usuarios LDAP a usuarios de GeoNode y puede administrar la autenticación de usuarios. La configuración que se ve en el ejemplo anterior permitirá a los usuarios LDAP iniciar sesión en GeoNode con sus credenciales LDAP. También se debe utilizar ``django.contrib.auth.backends.ModelBackend`` de Django para proporcionar una integración completa de GeoNode con LDAP. Sin embargo, esto está incluido de manera predeterminada en la configuración de GeoNode. Este paquete proporciona utilidades para utilizar LDAP como back-end de autenticación y autorización para geonode. En cada inicio de sesión, las membresías del grupo de GeoNode del usuario se vuelven a evaluar según la información extraída de LDAP. La configuración ``AUTH_LDAP_MIRROR_GROUPS_EXCEPT`` se puede utilizar para especificar los grupos cuyas membresías no se volverán a evaluar. Los usuarios asignados desde LDAP se marcarán con una etiqueta "ldap". Esto se utilizará para mantenerlos sincronizados. Donde ``manage.sh`` es un script bash similar al siguiente: También puedes generar manualmente los grupos de GeoNode de antemano, antes de que los usuarios inicien sesión. En este caso, cuando un usuario inicie sesión y el grupo LDAP mapeado ya exista, el usuario simplemente se añadirá al grupo de GeoNode. Puedes utilizar backends de autenticación adicionales. El marco de autenticación de Django los prueba todos según el orden indicado en la configuración. Esto significa que Geonode se puede configurar de manera que permita que los usuarios internos de la organización inicien sesión con sus credenciales LDAP, mientras que al mismo tiempo permite que los usuarios ocasionales utilicen su inicio de sesión de Facebook (siempre que habilite el proveedor de autenticación social de Facebook). Es posible que también desees utilizar el mismo ``/opt/geonode/my-geonode/.env`` para tu configuración ``UWSGI``: ``GEONODE_LDAP_GROUP_NAME_ATTRIBUTE``: este es el nombre del atributo LDAP que se utilizará para derivar el nombre del grupo de GeoNode. Si no se especifica, el valor predeterminado será `cn`, lo que significa que el `nombre común` del objeto LDAP se utilizará para generar el nombre del grupo de GeoNode ``GEONODE_LDAP_GROUP_PROFILE_FILTERSTR``: este es un fragmento de búsqueda LDAP con el filtro que permite consultar grupos existentes. Ve el ejemplo a continuación ``GEONODE_LDAP_GROUP_PROFILE_MEMBER_ATTR``: este es el nombre del atributo LDAP que se utilizará para derivar la membresía de GeoNode. Si no se especifica, el valor predeterminado será ``member`` y el ``/opt/geonode/my-geonode/.env`` es algo similar a lo siguiente: 