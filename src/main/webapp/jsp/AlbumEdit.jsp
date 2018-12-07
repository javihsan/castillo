<%@ page import="java.util.*"%>
<%@ page import="com.google.appengine.api.blobstore.*" %>
<%@ page import="com.google.appengine.api.datastore.DatastoreServiceFactory" %>
<%@ page import="com.castillo.negocio.dto.DTOAlbum" %>
<%@ page import="com.castillo.negocio.utils.Utils" %>
<%
String urlRedirect = (String)request.getAttribute("urlRedirect");
final BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
final BlobInfoFactory blobInfoFactory = new BlobInfoFactory(DatastoreServiceFactory.getDatastoreService());
DTOAlbum album = (DTOAlbum)request.getAttribute("album");
%>
<HTML>     
<HEAD>    
<TITLE>Mesón Castillo</TITLE>
<script type="text/javascript" language="javascript" src="./../castilloapp/castilloapp.nocache.js"></script>
<script language="JavaScript" SRC="../util/calendarDateInput.js"></script>

<script language="JavaScript">
<!--
function verifierForm() {
	
	if (document.albumEdit.albNombre.value==""){
		alert ('El motivo es un campo obligatorio')
		document.albumEdit.albNombre.focus()
	} else if (document.albumEdit.albFicheroHidden.value==""){
		alert ('El archivo zip es un campo obligatorio')
		document.albumEdit.albFichero.focus()
	} else if (document.albumEdit.albFicheroHidden.value.indexOf(".zip")==-1){
		alert ('El archivo deber ser un zip')
		document.albumEdit.albFichero.focus()
	} else if (document.albumEdit.albImagenHidden.value==""){
		alert ('La imagen es un campo obligatorio')
		document.albumEdit.albImagen.focus()
	}  else {
		document.albumEdit.submit();
	}
}

function putFicheroHidden(){
	document.albumEdit.albFicheroHidden.value = document.albumEdit.albFichero.value
}

function putImagenHidden(){
	document.albumEdit.albImagenHidden.value = document.albumEdit.albImagen.value
}

//-->
</script>                                                          
 
<!-- Abro tabla principal y resto de marcos -->
<%@include file="MarcoAdmin.jsp"%>       
<!--  **  -->

<form action="<%= blobstoreService.createUploadUrl("/fileUpload") %>" method="post" name="albumEdit" id="albumEdit" enctype="multipart/form-data">

<table align="center" width="95%" cellspacing="0" cellpadding="0" border="0">    
<tr><td height="20px"><SPACER type="block"></td></tr>
<tr>
	<td align="center" class="TITULO" background="../../imagenes/borde_hor.gif" width="182px" height="18px" >
<% if (album==null){ %>
		Nuevo Álbum:   
<% } else { %>		     
		Editar Álbum:
<% }%>
  	</td> 
</tr> 
</table>

<table align="center" width="90%" cellspacing="2" cellpadding="0" border="0">
<tr><td height="10px"><SPACER type="block"></td></tr>
<tr valign="top"> 
	<td width="20%" CLASS="CABECERA" align="center"> 
      		Motivo 
    	</td>
    <td class="CELDA" valign="middle">
    	<input type="text" size="50" maxlength="255" name="albNombre" value="<% if (album!=null && album.getAlbNombre()!=null){ %><%= album.getAlbNombre() %><% } %>"/>
    </td>	
</tr>
<tr><td height="10px"><SPACER type="block"></td></tr>    
<tr>
   	<td CLASS="CABECERA" align="center">  
     		Fecha
   	</td>
    <td class="CELDA" valign="middle" id="albFechaa">
    	<script>DateInput('albFecha', true, 'DD/MM/YYYY'<% if (album!=null && album.getAlbFecha()!=null){ %>,'<%=Utils.getFormat(album.getAlbFecha()) %>'<% } %>)</script>
    </td>  
</tr>
<tr><td height="10px"><SPACER type="block"></td></tr>
<tr valign="top"> 
	<td width="20%" CLASS="CABECERA" align="center"> 
      		Archivo zip 
    	</td>
    <td class="CELDA" valign="middle">
    	<input type="file" name="albFichero" size="35" onChange="putFicheroHidden()">
    	<%  String albFicheroName = "";
    		if (album!=null && album.getAlbFichero()!=null){ 
    		BlobKey blobKey = new BlobKey(album.getAlbFichero());
			BlobInfo blobInfo = blobInfoFactory.loadBlobInfo(blobKey);
			albFicheroName = blobInfo.getFilename();%>
    		<%= albFicheroName %>
    	<% } %>
    	<input type="hidden" name="albFicheroHidden" value="<%= albFicheroName %>"/>
    </td>	
</tr>
<tr><td height="10px"><SPACER type="block"></td></tr>
<tr valign="top"> 
	<td width="20%" CLASS="CABECERA" align="center"> 
      		Imagen representativa
    	</td>
    <td class="CELDA" valign="middle">
    	<input type="file" name="albImagen" size="35" onChange="putImagenHidden()">
    	<%  String albImagenName = "";
    		if (album!=null && album.getAlbImagen()!=null){ 
    		BlobKey blobKey = new BlobKey(album.getAlbImagen());
			BlobInfo blobInfo = blobInfoFactory.loadBlobInfo(blobKey);
			albImagenName = blobInfo.getFilename();%>
    		<%= albImagenName %>
    	<% } %>
    	<input type="hidden" name="albImagenHidden" value="<%= albImagenName %>"/>
    </td>	
</tr>
<tr><td height="10px"><SPACER type="block"></td></tr>
<tr valign="top"> 
    <td colspan="2" class="CELDA" align="center"> 
    	Activado
	    <input type="checkbox" name="albActivado" value="<% if (album!=null && album.getAlbActivado()==1){ %>1" checked<% } else { %>" <% } %>>
	    <input type="hidden" name="albId" value="<% if (album!=null && album.getAlbId()!=null){ %><%= album.getAlbId() %><% } %>"/>
    </td>
</tr>
<tr><td height="10px"><SPACER type="block"></td></tr>
<tr valign="top"> 
    <td colspan="2" class="CELDA" align="center"> 
       	<input type="button" value="Cancelar" onClick="history.go(-1)">
      	<input type="button" value="Aceptar" onClick="verifierForm()">
      	<input type="hidden" name="urlRedirect" value="<%=urlRedirect%>">
    </td>
</tr>
</table>



</form>


<!-- Abro tabla principal y resto de marcos -->
<%@include file="MarcoCerrar.jsp"%>                                        
<!--  **  -->