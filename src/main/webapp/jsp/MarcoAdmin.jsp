<%@ page import="com.castillo.negocio.utils.Utils" %>
<%
response.setHeader("Pragma", "no-cache");
response.setHeader("Cache-Control", "no-cache");
response.setHeader("Expires", "0");
int menu = 0;
if (request.getAttribute("menu")!=null){
	menu = ((Integer)request.getAttribute("menu")).intValue();
}
%>
<meta name="organization" content="Mesón Castillo">
<meta name="author" content="Mesón Castillo">
<meta name="origen" content="Mesón Castillo">
<meta name="locality" content="Madrid, España">
<meta name="lang" content="es">
<meta name="description" content="Web del Mesón Castillo, el bar del botellín, menús diarios. Tu lugar de reunión en Villalba. Deporte y diversión.">
<meta name="keywords" content="mesón,bar,botellín,copas,Villalba,sierra,Madrid,comedor,menú,restaurante,deporte">
<meta http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="../util/estilo.css">
<script language="JavaScript" SRC="../util/util.js"></script>
<link rel="SHORTCUT ICON" href="../../imagenes/favicon.ico">
<script language="JavaScript">
<!--

function Menu_cambia(num,color,img) { 
	eval('document.imgM'+num).src = '../../imagenes/'+color+'0'+img+'.gif'
}

function pintaCaballero(num){
	url = ''
	if (num==1){
		color = 'amarillo'
		url = 'javascript:alert("No hay nada que administrar")'
		textoalt = 'Ir a Mesón'
	}	
	else if (num==2){ 
		color = 'verde'
		url += 'albumAdmin'
		textoalt = 'Ir a Fotos'
	}	
	else if (num==3){ 
		color = 'rojo'
		url = 'javascript:alert("No hay nada que administrar")'
		textoalt = 'Ir a Participa'
	}	
	else if (num==4){ 
		color = 'morado'
		url = 'javascript:alert("No hay nada que administrar")'
		textoalt = 'Ir a Deporte'
	}	
	else if (num==5){ 
		color = 'azul'
		url = 'javascript:alert("No hay nada que administrar")'
		textoalt = 'Ir a Noticias'
	}	

	str = ""
	if (num!=<%=menu%>){
		str += "<a href='"+url+"' onMouseOver=\"Menu_cambia("+num+",'"+color+"',2)\" onMouseOut=\"Menu_cambia("+num+",'"+color+"',1)\">";
		str += "<img name=\"imgM"+num+"\" align=\"abstop\" src=\"../../imagenes/"+color+"01.gif\" border=\"0\" width=\"60px\" height=\"90px\" alt=\""+textoalt+"\" title=\""+textoalt+"\">"
		str += "</a>";
	}
	else{
		str += "<a href='"+url+"'>";
		str += "<img name=\"imgM"+num+"\" align=\"abstop\" src=\"../../imagenes/"+color+"02.gif\" border=\"0\" width=\"60px\" height=\"90px\" alt=\""+textoalt+"\" title=\""+textoalt+"\">"
		str += "</a>";
	}	
	document.write(str) 
}

function pintaArea(num){
	url = ''
	if (num==1){
		color = 'amarillo'
		url = 'javascript:alert("No hay nada que administrar")'
		textoalt = 'Ir a Mesón'
	}	
	else if (num==2){ 
		color = 'verde'
		url += 'albumAdmin'
		textoalt = 'Ir a Fotos'
	}	
	else if (num==3){ 
		color = 'rojo'
		url = 'javascript:alert("No hay nada que administrar")'
		textoalt = 'Ir a Participa'
	}	
	else if (num==4){ 
		color = 'morado'
		url = 'javascript:alert("No hay nada que administrar")'
		textoalt = 'Ir a Deporte'
	}	
	else if (num==5){ 
		color = 'azul'
		url = 'javascript:alert("No hay nada que administrar")'
		textoalt = 'Ir a Noticias'
	}	


	str2 = ""
	x = 10+100*(num-1)
	if (num!=<%=menu%>){
		str2 += "<area shape=\"rect\" coords=\""+x+",1,"+(x+85)+",26\" href='"+url+"' onMouseOver=\"Menu_cambia("+num+",'"+color+"',2)\" onMouseOut=\"Menu_cambia("+num+",'"+color+"',1)\" alt=\""+textoalt+"\" title=\""+textoalt+"\">"
	}
	else{
		str2 += "<area shape=\"rect\" coords=\""+x+",1,"+(x+85)+",26\" href='"+url+"' alt=\""+textoalt+"\" title=\""+textoalt+"\">"
	}	
	document.write(str2) 
}

