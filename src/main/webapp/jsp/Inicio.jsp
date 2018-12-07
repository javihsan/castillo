<%@ page import="java.util.*" %>
<%@ page import="com.castillo.negocio.dto.DTOMensaje" %>                                                              
<% 
String textoPrincipal = (String)request.getAttribute("texto_principal");
//List<DTOMensaje> vMensajes = (List<DTOMensaje>)request.getAttribute("vMensajes");
List<DTOMensaje> vMensajes = new ArrayList<DTOMensaje>();
DTOMensaje mensaje = null;
%>
<HTML>     
<HEAD>     
<TITLE>Mesón Castillo</TITLE>

<script language="JavaScript">
<!--

function abrirVentana(ruta){
	openWindow(ruta,'','scrollbars=yes,width=550,height=450')
}
vMensajes = new Array (<%=vMensajes.size()%>)
<% for (int i=0;i<vMensajes.size();i++){ 
	mensaje = (DTOMensaje)vMensajes.get(i);
%>
	vMensajes[<%=i%>] = '<%=mensaje.getMenTexto()%>'
<% } %>
var contador = 0
var mensaje = ''
var parar = false
function repetir (){
	if (!parar){
		mensaje = vMensajes[contador];
		document.all.divMensajes.innerHTML = '<font class="MAS2">'+mensaje+'</font>';  
		setTimeout('repetir()',8000)
		if (contador==vMensajes.length-1) contador = 0
		else contador++
	}	
}
function init(){
	if (vMensajes.length>0){
		contador = 0
		mensaje = vMensajes[contador]
		parar = false
		repetir()
	}
}

//-->
</script>

<!-- Abro tabla principal y resto de marcos -->
<%@include file="Marco.jsp"%>       
<!--  **  -->

<table width="100%" border="0" align="center">     

<!-- Anuncio de Jose -->
<% if (textoPrincipal!=null){ %>
<tr>
<td colspan="2" align="center" class="CABECERA" background="../../imagenes/pergamino-arriba.gif" height="50px">
	<MARQUEE SCROLLDELAY="125"><%= textoPrincipal %></MARQUEE>
</td>
</tr>
<% } %>
<!-- Fin Anuncio de Jose-->

<!-- Mensajes de opinión 
<tr>
<td class="EN" width="15%">
<a href="javascript:abrirVentana('NuevoMensajeCorto')">Envía</a><br> tu opinión   
</td>
<td>
<div id="divMensajes" style="position:relativa; width:400px; height:30px; border: 1px none #000000; background-color:#efefe7; layer-background-color:#efefe7">
<font class="MAS2">Envía tu mensaje haciendo click en el enlace. Se abrirá una ventana
donde escribirás el texto del mensaje y cuando termines das a Enviar.</font>
</div>
</td>
</tr>
 Fin Mensajes de opinión -->


