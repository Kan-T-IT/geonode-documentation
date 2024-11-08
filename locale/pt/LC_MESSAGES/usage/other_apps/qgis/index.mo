��    /      �                     $   *     O      j  J   �     �     �  y     �   �  l   ]  6   �  .     %   0  i   V  O   �  3     )   D     n  
  �     �  /   �     �      	     &	  �   D	  �   :
     �
     �
  �     I   �     =  .   \     �  �   �  @   �  A   �  6     �   >     �  �   �  �   �  r   e  @   �          /  G   M  \  �  /   �  8   "     [  7   w  G   �  /   �  ,   '     T  �   �     �  9   5  (   o  "   �  �   �  T   ?  :   �  +   �  "   �  $       C  ?   _  3   �  /   �  "       &  �   (  )   �  "       9  S   <      �  @   �     �    �  J     I   \  =   �  �   �     �   �   �     L!  �   b"  O   �"     7#     T#  [   r#   *Data Source Manager Dialog* *Details of Geonode instance Dialog* *Example of Geonode layer* *Geonode instance layers Dialog* *It is* :guilabel:`Important` *that the URL ends with* :guilabel:`/gs/ows` *QGIS Desktop Main Window* *Successful connection Dialog* After select a layer (WMS or WFS) click on the **Add** button and the layer will be displayed in the main window of QGIS. After the successful dialog it's now possible to load all layers of the Geonode instance clicking on **Connect** button. You can see both WMS and WFS connections of the Geonode and you can load to QGIS Desktop. Also you will need the :guilabel:`Client ID` and :guilabel:`Client Secret` keys later when configuring QGis. Browse to :guilabel:`http://<geonode>/o/applications/` Clean up the saved :guilabel:`Tokens` and save Click on the :guilabel:`“pencil”` Click on “Edit” and add the Redirect URI :guilabel:`http://127.0.0.1:7070/qgis-client` as shown below Client ID and Client Secret: *must match with the one defined on GeoNode above* Configure QGis Desktop Client OAuth2 Authentication Connect to Private layers by using OAuth2 Create a new service connection Create a new specific app or, better, edit the existing one (“GeoServer”) based on `OAuth2 Authorization Code Grant Type <https://oauth.net/2/grant-types/authorization-code/#:~:text=The%20Authorization%20Code%20grant%20type,to%20request%20an%20access%20token.>`_ Edit the QGis configuration Enable the persistent Token Session via Headers GeoNode OAuth2 Client App Setup Grant Flow: *Authorization Code* How can I connect to Geonode? In the dialog Fill the name as you like and in the URL put the link of the Geonode instance. It's possible edit some WFS and WMS options to optimize the connection. If everything is ok you will receive the following successful connection dialog: It's possible as well load Geonode instances from an existence file this is useful to share between users or to backup existence connections. Login to GeoNode as a superuser Name: *any descriptive string* Open QGIS Desktop and go to **Layer Menu > Data Source Manager**. At the bottom of Data Source Manager, you can see a tab with the name and an icon related to Geonode. This is because Geonode is recognized as a data source inside QGIS. Open the QGis Desktop Client and add a new OWS remote Layer configuration Provide the connection details Provide the needed information as shown below: QGIS Desktop QGIS is a professional GIS application that is built on top of and proud to be itself Free and Open Source Software (FOSS). QGIS is a volunteer driven project if you are interested you can find more information at https://www.qgis.org. Redirect URL: *must match with the one defined on GeoNode above* Remove Saved Token Sessions From QGis and Login with another User Request URL: *must end with* :guilabel:`/o/authorize/` Save and click on :guilabel:`“Connect”`. QGis will redirect you on a browser page asking to GeoNode to authenticate. Approve the Claims and go back to QGis. Scopes: *openid write* This is an example. The port and path of the URI can be customized. They must be the same on both GeoNode and QGis Client as shown later. This procedure only work with public layers. If the layers are for private use is necessary to do the standard qgis add remote WMS/WFS layers (through **Data Source Manager**) along with basic auth method and specific endpoints. To add a new Geonode instance, in the Geonode tab selected click on **New** and you will see the following dialog: Token URL and Refresh URL: *must end with* :guilabel:`/o/token/` Try to connect again. Type: *OAuth2 authentication* When finished click on “+” in order to add a new auth configuration Project-Id-Version: GeoNode 3.2.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-06-03 17:10+0200
