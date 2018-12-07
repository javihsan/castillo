<%@ page import="java.util.*"%>
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

function abrirVentana(ruta){
	openWindow(ruta,'','scrollbars=yes,width=550,height=450')
}

//-->
</script>                                                             
 
<!-- Abro tabla principal y resto de marcos -->
<%@include file="Marco.jsp"%>       
<!--  **  -->

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
    	<td width="20%"><SPACER type="block"></td>
    	<td width="50%" CLASS="CABECERA" align="center"> 
      		Motivo 
    	</td>
    	<td width="25%" CLASS="CABECERA" align="center">  
      		Fecha
    	</td>
    	<td  width="5%" CLASS="CABECERA" align="center"> 
	      	Descargar Fotos
    	</td>
</tr>
<tr><td height="10px"><SPACER type="block"></td></tr>
<%  
	for (int i=0;i<vAlbum.size();i++){
		albumBean = (DTOAlbum)vAlbum.get(i);
%>
<tr valign="top"> 
    <td class="CELDA" valign="middle">
    	<a href="javascript:abrirVentana('../../imageServe?blob-key=<%=albumBean.getAlbImagen()%>')"><img src="../../imageServe?blob-key=<%=albumBean.getAlbImagen()%>&x=50&y=70" alt="Ampliar" title="Ampliar" border="0" width="70px" height="50px"></a>
    </td>	
    <td class="CELDA" valign="middle" align="center">
      <%=albumBean.getAlbNombre()%>
    </td>  
    <td class="CELDA" valign="middle" align="center">
      <%=Utils.getFormat(albumBean.getAlbFecha())%>
    </td>
    <td class="CELDA" valign="middle" align="center">  
      <a href="../../fileServe?blob-key=<%=albumBean.getAlbFichero()%>"><img src="../../imagenes/descargar.gif" alt="Descargar" title="Descargar" border="0"></a>
    </td>
</tr>
<% } %>
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


<!-- Abro tabla principal y resto de marcos -->
<%@include file="MarcoCerrar.jsp"%>                                        
<!--  **  -->