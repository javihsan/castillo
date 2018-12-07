<%@ page import="java.util.*" %>                                                            
<HTML>     
<HEAD>    
<TITLE>Mesón Castillo</TITLE>

<!-- Abro tabla principal y resto de marcos -->
<%@include file="Marco.jsp"%>       
<!--  **  -->

<script language="JavaScript">
<!--

function cambiaCarta( valor )
	{
		carta ='';
	
		switch (valor){
			case 0:
				iniciaValores(100,'carta')
				carta +='<img src="../../imagenes/carta-menu2.gif" border="0">'
					
				break;			
			case 1:
				iniciaValores(550,'carta')
				carta +='		<table align="center" width="390" border="0" cellpadding="0" cellspacing="0" background="../../imagenes/carta-menu3.jpg">'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" colspan="3" align="center" height="9"><b>Para picar</b></td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td colspan="3" align="center" height="3"><spacer type="block" height="3"></td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">GAMBAS COCIDAS</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">8,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">GAMBAS AL AJILLO</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">8,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="350" height="19" align="left">BOQUERONES EN VINAGRE</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">7,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="350" height="19" align="left">ENSALADILLA RUSA</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">6,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="350" height="19" align="left">PUCHERO</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">5,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="350" height="19" align="left">CALAMARES<font class="CURSIVAPEQ">(CON PATITAS + 0,50 €)</font></td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">8,50 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="350" height="19" align="left">PATITAS DE CALAMAR <font class="CURSIVAPEQ">(CON PATATAS + 0,50 €)</font></td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">6,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="350" height="19" align="left">CALLOS MADRILEÑA</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">6,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="350" height="19" align="left">OREJA CON TOMATE O PLANCHA</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">6,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="350" height="19" align="left">REVUELTO DE PICADILLO</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">7,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="350" height="19" align="left">CHAMPIÑÓN MARINERA</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">6,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="350" height="19" align="left">RIÑONES</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">6,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="350" height="19" align="left">TORREZNOS</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">6,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="350" height="19" align="left">JAMON SERRANO</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">9,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="350" height="19" align="left">LOMO IBÉRICO</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">12,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="350" height="19" align="left">QUESO MANCHEGO</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">9,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="350" height="19" align="left">CHORIZO FRITO O DE CANTIMPALO</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">6,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="350" height="19" align="left">TORTILLA ESPAÑOLA O CON SALSA <font class="CURSIVAPEQ">(TAMARI, BRAVAS O ALI-OLI)</font></td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">6,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="350" height="19" align="left">PATATAS <font class="CURSIVAPEQ">(TAMARI, BRAVAS O ALI-OLI)</font></td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">4,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="350" height="19" align="left">PATATAS MITAD Y MITAD <font class="CURSIVAPEQ">(DOS SALSAS)</font></td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">4,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="350" height="19" align="left">ALITAS DE POLLO</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">6,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="350" height="19" align="left">CODORNICES <font class="CURSIVAPEQ">(UNIDAD)</font></td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">3,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="350" height="19" align="left">BOQUERONES FRITOS</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">7,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="350" height="19" align="left">CROQUETAS CASERAS DE JAMON</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">7,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="350" height="19" align="left">BROCHETAS DE POLLO</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">7,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td colspan="3" align="center" height="19"><spacer type="block" height="19"></td>'
				carta +='			</tr>'
				carta +='		</table>'

      				break;
			case 2:      
				iniciaValores(300,'carta')
				carta +='		<table align="center" width="390" border="0" cellpadding="0" cellspacing="0"  background="../../imagenes/carta-menu3.jpg">'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" colspan="3" align="center" height="9"><b>Bandejas Y Tablas</b></td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td colspan="3" align="center" height="3"><spacer type="block" height="3"></td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="350" height="19" align="left">CHULETAS DE CORDERO <font class="CURSIVAPEQ">(10 UNIDADES)</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">20,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="350" height="19" align="left">SECRETO DE CERDO IBÉRICO</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">12,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">WAIKIKI <font class="CURSIVAPEQ">(PATATAS, ALITAS, PATITAS O CALAMARES)</font></td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">7,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="350" height="19" align="left">JAMON, QUESO Y CHORIZO</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">10,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="350" height="19" align="left">LOMO CON PIMIENTOS O PATATAS</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">12,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="350" height="19" align="left">CASTILLO <font class="CURSIVAPEQ">(JAMON, QUESO, CHORIZO, GAMBAS, BOQUERONES, ENSALADILLA)</font></td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">12,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="350" height="19" align="left">PESCADO <font class="CURSIVAPEQ">( CALAMARES, PATITAS, BOQUERONES )</font></td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">10,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="350" height="19" align="left">LOMO DE CHOTO TROCEADO CON PATATAS O PIMIENTOS <font class="CURSIVAPEQ">( CHULETÓN )</font></td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">14,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="350" height="19" align="left">POLLO ASADO TROCEADO CON PATATAS</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">8,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="350" height="19" align="left">TABLA DE PATÉS</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">10,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="350" height="19" align="left">TABLA DE QUESOS</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">10,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td colspan="3" align="center" height="19"><spacer type="block" height="19"></td>'
				carta +='			</tr>'
				carta +='		</table>'
			
      				break;
			case 3:       
				iniciaValores(380,'carta')
				carta +='		<table align="center" width="390" border="0" cellpadding="0" cellspacing="0"  background="../../imagenes/carta-menu3.jpg">'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" colspan="3" align="center" height="9"><b>Entrantes</b></td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td colspan="3" align="center" height="3"><spacer type="block" height="3"></td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">PLATO DEL DIA</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">3,50 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">SOPA DE COCIDO</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">3,50 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">CONSOMÉ</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">3,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">ALCACHOFAS CON JAMÓN</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">5,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">GUISANTES CON JAMÓN</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">5,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">JUDIAS VERDES CON JAMÓN</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">5,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">ESPARRAGOS CON MAHONESA</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">5,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">REVUELTO DE TRIGUEROS CON GAMBAS Y JAMÓN</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">6,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">REVUELTO DE SETAS CON GAMBAS Y JAMÓN</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">6,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">REVUELTO DE GULAS Y GAMBAS</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">7,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">FABADA ASTURIANA</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">5,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">ENSALADA MIXTA</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">3,50 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">ENSALADA CATALANA</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">4,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">ENSALADA TAMARI</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">4,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">ENSALADA DE PIMIENTOS, ANCHOAS Y BONITO</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">5,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">ENSALADILLA RUSA</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">5,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">ENTREMESES CASEROS</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">5,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td colspan="3" align="center" height="19"><spacer type="block" height="19"></td>'
				carta +='			</tr>'
				carta +='		</table>'

      				break;
			case 4: 
				iniciaValores(340,'carta')
				carta +='		<table align="center" width="390" border="0" cellpadding="0" cellspacing="0"  background="../../imagenes/carta-menu3.jpg">'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" colspan="3" align="center" height="9"><b>Carnes</b></td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td colspan="3" align="center" height="3"><spacer type="block" height="3"></td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">CHULETAS DE CORDERO</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">12,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">LOMO DE CHOTO PLANCHA <font class="CURSIVAPEQ">( ROQUEFORT O PIMIENTA )</font></td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">14,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">SOLOMILLOS PLANCHA <font class="CURSIVAPEQ">( ROQUEFORT O PIMIENTA )</font></td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">15,00 €</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">FILETE DE TERNERA</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">8,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">LOMO DE CERDO ADOBADO</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">8,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">CHULETA DE CERDO</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">7,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">HUEVOS CON BACON O PANCETA</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">7,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>' 
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">1/2 POLLO ASADO</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">6,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">CODORNICES FRITAS O A LA PLANCHA</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">6,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">SECRETO DE CERDO IBÉRICO</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">12,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td colspan="3" align="center" height="10"><spacer type="block" height="10"></td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">PARRILLADA DE BACON, CORDERO, LOMO,<br> CERDO Y TERNERA</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left"><font class="CURSIVAPEQ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PARA 1 PERSONA</font></td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">12,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left"><font class="CURSIVAPEQ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PARA 2 PERSONAS</font></td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">20,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left"><font class="CURSIVAPEQ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PARA 3 PERSONAS</font></td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">25,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td colspan="3" align="center" height="19"><spacer type="block" height="19"></td>'
				carta +='			</tr>'
				carta +='		</table>'

      				break;
			case 5:       
				iniciaValores(260,'carta')
				carta +='		<table align="center" width="390" border="0" cellpadding="0" cellspacing="0"  background="../../imagenes/carta-menu3.jpg">'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" colspan="3" align="center" height="9"><b>Pescados</b></td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td colspan="3" align="center" height="3"><spacer type="block" height="3"></td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">EMPERADOR A LA PLANCHA</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">10,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">CALAMARES</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">8,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">PATITAS DE CALAMAR</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">6,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">BACALAITOS</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">6,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">DON EMILIO <font class="CURSIVAPEQ">(CALAMARES, PATITAS Y BOQUERONES)</font></td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">8,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">SARDINILLAS</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">5,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">BOQUERONES FRITOS</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">7,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">MERLUZA</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">7,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">DORADA O LUBINA A LA ESPALDA</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">12,00 €&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="340" height="19" align="left">SALMÓN A LA PLANCHA</td>'
				carta +='				<td class="CURSIVA" width="50" height="19" align="right">8,00 €&nbsp;</td>'
				carta +='			</tr>'	
				carta +='			<tr>'
				carta +='				<td colspan="3" align="center" height="19"><spacer type="block" height="19"></td>'
				carta +='			</tr>'
				carta +='		</table>'

      				break;							
			case 6:  
				iniciaValores(390,'carta')			
				carta +='		<table align="center" width="390" border="0" cellpadding="0" cellspacing="0"  background="../../imagenes/carta-menu3.jpg">'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" colspan="3" align="center" height="9"><b>Bocadillos / Montados</b></td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td colspan="3" align="center" height="3"><spacer type="block" height="3"></td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="240" height="19" align="left">CALAMARES</td>'
				carta +='				<td class="CURSIVA" width="150" height="19" align="right">4,00 €&nbsp; / 3,00€&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="240" height="19" align="left">CHORIZO FRITO O DE CANTIMPALO</td>'
				carta +='				<td class="CURSIVA" width="150" height="19" align="right">4,00 €&nbsp; / 3,00€&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="240" height="19" align="left">JAMÓN SERRANO <font class="CURSIVAPEQ">(CON O SIN TOMATE)</font></td>'
				carta +='				<td class="CURSIVA" width="150" height="19" align="right">4,00 €&nbsp; / 3,00€&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="240" height="19" align="left">QUESO <font class="CURSIVAPEQ">(CON O SIN TOMATE)</font></td>'
				carta +='				<td class="CURSIVA" width="150" height="19" align="right">4,00 €&nbsp; / 3,00€&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="240" height="19" align="left">JAMÓN, QUEDO Y TOMATE</td>'
				carta +='				<td class="CURSIVA" width="150" height="19" align="right">4,00 €&nbsp; / 3,00€&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="240" height="19" align="left">ANCHOAS <font class="CURSIVAPEQ">(CON TOMATE O CON QUESO)</font></td>'
				carta +='				<td class="CURSIVA" width="150" height="19" align="right">4,00 €&nbsp; / 3,00€&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="240" height="19" align="left">BOQUERONES CON VINAGRE</td>'
				carta +='				<td class="CURSIVA" width="150" height="19" align="right">4,00 €&nbsp; / 3,00€&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="240" height="19" align="left">MATRIMONIO <font class="CURSIVAPEQ">(BOQUERONES Y ANCHOAS)</font></td>'
				carta +='				<td class="CURSIVA" width="150" height="19" align="right">4,00 €&nbsp; / 3,00€&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="240" height="19" align="left">LOMO ADOBADO <font class="CURSIVAPEQ">(CON TOMATE, QUESO O PIMIENTOS)</font></td>'
				carta +='				<td class="CURSIVA" width="150" height="19" align="right">4,00 €&nbsp; / 3,00€&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="240" height="19" align="left">BACON CON TOMATE</td>'
				carta +='				<td class="CURSIVA" width="150" height="19" align="right">4,00 €&nbsp; / 3,00€&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="240" height="19" align="left">BACON CON QUESO</td>'
				carta +='				<td class="CURSIVA" width="150" height="19" align="right">4,00 €&nbsp; / 3,00€&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="240" height="19" align="left">LOMO IBÉRICO</td>'
				carta +='				<td class="CURSIVA" width="150" height="19" align="right">5,50 €&nbsp; / 4,00€&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="240" height="19" align="left">TORTILLA FRANCESA</td>'
				carta +='				<td class="CURSIVA" width="150" height="19" align="right">4,00 €&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="240" height="19" align="left">TORTILLA FRANCESA <font class="CURSIVAPEQ">(CON QUESO, CHORIZO O CON JAMÓN)</font></td>'
				carta +='				<td class="CURSIVA" width="150" height="19" align="right">4,00 €&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="240" height="19" align="left">TORTILLA ESPAÑOLA</td>'
				carta +='				<td class="CURSIVA" width="150" height="19" align="right">4,00 €&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td class="CURSIVA" width="10" height="19" align="center"><spacer type="block" height="19" width="10"></td>'
				carta +='				<td class="CURSIVA" width="240" height="19" align="left">FILETE DE TERNERA <font class="CURSIVAPEQ">(CON O SIN TOMATE)</font></td>'
				carta +='				<td class="CURSIVA" width="150" height="19" align="right">6,00 €&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>'
				carta +='			</tr>'
				carta +='			<tr>'
				carta +='				<td colspan="3" align="center" height="19"><spacer type="block" height="19"></td>'
				carta +='			</tr>'
				carta +='		</table>'

      				break;
		}
		
		document.all.padre.innerHTML=carta
	}

