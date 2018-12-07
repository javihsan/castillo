<%@ page import="java.util.*"%>
<%@ page import="com.castillo.controllers.ControllerConstants" %>
<%@ page import="com.castillo.negocio.dto.DTOAlbum" %>
<%@ page import="com.castillo.negocio.utils.Utils" %>
<% 
List<DTOAlbum> vAlbum = (List<DTOAlbum>)request.getAttribute("vAlbum");
DTOAlbum albumBean = null;
%>
<HTML>     
<HEAD>    
<TITLE>Mesón Castillo</TITLE>
<script language="JavaScript">
<!--

function albumNew() {
	document.albumAdmin.action='albumNew'
	document.albumAdmin.submit();
}

function albumRemove() {
	if (confirm('¿Está seguro de querer eliminar este album?')){
		document.albumAdmin.action='albumRemove'
		document.albumAdmin.submit();
	}
}

//-->
</script>                                                             
 
<!-- Abro tabla principal y resto de marcos -->
<%@include file="MarcoAdmin.jsp"%>       
<!--  **  -->

<form action="albumAdmin" method="post" name="albumAdmin" id="albumAdmin">

<table align="center" width="95%" cellspacing="0" cellpadding="0" border="0">    
<tr><td height="20px"><SPACER type="block"></td></tr>
<tr>
	<td align="center" class="TITULO" background="../../imagenes/borde_hor.gif" width="182px" height="18px" >
		Listado de álbumes:        
  	</td> 
  	<td align="right" class="INFORMACION">
		&nbsp;<!--<%= vAlbum.size()%> encontrados-->
  	</td>
</tr> 
</table>

<table align="center" width="90%" cellspacing="2" cellpadding="0" border="0">
<tr><td height="20px"><SPACER type="block"></td></tr>
<tr> 
    	<td width="10%" CLASS="CABECERA" align="center">
    		Seleccionar
    	</td>
    	<td width="10%" CLASS="CABECERA" align="center">
    		Foto
    	</td>
    	<td width="50%" CLASS="CABECERA" align="center"> 
      		Motivo 
    	</td>
    	<td width="25%" CLASS="CABECERA" align="center">  
      		Fecha
    	</td>
</tr>
<tr><td height="10px"><SPACER type="block"></td></tr>
<%  
	for (int i=0;i<vAlbum.size();i++){
		albumBean = (DTOAlbum)vAlbum.get(i);
%>
<tr valign="top"> 
    <td class="EN" align="center"> 
	    <input type="checkbox" name="<%=ControllerConstants.SELECTOR+albumBean.getAlbId()%>" value="0">
    </td>
    <td class="EN" valign="middle">
    	<a href="albumEdit?id=<%=albumBean.getAlbId()%>"><img src="../../imageServe?blob-key=<%=albumBean.getAlbImagen()%>&x=50&y=70" alt="Editar" title="Editar" border="0" width="70px" height="50px"></a>
    </td>	
    <td class="EN" valign="middle" align="center">
      <a href="albumEdit?id=<%=albumBean.getAlbId()%>"><%=albumBean.getAlbNombre()%></a>
    </td>  
    <td class="EN" valign="middle" align="center">
      <a href="albumEdit?id=<%=albumBean.getAlbId()%>"><%=Utils.getFormat(albumBean.getAlbFecha())%></a>
    </td>
</tr>
<% } %>
<tr><td height="10px"><SPACER type="block"></td></tr>
<tr valign="top"> 
    <td colspan="3" class="CELDA" align="center"> 
       	<input type="button" value="Cancelar" onClick="history.go(-1)">
      	<input type="button" value="Nuevo" onClick="albumNew()">
      	<input type="button" value="Eliminar" onClick="albumRemove()">
    </td>
</tr>
</table>

<table align="center" width="95%" cellspacing="0" cellpadding="0" border="0">    
<tr><td height="20px"><SPACER type="block"></td></tr>
<tr>
  	<td class="EN">
  		<font class="CURSIVA">Las fotos están comprimidas con WinZip. Si no lo tienes bájate WinZip <a target="_blank" href="http://winzip.com">Aqu&iacute;</a></font>
	</td>
</tr> 
<tr><td height="10px"><SPACER type="block"></td></tr>
<tr>
  	<td class="EN">
		<font class="CURSIVA">Si deseas colgar tus fotos en la nuestra Web llévalas al mesón en un CD ó<br> envialas por email a <a href='javascript:contactarPar("webmaster","Álbum de fotos")'>webmaster@mesoncastillo.com</a></font>
  	</td>
</tr> 
</table>


</form>


<!-- Abro tabla principal y resto de marcos -->
<%@include file="MarcoCerrar.jsp"%>                                        
<!--  **  -->