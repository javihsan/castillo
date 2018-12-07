<%@ page import="java.util.*" %>                                                            
<HTML>     
<HEAD>    
<TITLE>Mesón Castillo</TITLE>

<script language="JavaScript">
<!--

function abrirVentana(ruta){
	openWindow(ruta,'','scrollbars=yes,width=500,height=600')
}

function abrirVentanaFlash(ruta){
	openWindow(ruta,'','scrollbars=yes,width=595,height=450')
}

//-->
</script>

<!-- Abro tabla principal y resto de marcos -->
<%@include file="Marco.jsp"%>       
<!--  **  -->

<table align="center" width="95%" cellspacing="0" cellpadding="0" border="0">
<tr><td height="10px"><SPACER type="block"></td></tr>
<tr>
	<td CLASS="CABECERA"> 
		Añade los datos de contacto a tu teléfono 
	</td>
	<td CLASS="EN"> 
		<a href="download-vcard">Descargar VCard o<br>Añadir contacto mediante Google Map (iPhone)</a><br />	
	</td>
</tr>
<tr><td height="20px"><SPACER type="block"></td></tr>
<tr> 
	<td CLASS="CABECERA" width="40%"> 
      		Estamos en  
    	</td>
    	<td CLASS="CELDA" width="60%"> 
      		Pintor Murillo, 20 - Collado Villalba (Madrid)
    	</td>
</tr>
<tr><td height="10px"><SPACER type="block"></td></tr>
<tr> 
	<td CLASS="CABECERA"> 
      		Abrimos
    	</td>
    	<td CLASS="CELDA"> 
      		Todos los días <!-- menos los Martes<br> -->desde las 10 de la mañana
    	</td>
</tr>
<tr><td height="10px"><SPACER type="block"></td></tr>
<tr> 
	<td CLASS="CABECERA"> 
      		Teléfono
    	</td>
    	<td CLASS="CELDA"> 
      		91 851 9771
    	</td>
</tr>
<tr><td height="10px"><SPACER type="block"></td></tr>
<tr> 
	<td CLASS="CABECERA"> 
      		Información
    	</td>
    	<td CLASS="EN"> 
      		<a href='javascript:contactarPar("info","")'>mesoncastillo@hotmail.com</a>
    	</td>
</tr>
<tr><td height="10px"><SPACER type="block"></td></tr>
<tr>
	<td CLASS="CABECERA"> 
		Mapa - Callejero
	</td>
	<td CLASS="EN"> 
		<a href="javascript:abrirVentana('../jsp/MuestraImagen.jsp?img=plano')"><img src="../../imagenes/plano_rec.gif" border="0" width="90px" height="90px" alt="Ampliar" title="Ampliar"></a>
		<a href="javascript:abrirVentana('../jsp/MuestraImagen.jsp?img=plano')">[Ampliar mapa]</a>
	</td>
</tr>
<tr>
	<td CLASS="CABECERA"> 
		Mapa - Google Maps
	</td>
	<td CLASS="EN"> 
		<div align="center">
			<iframe rameborder="0" scrolling="no" marginheight="0" marginwidth="0"
			src="http://maps.google.es/maps?f=q&source=s_q&hl=es&geocode=&q=pintor+murillo,+20+collado+villalba%28madrid%29&aq=&sll=40.396764,-3.713379&sspn=11.155152,19.753418&vpsrc=6&ie=UTF8&hq=&hnear=Calle+del+Pintor+Murillo,+20,+28400+Collado+Villalba,+Madrid,+Comunidad+de+Madrid&t=h&z=16&output=embed">
			</iframe><br />
	             		
		<small><a target="_blank"
			href="https://maps.google.com/maps?ie=UTF8&cid=3922913858327574684&q=Meson+Castillo&iwloc=A&gl=US&hl=es"
			style="color: #0000FF; text-align: left">[Ampliar mapa]</a></small></div>
	</td>
</tr>
<tr><td height="10px"><SPACER type="block"></td></tr>
<tr>
	<td CLASS="CABECERA"> 
		Recorrido desde el Zoco
	</td>
	<td CLASS="EN"> 
		<a href="javascript:abrirVentanaFlash('../jsp/MuestraImagen.jsp?img=recorridoZoco')"><img src="../../imagenes/recorridoZoco_rec.jpg" border="0" width="90px" height="90px" alt="Ampliar" title="Ampliar"></a>
		<a href="javascript:abrirVentanaFlash('../jsp/MuestraImagen.jsp?img=recorridoZoco')">[Imágenes reales]</a>
	</td>
</tr>
<tr><td height="10px"><SPACER type="block"></td></tr>
</table>



<!-- Abro tabla principal y resto de marcos -->
<%@include file="MarcoCerrar.jsp"%>                                        
<!--  **  -->