//-->	
</script>

<br>

<!-- CUERPO DE LA CARTA -->

	<table align="center" border="0" width="400" cellpadding="0" cellspacing="0">
		
		<tr>
			<td align="center" height="3" width="1"><spacer type="block" height="3" width="1"></td>
			<td align="center" height="3"><spacer type="block" height="3"></td>
			<td align="center" height="3" width="1"><spacer type="block" height="3" width="1"></td>			
		</tr>
		<tr background="../../imagenes/carta-menu3.jpg" height="30">
			<td align="center" colspan="3">
				<table>
				<tr>
					<td align="center" class="ENCARTA" width="22%">
						<a class="ENCARTA" href="#" onclick="cambiaCarta(1)"><b>Para picar</b></a></td>
					<td align="center" class="ENCARTA" width="18%">
						<a class="ENCARTA" href="#" onclick="cambiaCarta(2)"><b>Bandejas Y Tablas</b></a></td>
					<td align="center" class="ENCARTA" width="16%">
						<a class="ENCARTA" href="#" onclick="cambiaCarta(3)"><b>Entrantes</b></a></td>
					<td align="center" class="ENCARTA" width="16%">
						<a class="ENCARTA" href="#" onclick="cambiaCarta(4)"><b>Carnes</b></a></td>
					<td align="center" class="ENCARTA" width="16%">
						<a class="ENCARTA" href="#" onclick="cambiaCarta(5)"><b>Pescados</b></a></td>
					<td align="center" class="ENCARTA" width="16%">
						<a class="ENCARTA" href="#" onclick="cambiaCarta(6)"><b>Bocadillos</b></a></td>
				</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td align="center" height="5" width="1"><spacer type="block" height="5" width="1"></td>
			<td align="center" height="5"><spacer type="block" height="5"></td>
			<td align="center" height="5" width="1"><spacer type="block" height="5" width="1"></td>			
		</tr>
	</table>



