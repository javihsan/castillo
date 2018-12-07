
<%
	String path = request.getServletPath();
%>
<table width="100%" cellspacing="0" cellpadding="0" border="0">
	<tr>
		<td width="25%" rowspan="20"><SPACER type="block">
		</td>
		<td height="20px"><SPACER type="block">
		</td>
	</tr>

	<tr>
		<td class="ENMENU" height="20px">
			<%
				if (path.indexOf("bar_bienvenida") == -1) {
			%> <a href="bar_bienvenida">Bienvenida</a>
			<%
				} else {
			%> Bienvenida <%
				}
			%>
		</td>
	</tr>

	<tr>
		<td class="ENMENU" height="20px">
			<%
				if (path.indexOf("bar_contacta") == -1) {
			%> <a href="bar_contacta">Contacta</a>
			<%
				} else {
			%> Contacta <%
				}
			%>
		</td>
	</tr>

	<tr>
		<td class="ENMENU" height="20px">
			<%
				if (path.indexOf("bar_historia") == -1) {
			%> <a href="bar_historia">Historia</a>
			<%
				} else {
			%> Historia <%
				}
			%>
		</td>
	</tr>

	<tr>
		<td class="ENMENU" height="20px">
			<%
				if (path.indexOf("bar_familia") == -1) {
			%> <a href="bar_familia">Familia</a>
			<%
				} else {
			%> Familia <%
				}
			%>
		</td>
	</tr>

	<tr>
		<td class="ENMENU" height="20px">
			<%
				if (path.indexOf("bar_comedor") == -1) {
			%> <a href="bar_comedor">El
				comedor</a> <%
 	} else {
 %> El comedor <%
 	}
 %>
		</td>
	</tr>

	<tr>
		<td class="ENMENU" height="20px">
			<%
				if (path.indexOf("bar_carta") == -1) {
			%> <a href="bar_carta">Carta</a>
			<%
				} else {
			%> Carta <%
				}
			%>
		</td>
	</tr>

	<tr>
		<td class="ENMENU" height="20px">
			<%
				if (path.indexOf("bar_fotos") == -1) {
			%> <a href="bar_fotos">Fotos</a>
			<%
				} else {
			%> Fotos <%
				}
			%>
		</td>
	</tr>

	<tr>
		<td class="ENMENU" height="20px">
			<%
				if (path.indexOf("bar_antesFotos") == -1) {
			%> <a href="bar_antesFotos">Fotos
				de antes</a> <%
 	} else {
 %> Fotos de antes <%
 	}
 %>
		</td>
	</tr>

	<tr>
		<td class="ENMENU" height="20px">
			<%
				if (path.indexOf("bar_rural") == -1) {
			%> <a href="bar_rural">Casa
				rural</a> <%
 	} else {
 %> Casa rural <%
 	}
 %>
		</td>
	</tr>
</table>