<%@ page import="java.util.*" %>                                                            
<%@ page import="com.castillo.negocio.dto.DTOWeb"%>   
<%
String urlRedirect = (String)request.getAttribute("urlRedirect");
DTOWeb webBean = (DTOWeb)request.getAttribute("web");
%>
<HTML>     
<HEAD>    
<TITLE>Mesón Castillo</TITLE>
<script language="JavaScript">
<!--

function updateWeb() { 
	if (!document.web.webValor.value.length>0){
		alert ('Este campo no puede estar vacío')
		document.web.webValor.focus()
	} else if (document.web.webValor.value.length>3000){
		alert ('Este campo no puede tener más de 3000 caracteres')
		document.web.webValor.focus()
	} else {	
		document.web.submit();
	}	
}

//-->
</script>

<!-- Abro tabla principal y resto de marcos -->
<%@include file="MarcoAdmin.jsp"%>       
<!--  **  -->

<!--  ****************** Web ************************  -->
<form action="<%= urlRedirect %>" method="post" name="web" id="web">
  <table width="85%" border="0" align="center">
   <tr> 
   	<td CLASS="CABECERA_ADMIN" align="center"> 
 		Texto principal
    </td>
  </tr>

    <tr> 
      	<td CLASS="SUB_CABECERA"> 
	 		<%=webBean.getWebParametro()%>
    	</td>
  </tr>
    <tr>
	    <td> 
	    <textarea id="webValor" name="webValor" rows="5" cols="50"><%if(webBean.getWebValor()!=null)%><%=webBean.getWebValor().getValue()%></textarea>
	    </td>
    </tr>
    <tr>
	    <td class="CELDA" align="center"> 
	      	Activado
	      	<input type="checkbox" id=webActivado name="webActivado" value="1" 
	      	<% if (webBean.getWebActivado() == 1){%> checked <% } %>
	      	>
	      	<input type="button" value="Cancelar" onClick="history.go(-1)">
	      	<input type="button" value="Aceptar" onClick="updateWeb()">
	    </td>
    </tr>
</table>
<input type="hidden" id="webId" name="webId" value="<%= webBean.getWebId() %>">
</form> 

<!-- Abro tabla principal y resto de marcos -->
<%@include file="MarcoCerrar.jsp"%>                                        
<!--  **  -->