//-->
</script>
</HEAD>

<body leftmargin="0" topmargin="0px" marginwidth="0" marginheight="0" class="BODY">

<!-- Tabla global -->
<table class="TAMANIO_GLOBAL" align="center" cellspacing="0" cellpadding="0" border="0">    
<tr>
<td width="760px">

<!-- Tabla principal -->
<table class="TAMANIO_GENERAL" align="center" cellspacing="0" cellpadding="0" border="0">    

<!-- ********* Cabecera ************* -->
<tr>
	<td align="center" valign="middle" colspan="5" height="71px">
		<table width="100%" cellspacing="0" cellpadding="0" border="0" align="center">    
		<tr>
		<td align="center" colspan="2" class="LETRA">ADMINISTRACIÓN</td>
		</tr>
		</table>
	</td>
</tr>
<!-- ********* Fin Cabecera ************* -->

<!-- ********* Torreta ************* -->
<tr>
	<td valign="bottom" colspan="5">
		<table cellspacing="0" cellpadding="0" border="0">    
		<tr>
			<td align="right" valign="midlle" width="120px">
				<a href="inicioAdmin"><img src="../../imagenes/logo.gif" alt="Ir al inicio" title="Ir al inicio" border="0"></a>
			</td>
			<td valign="bottom" background="../../imagenes/torreta.gif" width="561px" height="145px">
				<table width="100%" cellspacing="0" cellpadding="0" border="0">    
				<tr>
					<td width="25px"><SPACER type="block"></td>
					<td valign="top" align="center">
						<script language="JavaScript">pintaCaballero(1)</script>
					</td>
					<td valign="top" align="center">
						<script language="JavaScript">pintaCaballero(2)</script>
					</td>
					<td valign="top" align="center">
						<script language="JavaScript">pintaCaballero(3)</script>
					</td>
					<td valign="top" align="center">
						<script language="JavaScript">pintaCaballero(4)</script>
					</td>
					<td valign="top" align="center">
						<script language="JavaScript">pintaCaballero(5)</script>
					</td>
					<td valign="top" width="30px"><SPACER type="block"></td>
				</tr>
				<tr>
					<td width="25px"><SPACER type="block"></td>
					<td colspan="5">
						<img src="../../imagenes/trans.gif" border="0" width="500px" height="26px" usemap="#Map">
						<map name="Map">
							<script language="JavaScript">pintaArea(1)</script>
							<script language="JavaScript">pintaArea(2)</script>
							<script language="JavaScript">pintaArea(3)</script>
							<script language="JavaScript">pintaArea(4)</script>
							<script language="JavaScript">pintaArea(5)</script>
						</map>

					</td>
					<td valign="top" width="30px"><SPACER type="block"></td>
				</tr>
				</table>
			</td>
			<td valign="bottom" width="79px"><SPACER type="block"></td>
		</tr>	
		</table>
	</td>	
</tr>
<!-- ********* Fin Torreta ************* -->

<!-- ********* Menu , Central y Asa ************* -->
<tr>
<!-- ********* Menu ************* -->
	<td align="right" valign="top" width="150px">
		<br>
		<table align="right" width="150px" cellspacing="0" cellpadding="0" border="0">    
		<tr>
			<td valign="top" background="../../imagenes/menu.gif" width="150px" height="300px">

				<% if (menu==1){%>
					<%@include file="Menu_bar.jsp"%>
				<%}%>      
				
			</td>
		</tr>
		</table>
	</td>
<!-- ********* Fin Menu ************* -->

<!-- ********* Central ************* -->
	<td width="12px" valign="top" background="../../imagenes/borde_izq.gif"><SPACER type="block"></td>
	<td align="center" valign="top" width="490px" class="CENTRO">
		<table width="100%" cellspacing="0" cellpadding="0" border="0">    
		<tr>
			<td width="5px" height="20px"><SPACER type="block"></td>
			<td height="20px" align="right" class="FECHA">	
				<%=Utils.getCurrentDate("EEE, d MMM yyyy")%>
			</td>
		</tr>
		</table>