PO-Revision-Date: 2021-07-02 00:57+0200
Last-Translator: 
Language: pt_PT
Language-Team: 
Plural-Forms: nplurals=2; plural=(n != 1);
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.13.1
 *Caixa de Diálogo do Gestor da Fonte de Dados* *Detalhes da Caixa de Diálogo da instância do Geonode* *Exemplo de camada Geonode* *Caixa de Diálogo de camadas de instância do Geonode* *É* :guilabel:`Importante` *que o URL termine com* :guilabel:`/gs/ows` *Janela Principal do Ambiente de trabalho QGIS* *Caixa de Diálogo de Conexão bem-sucedida* Após seleccionar uma camada (WMS ou WFS), clique no botão **Adicionar** e a camada será exibida na janela principal do QGIS. Após a caixa de diálogo de bem-sucedido, agora é possível carregar todas as camadas da instância Geonode clicando no botão **Conectar**. Você pode ver as conexões WMS e WFS do Geonode e pode carregar no QGIS Desktop. Além disso, você precisará das chaves :guilabel:`Client ID` e :guilabel:`Client Secret` posteriormente ao configurar o QGis. Navegue até :guilabel:`http://<geonode>/o/applications/` Limpe o :guilabel:`Tokens` salvo e salve Clique em :guilabel:`“lápis”` Clique em “Editar” e adicione o URI de redireccionamento :guilabel:`http://127.0.0.1:7070/qgis-client` conforme mostrado abaixo ID do cliente e Segredo do Cliente: *deve corresponder ao definido acima no GeoNode* Configurar a Autenticação OAuth2 do Cliente Desktop QGis Conecte-se a camadas privadas usando OAuth2 Crie uma nova conexão de serviço Crie um novo aplicativo específico ou, melhor, edite o existente (“GeoServer”) com base no `Tipo de Concessão de Código de Autorização OAuth2 <https://oauth.net/2/grant-types/authorization-code/#:~:text=The%20Authorization%20Code%20grant%20type,to%20request%20an%20access%20token.>`_ Edite a configuração QGis Habilite a sessão de Token persistente por meio de Cabeçalhos Configuração do Aplicativo Cliente GeoNode OAuth2 Fluxo de Concessão: *Código de Autorização* Como posso conectar-me ao Geonode? Na caixa de diálogo Preencha o nome como quiser e na URL coloque o link da instância do Geonode. É possível editar algumas opções WFS e WMS para otimizar a conexão. Se estiver tudo bem, receberá a seguinte caixa de diálogo de conexão bem sucedida: É possível que também carregue as instâncias Geonode de um ficheiro existente, isto que é útil para partilhar entre utilizadores ou para criar cópias de segurança de conexões existentes. Faça login no GeoNode como superusuário Nome: *qualquer string descritiva* Abra o QGIS Desktop e vá ao **Layer Menu > Data Source Manager**. Na parte inferior do Data Source Manager, poderá ver um separador com o nome e um ícone relacionado com Geonode. Isto porque o Geonode é reconhecido como uma fonte de dados dentro do QGIS. Abra o Cliente Desktop QGis e adicione uma nova configuração de camada remota OWS Forneça os detalhes da conexão Forneça as informações necessárias conforme mostrado abaixo: QGIS Desktop QGIS é uma aplicação profissional de SIG que é construída sob e orgulhosa de ser ela mesma um Software Livre e de Código Aberto (FOSS). O QGIS é um projecto orientado por voluntários se estiver interessado, pode encontrar mais informações em https://www.qgis.org. URL de redireccionamento: *deve corresponder ao definido acima no GeoNode* Remover sessões de Token salvas do QGis e fazer login com outro Usuário Requisitar URL: *deve terminar com* :guilabel:`/o/authorize/` Salve e clique em :guilabel:`“Connect”`. O QGis irá redirecioná-lo em uma página do navegador pedindo ao GeoNode para autenticar. Aprove as Reivindicações e volte ao QGis. Escopos: *escrita openid* Isto é um exemplo. A porta e o caminho do URI podem ser personalizados. Eles devem ser iguais no GeoNode e no Cliente QGis, conforme mostrado a seguir. Este procedimento só funciona com camadas públicas. Se as camadas forem para uso privado, é necessário fazer o qgis padrão, adicionar camadas WMS/WFS remotas (por meio do **Gestor da Fonte de Dados**) junto com o método de autenticação básico e terminais específicos. Para adicionar uma nova instância Geonode, no separador Geonode selecionado clique em **New** e verá a seguinte caixa de diálogo: URL de Token e URL de Actualização: *deve terminar com* :guilabel:`/o/token/` Tente se conectar novamente. Tipo: *Autenticação OAuth2* Quando terminar, clique em “+” para adicionar uma nova configuração de autenticação 