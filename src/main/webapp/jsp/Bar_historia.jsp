<%@ page import="java.util.*" %>                                                            
<HTML>     
<HEAD>    
<TITLE>Mesón Castillo</TITLE>

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
	<p class="PARRAFO_MEDIEVAL"><font class="LETRA">E</font> n un lugar de la Mancha de cuyo</p>
	<p class="PARRAFO_MEDIEVAL">nombre no quiero acordarme, no ha</p>
	<p class="PARRAFO_MEDIEVAL">mucho tiempo que vivían unos camareros</p>
	<p class="PARRAFO_MEDIEVAL">de los de patita de calamar, sonrisa profiden,</p>
	<p class="PARRAFO_MEDIEVAL">entusiasmo por doquier y simpatía en </p>
	<p class="PARRAFO_MEDIEVAL">abundancia que llegaron a tierras castellanas</p>
	<p class="PARRAFO_MEDIEVAL">a crear una magnífica posada.</p>
	<p class="PARRAFO_MEDIEVAL"><font class="LETRA">S</font> í, sí, por aquella magnífica posada.</p>
	<p class="PARRAFO_MEDIEVAL">Es, pues de saber que estos sobredichos</p>
	<p class="PARRAFO_MEDIEVAL">Hidalgos, no solo ofrecen su simpatía,</p>
	<p class="PARRAFO_MEDIEVAL">su atención y su amabilidad. Si únicamente</p>
	<p class="PARRAFO_MEDIEVAL">ofrecieran estos menesteres, seguiría siendo</p>
	<p class="PARRAFO_MEDIEVAL">un mesón cualquiera. Y no, estos gentiles</p>
	<p class="PARRAFO_MEDIEVAL">hombres vestidos con jubones verdes, calzones</p>
	<p class="PARRAFO_MEDIEVAL">negros y esa rúbrica de identidad marcada en </p>
	<p class="PARRAFO_MEDIEVAL">el pecho que lamentablemente estos hermosos </p>
	<p class="PARRAFO_MEDIEVAL">caballeros no pudieron dedicar su vida</p>
	<p class="PARRAFO_MEDIEVAL">profesional a lucir sus cuerpos en las pasarelas</p>
	<p class="PARRAFO_MEDIEVAL">(muy a su pesar, si hubieran seguido esta vía</p>
	<p class="PARRAFO_MEDIEVAL">su subsistencia hubiera corrido peligro),</p>
	<p class="PARRAFO_MEDIEVAL">decidieron hacer de su</p>
	<p class="PARRAFO_MEDIEVAL">profesión una forma de vida.</p>
	<p class="PARRAFO_MEDIEVAL"><font class="LETRA">N</font> o había follón que se escapase </p>
	<p class="PARRAFO_MEDIEVAL">de esta posada, pero no entiendan mal.</p>
	<p class="PARRAFO_MEDIEVAL">Follón quiere decir persona</p>
	<p class="PARRAFO_MEDIEVAL">vil y cobarde, porque efectivamente,</p>
	<p class="PARRAFO_MEDIEVAL">había que ser vil y cobarde</p>
	<p class="PARRAFO_MEDIEVAL">para no sentarse en tal grandiosa</p>
	<p class="PARRAFO_MEDIEVAL">para degustar una gran tapita</p>
	<p class="PARRAFO_MEDIEVAL">y un buen botellín.</p>
	<p class="PARRAFO_MEDIEVAL"><font class="LETRA">E</font> s más, el pueblo embaulaba todo sustento</p>
	<p class="PARRAFO_MEDIEVAL">alimenticio que por aquella barra asomaba.</p>
	<p class="PARRAFO_MEDIEVAL">Los más inquietos del lugar,</p>
	<p class="PARRAFO_MEDIEVAL">velozmente se apresuraron a averiguar</p>
	<p class="PARRAFO_MEDIEVAL">qué excelente cocinera era la autora</p>
	<p class="PARRAFO_MEDIEVAL">de glorioso manjar,</p>
	<p class="PARRAFO_MEDIEVAL">descubrieron que era Justi,</p>
	<p class="PARRAFO_MEDIEVAL">desde entonces supieron</p>
	<p class="PARRAFO_MEDIEVAL">que su dicha no sería igual,</p>
	<p class="PARRAFO_MEDIEVAL">debían volver a sus moradas para </p>
	<p class="PARRAFO_MEDIEVAL">comunicar a sus madres lo siguiente:</p>
	<p class="PARRAFO_MEDIEVAL">“Madre, lo siento, pero he conocido</p>
	<p class="PARRAFO_MEDIEVAL">cocinera que guisa mejor que vos”.</p>
	<p class="PARRAFO_MEDIEVAL">Desde entonces, algunos señores</p>
	<p class="PARRAFO_MEDIEVAL">quedaron desheredados, pero les dio igual.</p>
	<p class="PARRAFO_MEDIEVAL">Sabían que su verdadera casa</p>
	<p class="PARRAFO_MEDIEVAL">estaba en aquel magnífico lugar.</p>
	<p class="PARRAFO_MEDIEVAL"><font class="LETRA">M</font> uchos caballeros serranos entendieron</p>
	<p class="PARRAFO_MEDIEVAL">desde entonces que el edén debería ser</p>
	<p class="PARRAFO_MEDIEVAL">una especie de reducto con forma de Castillo,</p>
	<p class="PARRAFO_MEDIEVAL">y que por mucho que la Biblia se </p>
	<p class="PARRAFO_MEDIEVAL">empeñase en afirmar que estaba en el cielo,</p>
	<p class="PARRAFO_MEDIEVAL">estos lúcidos caballeros habían</p>
	<p class="PARRAFO_MEDIEVAL">descubierto el verdadero paraíso,</p>
	<p class="PARRAFO_MEDIEVAL">ni más ni menos que lo habían fabricado</p>
	<p class="PARRAFO_MEDIEVAL">unos mortales del linaje de los Castillo.</p>
	<p class="PARRAFO_MEDIEVAL">‘Lo bien hecho bien parece’,</p>
	<p class="PARRAFO_MEDIEVAL">cualquier cosa que se haya realizado</p>
	<p class="PARRAFO_MEDIEVAL">con tiempo y dedicación, mostrará</p>
	<p class="PARRAFO_MEDIEVAL">la impronta de lo bien hecho.</p>
	<p class="PARRAFO_MEDIEVAL"><font class="LETRA">P</font> odría ser la carta de presentación</p>
	<p class="PARRAFO_MEDIEVAL">de dicho lugar,</p>
	<p class="PARRAFO_MEDIEVAL">que es algo más que un bar.</p>
	<p class="PARRAFO_MEDIEVAL">Se trata de un aposento </p>
	<p class="PARRAFO_MEDIEVAL">para toda clase de mortal,</p>
	<p class="PARRAFO_MEDIEVAL">ya sea dama o caballero,</p>
	<p class="PARRAFO_MEDIEVAL">longevo o infante, </p>
	<p class="PARRAFO_MEDIEVAL">apuesto o feo,</p>
	<p class="PARRAFO_MEDIEVAL">alto o bajo,</p>
	<p class="PARRAFO_MEDIEVAL">deportista o borracho,</p>
	<p class="PARRAFO_MEDIEVAL">rico o pobre,</p>
	<p class="PARRAFO_MEDIEVAL">moreno o rubio,</p>
	<p class="PARRAFO_MEDIEVAL">heterosexual u homosexual</p>
	<p class="PARRAFO_MEDIEVAL">(es más, hay sospechas de que José,</p>
	<p class="PARRAFO_MEDIEVAL">no se sabe por qué, a estos últimos</p>
	<p class="PARRAFO_MEDIEVAL">les guarda un cariño especial...</p>
	<p class="PARRAFO_MEDIEVAL">¿por qué será?).</p>
	<p class="PARRAFO_MEDIEVAL">Cualquiera tiene lugar en susodicho lugar.</p>
	<p class="PARRAFO_MEDIEVAL"><font class="LETRA">N</font> o hay que darle las gracias a Dios,</p>
	<p class="PARRAFO_MEDIEVAL">sino a Jaime por crear,</p>
	<p class="PARRAFO_MEDIEVAL">hace ya 30 años magnífico paraje,</p>
	<p class="PARRAFO_MEDIEVAL">que sigue igual a su tradición.</p>
	<p class="PARRAFO_MEDIEVAL">En la actualidad, te podrás encontrar</p>
	<p class="PARRAFO_MEDIEVAL">A Teo, Javi o José y ellos con su amabilidad</p>
	<p class="PARRAFO_MEDIEVAL">habitual te harán ver la felicidad.</p>
	<p class="PARRAFO_MEDIEVAL">Porque estar en El Castillo</p>
	<p class="PARRAFO_MEDIEVAL">con tus amigos no tiene precio...</p>
	<p class="PARRAFO_MEDIEVAL">( a este bello juglar se le ha ido </p>
	<p class="PARRAFO_MEDIEVAL">la pinza), vete al Castillo</p>
	<p class="PARRAFO_MEDIEVAL">que por muy feo que seas te acogerán.</p>
	<p class="PARRAFO_MEDIEVAL">MESÓN CASTILLO</p>
	<p class="PARRAFO_MEDIEVAL"><font class="LETRA">T</font> u casa, tus amigos, para todo lo que</p>
	<p class="PARRAFO_MEDIEVAL">quieras, incluso para hacer deporte</p>
	<p class="PARRAFO_MEDIEVAL">vete a este Mesón,</p>
	<p class="PARRAFO_MEDIEVAL">un punto de encuentro llamado EL CASTILLO.</p>
	</div>
</div>	
<br>
<!-- Abro tabla principal y resto de marcos -->
<%@include file="MarcoCerrar.jsp"%>                                        
<!--  **  -->

<script language="JavaScript">
<!--

iniciaValores(2280)

//-->
</script>
