<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%
	int tipo = 1;
	if (request.getAttribute("tipo")!=null){
		tipo = Integer.parseInt((String)request.getAttribute("tipo"));
	}
	int max = 12;
	String Stipo = "bar";
	if (tipo == 2) {
		Stipo = "comedor";
		max = 5;
	} else if (tipo == 3) {
		Stipo = "exteriores";
		max = 10;
	} else if (tipo == 4) {
		Stipo = "curiosidades";
		max = 10;
	}
	String ruta = "fotos/fotosAntes";
	String nombreBase = "bar_fotos_";

%>
<HTML>
<HEAD>
<TITLE>Mesón Castillo</TITLE>

<script language="JavaScript">
<!--
	function listado() {
		document.listadoFotos.submit();
	}
	
	function abrirVentana(ruta) {
		openWindow(ruta, '', 'scrollbars=yes,width=550,height=450')
	}

//-->
</script>

<%@include file="Marco.jsp"%>
<!--  **  -->

<form id="listadoFotos" name="listadoFotos" action="bar_antesFotos" method="post">
	<table align="center" width="95%" cellspacing="2" cellpadding="0"
		border="0">
		<tr>
			<td height="20px"><SPACER type="block">
			</td>
		</tr>
		<tr>
			<td align="right" valign="middle" colspan="3"><select id="tipo"
				name="tipo" class="SELECTOR" style="WIDTH: 150px"
				onChange="listado()">
					<option value="1" <%if (tipo == 1) {%> selected <%}%>>Bar</option>
					<option value="2" <%if (tipo == 2) {%> selected <%}%>>Comedor</option>
					<option value="3" <%if (tipo == 3) {%> selected <%}%>>Exteriores</option>
					<option value="4" <%if (tipo == 4) {%> selected <%}%>>Curiosidades</option>
			</select></td>
		</tr>
		<tr>
			<td height="10px"><SPACER type="block">
			</td>
		</tr>
		<%int f = 1;
			int j = 0;
			String nombre = "";
			String nombre_rec = "";
			boolean hasImages = true;
			while (f <= max) {
			j = 1;%>
		<tr>
			<%while (j <= 4) {
				if (max>=f){
					nombre = nombreBase+f+".jpg";
					nombre_rec = nombre.substring(0,nombre.indexOf(".jpg"))+ "_rec.gif";%>
			<td><a href="javascript:abrirVentana('../../<%=ruta%>/<%=Stipo%>/<%=nombre%>')"><img
					src="../../<%=ruta%>/<%=Stipo%>/rec/<%=nombre_rec%>" border="0"
					width="90px" height="90px" alt="Ampliar" title="Ampliar">
			</a></td>
			<%	  j++;
				  f++;
				} else {
					break;
				}
			}%>
		</tr>
		<%}%>
	</table>

</form>

<!-- Abro tabla principal y resto de marcos -->
<%@include file="MarcoCerrar.jsp"%>
<!--  **  -->