<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%
	int tipo = 1;
	if (request.getAttribute("tipo")!=null){
		tipo = Integer.parseInt((String)request.getAttribute("tipo"));
	}
	int max = 13;
	String Stipo = "interiores";
	if (tipo==2){
	      Stipo = "exteriores";
	      max = 13;
	    }	
	    else if (tipo==3){
	      Stipo = "vistas";
	      max = 8;
	    }
	String ruta = "fotos/rural";
	String nombreBase = "rural_";

%>	
<HTML>     
<HEAD>    
<TITLE>Mesón Castillo</TITLE>

<script language="JavaScript">
<!--

function listado() {
	document.listadoFotos.submit();
}

function abrirVentana(ruta){
	openWindow(ruta,'','scrollbars=yes,width=550,height=450')
}

//-->
</script>

<!-- Abro tabla principal y resto de marcos -->
<%@include file="Marco.jsp"%>       
<!--  **  -->

<form id="listadoFotos" name="listadoFotos" action="bar_rural" method="post">
<table align="center" width="95%" cellspacing="2" cellpadding="0" border="0">    
<tr><td height="20px"><SPACER type="block"></td></tr>
<tr><td class="CELDA" colspan="4">

En plena sierra de Guadarrama y en un entorno de ensueño se encuentra emplazada este chalet rural 
donde podrás disfrutar de la Sierra norte de Madrid a pleno pulmón.<br>
Situado en el pueblo de Guadarrama, a 8 Kms. del Puerto de Los Leones, a 15 Kms. del Puerto de Navacerrada y a 10 Kms. de El Escorial este chalet nos ofrece:<br><br>

Parcela de 2000 mts. cuadrados <br>
500 mts. construidos. Todo en una planta. <br>
Capacidad para 11-14 personas <br>
5 habitaciones con 4 camas de matrimonio, 2 camas supletorias y 3 camas individuales <br>
Salón comedor muy amplio e iluminado <br>
Cocina completa inmensa <br>
2 baños <br>
Bodega con chimenea <br>
Barbacona/Horno<br> 
Juegos y columpios para niños <br>
Calefacción en todas las habitaciones <br>
Capacidad para 7 coches <br><br>
La dirección es:<br>

   C\ Guadarrama nº 3<br>

   28440 - Guadarrama<br>

   Madrid<br>

 

Tlf. de contacto: 630204361<br><br>

Tarifa:<br>

     400€ Fin de semana<br>

     800€ Semana<br>

   1500€ 15 días<br><br>

 

También se pueden celebrar despedidas de soltero<br><br>
</td></tr>
<tr>
    <td align="right" valign="middle" colspan="3">
  	<select id="tipo" name="tipo" class="SELECTOR" style="WIDTH: 150px" onChange="listado()">	
		<option value="1" <%if (tipo==1){%>selected <%}%>>Interiores</option>
		<option value="2" <%if (tipo==2){%>selected <%}%>>Exteriores</option>
		<option value="3" <%if (tipo==3){%>selected <%}%>>Vistas</option>
	</select>
    </td>  
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
			<%  j++;
				f++;
				} else {
					break;
				}
			}%>
		</tr>
<% } %>	
</table>

</form>
			
<!-- Abro tabla principal y resto de marcos -->
<%@include file="MarcoCerrar.jsp"%>                                        
<!--  **  -->