<%@ page import="java.util.*" %>
<HTML>
<HEAD>
<link rel="stylesheet" type="text/css" href="../jsp/estilo.css">
<TITLE>Mensaje</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<script language="JavaScript" SRC="../util/util.js"></script>
<script language="JavaScript">
<!--

var iniciadotexto = false

function resetear(obj){
	if (!eval("iniciado"+obj)){
		eval("document.mensaje."+obj+".value = ''")
		eval ("iniciado"+obj+"=true")	
	}	
}
	
function nuevoMensaje() { 
	if (document.mensaje.texto.value.length==0  || !iniciadotexto){
		alert ('El texto no puede estar vacío')
		document.mensaje.texto.focus()
	} else if (document.mensaje.texto.value.length>254){
		alert ('El texto no puede superar los 254 caracteres')
		document.mensaje.texto.focus()
	} else {	
		document.mensaje.submit();
	}	
}

//-->
</script>
</HEAD>
<BODY bgcolor="#FFFFFF">
<form action="NuevoMensajeCorto" method="post" name="mensaje" id="mensaje">
  <table width="80%" border="0" align="center" bgcolor="#ffffe7">
   <tr> 
    <td CLASS="TEXTO_INFORMATIVO" colspan="2"> 
 	Envia Mensaje<br><br>
    </td>
  </tr>
    <tr>
    <td class="TEXTO_FORMULARIO"> 
    	Mensaje
    </td>
    <td class="ENLACES"> 
    	<textarea name="texto" rows="3" cols="40" onFocus="javascript:resetear('texto')">Escribe aquí tu mensaje. Por favor sea respetuoso.</textarea>
    </td>
    </tr>
    <tr><td>&nbsp;</td></tr>
    <tr>
    <td colspan="2" align="center">
      <input type="button" value=" Enviar " onClick="nuevoMensaje()">&nbsp;&nbsp;&nbsp;
      <input type="button" value="Cancelar" onClick="cerrar()">
    </td>
    </tr>
</table>
</form>
</BODY>
</HTML>