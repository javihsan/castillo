<%
String urlOpener = (String)request.getAttribute("urlOpener");
%>
<HTML>
<HEAD>
<TITLE>AutoClose</TITLE>
<script language="JavaScript" SRC="../jsp/util.js"></script>
<script language="JavaScript" type="text/JavaScript">
<!--
function Cerrar(){		
	opener.location.href = "<%=urlOpener%>";
	cerrar();
}
//-->
</script>
</HEAD>
<BODY background = "imagenes/fondo.gif" vlink="#0000FF" link="#0000FF" alink="#0000FF" onLoad="javascript:Cerrar();">
</BODY>
</HTML>