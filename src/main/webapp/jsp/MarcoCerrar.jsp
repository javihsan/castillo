<%@ page import="com.castillo.negocio.utils.Utils" %>
	</td>
<!-- ********* Fin Central ************* -->


<!-- ********* Asa ************* -->
	<td width="12px" valign="top" background="../../imagenes/borde_der.gif"><SPACER type="block"></td>
	<td valign="top">
		<br><br><br>
		<img src="../../imagenes/asa.gif" border="0" width="100px" height="190px">
	</td>
<!-- ********* Fin Asa ************* -->

</tr>
<!-- ********* Fin Menu , Central y Asa ************* -->

<!-- ********* Pie ************* -->
<tr>
	<td valign="top" colspan="5">
		<table width="100%" cellspacing="0" cellpadding="0" border="0">    
		<tr>
			<td valign="top" width="95px"><SPACER type="block"></td>
			<td valign="top" background="../../imagenes/pie.gif" width="595px" height="63px">
				<table width="100%" cellspacing="0" cellpadding="0" border="0">    
				<tr>
					<td valign="top" height="23px"><SPACER type="block"></td>
				</tr>
				<tr>
					<td valign="top" align="center">
						<font class="COPYRIGHT">Copyright &copy; <%=Utils.getCurrentDate("yyyy")%> <b>Mesón Castillo</b>. Todos los derechos reservados.</font>
					</td>	
				</tr>
				</table>	
			</td>
			<td valign="top" width="40px"><SPACER type="block"></td>
		</tr>
		</table>
	</td>	
</tr>
<!-- ********* Fin Pie ************* -->

<!-- Cierro tabla principal -->
</table>

</td>
<td align="center" valign="top">
<%
if (false){ %>
<br>
<br>
<br>
<br>
<br>
<br>
<script type="text/javascript"><!--
google_ad_client = "pub-2449468730871088";
google_ad_width = 120;
google_ad_height = 240;
google_ad_format = "120x240_as";
google_ad_type = "text";
google_ad_channel ="";
google_color_border = "336699";
google_color_bg = "F7F3E7";
google_color_link = "3300CC";
google_color_url = "CC3333";
google_color_text = "003366";
//--></script>
<script type="text/javascript"
  src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>
<% } %>
</td>
</tr>
</table>
<!-- Cierro tabla global -->


</BODY>
</HTML>