<!-- Zonas y links -->
<tr>
<td colspan="2" align="center">
	<table width="100%" cellspacing="0" cellpadding="3" border="0">
	<tr>
	<td valign="top" width="50%">
		<table width="100%" cellspacing="0" cellpadding="0" border="0">
			<tr><td height="1px" bgcolor="#E0E3E4" colspan="4"><SPACER type="block"></td></tr>
			<tr>
				<td height="1px" bgcolor="#E0E3E4" rowspan="4"><SPACER type="block"></td>
				<td colspan="2"><SPACER type="block"></td>
				<td height="1px" bgcolor="#E0E3E4" rowspan="4"><SPACER type="block"></td>
			</tr>
			<tr>
				<td align="center" class="TITULO" background="../../imagenes/borde_hor.gif" width="195px" height="18px" colspan="2">
				          Contacta
				</td>
			</tr>
			<tr>
				<td colspan="2" class="EN">
					<center><a href="bar_contacta">Añade el contacto a tu teléfono</a></center>
				</td>
			</tr>
			<tr height="110px">
				<td colspan="2" align="center" width="300px" class="EN">
					<p class="PARRAFO_SEPARADOR">&nbsp;</p>
					<a href="download-vcard"><font class="MAS">Descargar VCard o  <br>Añadir contacto mediante Google Map (iPhone)</font><br><img src="../../imagenes/descargar.gif" alt="Descargar" title="Descargar" border="0"></a>
				</td>
			</tr>
			<tr><td height="1px" bgcolor="#E0E3E4" colspan="4"><SPACER type="block"></td></tr>
		</table>	
	</td>
	<td valign="top" width="50%">
		<table width="100%" cellspacing="0" cellpadding="0" border="0">
			<tr><td height="1px" bgcolor="#E0E3E4" colspan="4"><SPACER type="block"></td></tr>
			<tr>
				<td height="1px" bgcolor="#E0E3E4" rowspan="4"><SPACER type="block"></td>
				<td colspan="2"><SPACER type="block"></td>
				<td height="1px" bgcolor="#E0E3E4" rowspan="4"><SPACER type="block"></td>
			</tr>
			<tr>
				<td align="center" class="TITULO" background="../../imagenes/borde_hor.gif" width="195px" height="18px" colspan="2">
				          Participa
				</td>
			</tr>
			<tr>
				<td colspan="2" class="EN">
					<center><a href="participa">El Mesón Castillo en las Redes Sociales</a></center>
				</td>
			</tr>
			<tr height="110px">
				<td valign="top" align="center" width="300px" class="EN">
					<p id="PARRAFO_SEPARADOR"><strong>Síguenos en:</strong></p> 
					<p id="PARRAFO_SEPARADOR">
						<a href="http://www.facebook.com/pages/Meson-Castillo/201539556584196" target="_blank">
							<img src="../../imagenes/social/icon-faceook.gif" border="0" height="25px"
								alt="Síguenos en Facebok" /></a>&nbsp;
				</td>
				<td valign="top" width="260px">
					<p id="PARRAFO_SEPARADOR"><strong>Compartir en:</strong></p>
			 		<p id="PARRAFO_SEPARADOR">
			 			<!-- AddThis Button BEGIN -->
						<div class="addthis_toolbox addthis_default_style">
							<a class="addthis_button_preferred_1"></a>
							<a class="addthis_button_preferred_2"></a>
							<a class="addthis_button_preferred_3"></a>
							<a class="addthis_button_preferred_4"></a>
							<a class="addthis_button_compact"></a>
							<a class="addthis_counter addthis_bubble_style"></a>
						</div>
			    		
			    		<script>var addthis_language = "es";</script>
						<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=xa-4dccde4820e195aa"></script>
					</p>
				</td>
			</tr>
			<tr><td height="1px" bgcolor="#E0E3E4" colspan="4"><SPACER type="block"></td></tr>
		</table>	
	</td>
	</tr>
	<tr>
	<td valign="top" colspan="2">
		<table width="100%" cellspacing="0" cellpadding="0" border="0">
			<tr><td height="1px" bgcolor="#E0E3E4" colspan="4"><SPACER type="block"></td></tr>
			<tr>
				<td height="1px" bgcolor="#E0E3E4" rowspan="3"><SPACER type="block"></td>
				<td colspan="2"><SPACER type="block"></td>
				<td height="1px" bgcolor="#E0E3E4" rowspan="3"><SPACER type="block"></td>
			</tr>
			<tr>
				<td align="center" class="TITULO" background="../../imagenes/borde_hor.gif" width="195px" height="18px" colspan="2">
				          Deportes
				</td>
			</tr>
			<tr>
				<td width="20px"><SPACER type="block"></td>
				<td width="460px" height="90px">
					<table width="460px" cellspacing="0" cellpadding="0" border="0">
					<tr>
					<td width="100px" valign="middle">
						<a href="javascript:abrirVentana('../../fotos/premioXGala.gif')"><img src="../../fotos/indice_premioXGala.jpg" border="0" width="90px" height="90px" alt="Ampliar" title="Ampliar"></a>
					</td>
					<td class="EN"> 
						<p class="PARRAFO_SEPARADOR"><a target="_blank" href="http://www.castillocd.com">La Tragamillas en la Web del Club Deportivo El Castillo</a></p>
						<p class="PARRAFO_SEPARADOR">Toda la información que necesitas sobre La Tragamiilas está en la Web del CD El Castillo<a target="_blank" href="http://www.castillocd.com">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font class="MAS">www.castillocd.com</font></a></p>
						<p class="PARRAFO_SEPARADOR">&nbsp;</p>
						<p class="PARRAFO_SEPARADOR">&nbsp;</p>
					</td>
					</tr>
					</table>
				</td>
			</tr>
			<tr><td height="1px" bgcolor="#E0E3E4" colspan="4"><SPACER type="block"></td></tr>
		</table>	
	</td>
	</tr>
	<tr>
	<tr>
	<td valign="top" colspan="2">
		<table width="100%" cellspacing="0" cellpadding="0" border="0">
			<tr><td height="1px" bgcolor="#E0E3E4" colspan="4"><SPACER type="block"></td></tr>
			<tr>
				<td height="1px" bgcolor="#E0E3E4" rowspan="3"><SPACER type="block"></td>
				<td colspan="2"><SPACER type="block"></td>
				<td height="1px" bgcolor="#E0E3E4" rowspan="3"><SPACER type="block"></td>
			</tr>
			<tr>
				<td align="center" class="TITULO" background="../../imagenes/borde_hor.gif" width="195px" height="18px" colspan="2">
				          Alojamiento
				</td>
			</tr>
			<tr>
				<td width="20px"><SPACER type="block"></td>
				<td width="460px" height="90px" class="EN">
					<table width="460px" cellspacing="0" cellpadding="0" border="0">
					<tr>
					<td width="100px" valign="middle">
						<a href="javascript:abrirVentana('../../fotos/rural.jpg')"><img src="../../fotos/indice_rural.gif" border="0" width="90px" height="90px" alt="Ampliar" title="Ampliar"></a>
					</td>
					<td class="EN"> 
						<p class="PARRAFO_SEPARADOR"><a href="bar_rural">Casa rural</a></p>
						<p class="PARRAFO_SEPARADOR">En plena sierra de Guadarrama y en un entorno de ensueño se encuentra emplazada este chalet rural donde podrás disfrutar de la Sierra norte de Madrid a pleno pulmón.
						<a href="bar_rural"><font class="MAS">[Más]</font></a></p>
						<p class="PARRAFO_SEPARADOR">&nbsp;</p>
					</td>
					</tr>
					</table>
				</td>
			</tr>
			<tr><td height="1px" bgcolor="#E0E3E4" colspan="4"><SPACER type="block"></td></tr>
		</table>	
	</td>
	</tr>
	<tr>
	<td valign="top" width="50%">
		<table width="100%" cellspacing="0" cellpadding="0" border="0">
			<tr><td height="1px" bgcolor="#E0E3E4" colspan="4"><SPACER type="block"></td></tr>
			<tr>
				<td height="1px" bgcolor="#E0E3E4" rowspan="3"><SPACER type="block"></td>
				<td colspan="2"><SPACER type="block"></td>
				<td height="1px" bgcolor="#E0E3E4" rowspan="3"><SPACER type="block"></td>
			</tr>
			<tr>
				<td align="center" class="TITULO" background="../../imagenes/borde_hor.gif" width="195px" height="18px" colspan="2">
					Historia
				</td>
			</tr>
			<tr>
				<td width="20px"><SPACER type="block"></td>
				<td width="230px" height="80px" class="EN">
					<p class="PARRAFO_SEPARADOR"><a href="bar_historia">En un lugar de la Mancha</a></p>
					<p class="PARRAFO_SEPARADOR"> de cuyo nombre no quiero acordarme,</p>
					<p class="PARRAFO_SEPARADOR">no ha mucho tiempo que vivían</p>
					<p class="PARRAFO_SEPARADOR">unos camareros de los de</p>
					<p class="PARRAFO_SEPARADOR">patita de calamar, sonrisa profiden
					<a href="bar_historia"><font class="MAS">[Más]</font></a></p>
					<p class="PARRAFO_SEPARADOR">&nbsp;</p>
				</td>
			</tr>
			<tr><td height="1px" bgcolor="#E0E3E4" colspan="4"><SPACER type="block"></td></tr>
		</table>	
	</td>
	<td valign="top" width="50%">
		<table width="100%" cellspacing="0" cellpadding="0" border="0">
			<tr><td height="1px" bgcolor="#E0E3E4" colspan="4"><SPACER type="block"></td></tr>
			<tr>
				<td height="1px" bgcolor="#E0E3E4" rowspan="3"><SPACER type="block"></td>
				<td colspan="2"><SPACER type="block"></td>
				<td height="1px" bgcolor="#E0E3E4" rowspan="3"><SPACER type="block"></td>
			</tr>
			<tr>
				<td align="center" class="TITULO" background="../../imagenes/borde_hor.gif" width="195px" height="18px" colspan="2">
					Carta
				</td>
			</tr>
			<tr>
				<td width="20px"><SPACER type="block"></td>
				<td width="230px" height="70px" class="EN">
					<p class="PARRAFO_SEPARADOR"><a href="bar_carta">Visita nuestra carta</a></p>
					<p class="PARRAFO_SEPARADOR"><a href="bar_carta"><font class="MAS">Visita nuestra carta </font></a>. ¡¡ Se te hará la boca agua !!</p>
					<p class="PARRAFO_SEPARADOR">&nbsp;</p>
					<p class="PARRAFO_SEPARADOR">&nbsp;</p>
					<p class="PARRAFO_SEPARADOR">&nbsp;</p>
				</td>
			</tr>
			<tr><td height="1px" bgcolor="#E0E3E4" colspan="4"><SPACER type="block"></td></tr>
		</table>	
	</td>
	</tr>
	</table>

</td>
</tr>
<!-- Fin Zonas y links -->

</table> 


<script language="JavaScript">
<!--

init();

//-->
</script>

<!-- Abro tabla principal y resto de marcos -->
<%@include file="MarcoCerrar.jsp"%>                                        
<!--  **  -->




