<%@ page import="java.util.*" %>     
<HTML>     
<HEAD>    
<TITLE>Mes�n Castillo</TITLE>

<!-- Abro tabla principal y resto de marcos -->
<%@include file="Marco.jsp"%>       
<!--  **  -->

<br>

<div id="global">
	<!-- capas de las flechas de desplazamiento de las capas de texto -->
	<div id="arriba"><a href="#" onmouseDown="mover(1);return false;" onmouseUp="clearTimeout(tiempo)" onmouseOut="clearTimeout(tiempo)" title="Sube" alt="Sube"><img src="../../imagenes/escudo-subir.gif" border="0"></a></div>
	<div id="scroll"></div>
	<div id="abajo"><a href="#" onmouseDown="mover(0);return false;" onmouseUp="clearTimeout(tiempo)" onmouseOut="clearTimeout(tiempo)" title="Baja" alt="Baja"><img src="../../imagenes/escudo-bajar.gif" border="0"></a></div>	  		  		
		
	<div id="texto">
	<p class="PARRAFO_MEDIEVAL"><font class="LETRA">B</font> ienvenido a la web del Mes�n Castillo.</p>
	<p class="PARRAFO_MEDIEVAL">Es de siempre conocido nuestro af�n</p>
	<p class="PARRAFO_MEDIEVAL">por no ser un simple bar, nos encanta</p>
	<p class="PARRAFO_MEDIEVAL">que adem�s de disfrutar de nuestra comida</p>
	<p class="PARRAFO_MEDIEVAL">y bebida tengas la posibilidad de participar</p>
	<p class="PARRAFO_MEDIEVAL">con nosotros mediante el deporte, fotos,</p>
	<p class="PARRAFO_MEDIEVAL">anuncios, notitas, pizarras y fiestas.</p>
	<p class="PARRAFO_MEDIEVAL"><font class="LETRA">P</font> ero hemos querido dar un paso m�s</p>
	<p class="PARRAFO_MEDIEVAL">con el lanzamiento de nuestra web. </p>
	<p class="PARRAFO_MEDIEVAL">Una web que, al igual que el bar,</p> 
	<p class="PARRAFO_MEDIEVAL">no se limita a darte unos cuantos datos</p>
	<p class="PARRAFO_MEDIEVAL">corporativos, sino que intenta que participes</p>
	<p class="PARRAFO_MEDIEVAL">en ella, que te relaciones con los dem�s clientes</p>
	<p class="PARRAFO_MEDIEVAL">y con nosotros a cualquier hora del d�a y</p>
	<p class="PARRAFO_MEDIEVAL">est�s donde est�s. Para ello, dispondr�s</p> 
	<p class="PARRAFO_MEDIEVAL">pr�ximamente de foros, encuestas, y m�s sorpresas.</p> 
	<p class="PARRAFO_MEDIEVAL"><font class="LETRA">A</font> gradecer�amos tu ayuda a mejorarla,</p>
	<p class="PARRAFO_MEDIEVAL">por lo que aceptamos cualquier sugerencia,</p>
	<p class="PARRAFO_MEDIEVAL">ya sea a trav�s de correo electr�nico o</p>
	<p class="PARRAFO_MEDIEVAL">directamente en el bar.</p>
	<p class="PARRAFO_MEDIEVAL"><font class="LETRA">E</font> speramos que la disfrutes y que te lo sigas</p>
	<p class="PARRAFO_MEDIEVAL">pasando muy bien en el Mes�n Castillo.</p>
	</div>
</div>	

<br>
<!-- Abro tabla principal y resto de marcos -->
<%@include file="MarcoCerrar.jsp"%>                                        
<!--  **  -->

<script language="JavaScript">
<!--

iniciaValores(550)

//-->
</script>