<div id="globalCarta">
	<!-- capas de las flechas de desplazamiento de las capas de texto -->
	<div id="arribaCarta"><a href="#" onmouseDown="mover(1);return false;" onmouseUp="clearTimeout(tiempo)" onmouseOut="clearTimeout(tiempo)" title="Sube" alt="Sube"><img src="../../imagenes/escudo-subir.gif" border="0"></a></div>
	<div id="scrollCarta"></div>
	<div id="abajoCarta"><a href="#" onmouseDown="mover(0);return false;" onmouseUp="clearTimeout(tiempo)" onmouseOut="clearTimeout(tiempo)" title="Baja" alt="Baja"><img src="../../imagenes/escudo-bajar.gif" border="0"></a></div>	  		  		
	
	<div id="textoCarta">

	<table align="center" border="0" width="400" cellpadding="0" cellspacing="0">
		<tr>
      			<td align="center" height="5" width="1"><spacer type="block" height="5" width="1"></td>
			<td align="center" height="5"><spacer type="block" height="5"></td>
			<td align="center" height="5" width="1"><spacer type="block" height="5" width="1"></td>
		</tr>
		<tr>
			<td align="center" height="5" width="1"><spacer type="block" height="5" width="1"></td>
			<td align="center" height="5">
				<table align="center" border="0" width="390" cellpadding="0" cellspacing="0">
					<tr>
						<td class="CABECERA"><a name="raciones" class="">&nbsp;</td>
					</tr>
					<tr>
						<td class="">
							<div id="padre"><img src="../../imagenes/carta-menu2.gif" border="0"><div>
						</td>
					</tr>
				</table>
			</td>
			<td align="center" height="5" width="1"><spacer type="block" height="5" width="1"></td>
		</tr>
		<tr>
			<td align="center" height="5" width="1"><spacer type="block" height="5" width="1"></td>
			<td align="center" height="5"><spacer type="block" height="5"></td>
			<td align="center" height="5" width="1"><spacer type="block" height="5" width="1"></td>
		</tr>

	<!-- FIN DE CUERPO DE LA CARTA -->

		<tr>
			<td align="center" height="5" width="1"><spacer type="block" height="5" width="1"></td>
			<td align="center" height="5"><spacer type="block" height="5"></td>
			<td align="center" height="5" width="1"><spacer type="block" height="5" width="1"></td>			
		</tr>
		<tr>
			<td align="center" width="1"><spacer type="block" width="1"></td>
			<td align="center" height="1"><spacer type="block" height="1"></td>
			<td align="center" width="1"><spacer type="block" width="1"></td>			
		</tr>
	</table>
<!-- FIN DE CUERPO DE LA CARTA -->
</div>	

<br>
<!-- Abro tabla principal y resto de marcos -->
<%@include file="MarcoCerrar.jsp"%>                                        
<!--  **  -->

<script language="JavaScript">
<!--

iniciaValores(100,'carta')

//-->
</script>
