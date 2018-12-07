<%@ page import="java.util.*" %>                                                            
<% 
String textoPrincipal = (String)request.getAttribute("texto_principal");
%>
<HTML>     
<HEAD>    
<TITLE>Mesón Castillo</TITLE>

<!-- Abro tabla principal y resto de marcos -->
<%@include file="MarcoAdmin.jsp"%>       
<!--  **  -->

<table width="100%" border="0" align="center">     

<!-- Anuncio de Jose -->
<tr>
<td colspan="2" align="center" class="ENMENU">
	<hr align="left" size="2" color="#000066">
	<a href="textprinc-webadmin">
		<%if (textoPrincipal !=null){%><%=textoPrincipal%><%} else { %>Inactivo<% } %></a>
	<hr align="left" size="2" color="#000066">
</td>
</tr>
<!-- Fin Anuncio de Jose-->

<!-- VCard Admin -->
<tr>
<td colspan="2" align="center" class="ENMENU">
	<hr align="left" size="2" color="#000066">
	<a href="vcard-webadmin">
		VCARD Admin
	<hr align="left" size="2" color="#000066">
</td>
</tr>
<!-- Fin Anuncio de Jose-->

<!-- Zonas y links -->
<tr>
<td colspan="2" align="center">
	<table width="100%" cellspacing="0" cellpadding="3" border="0">
	<tr>
	<td colspan="2">
		<table width="100%" cellspacing="0" cellpadding="0" border="0">
			<tr><td height="1px" bgcolor="#E0E3E4" colspan="4"><SPACER type="block"></td></tr>
			<tr>
				<td height="1px" bgcolor="#E0E3E4" rowspan="3"><SPACER type="block"></td>
				<td colspan="2"><SPACER type="block"></td>
				<td height="1px" bgcolor="#E0E3E4" rowspan="3"><SPACER type="block"></td>
			</tr>
			<tr>
				<td align="center" class="TITULO" background="../../imagenes/borde_hor.gif" width="195px" height="18px" colspan="2">
				          Bienvenida
				</td>
			</tr>
			<tr>
				<td width="20px"><SPACER type="block"></td>
				<td width="460px" height="90px">
					<table width="460px" cellspacing="0" cellpadding="0" border="0">
					<tr>
					<td width="100px" valign="middle">
						<img src="../../imagenes/jose_rec.gif" border="0" width="90px" height="85px">
					</td>
					<td class="EN">
						<p class="PARRAFO_SEPARADOR">Bienvenido a la web del Mesón Castillo</p>
						<p class="PARRAFO_SEPARADOR">Es de siempre conocido nuestro afán por no ser un simple bar,</p>
						<p class="PARRAFO_SEPARADOR">nos encanta que además de disfrutar de nuestra comida y bebida</p>
						<p class="PARRAFO_SEPARADOR">tengas la posibilidad de participar con nosotros mediante</p>
						<p class="PARRAFO_SEPARADOR">el deporte, fotos, anuncios, notitas, pizarras y fiestas</p>
					</td>
					</tr>
					</table>
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


<!-- Abro tabla principal y resto de marcos -->
<%@include file="MarcoCerrar.jsp"%>                                        
<!--  **  -->




