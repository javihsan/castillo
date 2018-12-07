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
	<p class="PARRAFO_MEDIEVAL"><font class="LETRA">E</font> n un lugar de la Mancha de cuyo</p>
	<p class="PARRAFO_MEDIEVAL">nombre no quiero acordarme, no ha</p>
	<p class="PARRAFO_MEDIEVAL">mucho tiempo que viv�an unos camareros</p>
	<p class="PARRAFO_MEDIEVAL">de los de patita de calamar, sonrisa profiden,</p>
	<p class="PARRAFO_MEDIEVAL">entusiasmo por doquier y simpat�a en </p>
	<p class="PARRAFO_MEDIEVAL">abundancia que llegaron a tierras castellanas</p>
	<p class="PARRAFO_MEDIEVAL">a crear una magn�fica posada.</p>
	<p class="PARRAFO_MEDIEVAL"><font class="LETRA">S</font> �, s�, por aquella magn�fica posada.</p>
	<p class="PARRAFO_MEDIEVAL">Es, pues de saber que estos sobredichos</p>
	<p class="PARRAFO_MEDIEVAL">Hidalgos, no solo ofrecen su simpat�a,</p>
	<p class="PARRAFO_MEDIEVAL">su atenci�n y su amabilidad. Si �nicamente</p>
	<p class="PARRAFO_MEDIEVAL">ofrecieran estos menesteres, seguir�a siendo</p>
	<p class="PARRAFO_MEDIEVAL">un mes�n cualquiera. Y no, estos gentiles</p>
	<p class="PARRAFO_MEDIEVAL">hombres vestidos con jubones verdes, calzones</p>
	<p class="PARRAFO_MEDIEVAL">negros y esa r�brica de identidad marcada en </p>
	<p class="PARRAFO_MEDIEVAL">el pecho que lamentablemente estos hermosos </p>
	<p class="PARRAFO_MEDIEVAL">caballeros no pudieron dedicar su vida</p>
	<p class="PARRAFO_MEDIEVAL">profesional a lucir sus cuerpos en las pasarelas</p>
	<p class="PARRAFO_MEDIEVAL">(muy a su pesar, si hubieran seguido esta v�a</p>
	<p class="PARRAFO_MEDIEVAL">su subsistencia hubiera corrido peligro),</p>
	<p class="PARRAFO_MEDIEVAL">decidieron hacer de su</p>
	<p class="PARRAFO_MEDIEVAL">profesi�n una forma de vida.</p>
	<p class="PARRAFO_MEDIEVAL"><font class="LETRA">N</font> o hab�a foll�n que se escapase </p>
	<p class="PARRAFO_MEDIEVAL">de esta posada, pero no entiendan mal.</p>
	<p class="PARRAFO_MEDIEVAL">Foll�n quiere decir persona</p>
	<p class="PARRAFO_MEDIEVAL">vil y cobarde, porque efectivamente,</p>
	<p class="PARRAFO_MEDIEVAL">hab�a que ser vil y cobarde</p>
	<p class="PARRAFO_MEDIEVAL">para no sentarse en tal grandiosa</p>
	<p class="PARRAFO_MEDIEVAL">para degustar una gran tapita</p>
	<p class="PARRAFO_MEDIEVAL">y un buen botell�n.</p>
	<p class="PARRAFO_MEDIEVAL"><font class="LETRA">E</font> s m�s, el pueblo embaulaba todo sustento</p>
	<p class="PARRAFO_MEDIEVAL">alimenticio que por aquella barra asomaba.</p>
	<p class="PARRAFO_MEDIEVAL">Los m�s inquietos del lugar,</p>
	<p class="PARRAFO_MEDIEVAL">velozmente se apresuraron a averiguar</p>
	<p class="PARRAFO_MEDIEVAL">qu� excelente cocinera era la autora</p>
	<p class="PARRAFO_MEDIEVAL">de glorioso manjar,</p>
	<p class="PARRAFO_MEDIEVAL">descubrieron que era Justi,</p>
	<p class="PARRAFO_MEDIEVAL">desde entonces supieron</p>
	<p class="PARRAFO_MEDIEVAL">que su dicha no ser�a igual,</p>
	<p class="PARRAFO_MEDIEVAL">deb�an volver a sus moradas para </p>
	<p class="PARRAFO_MEDIEVAL">comunicar a sus madres lo siguiente:</p>
	<p class="PARRAFO_MEDIEVAL">�Madre, lo siento, pero he conocido</p>
	<p class="PARRAFO_MEDIEVAL">cocinera que guisa mejor que vos�.</p>
	<p class="PARRAFO_MEDIEVAL">Desde entonces, algunos se�ores</p>
	<p class="PARRAFO_MEDIEVAL">quedaron desheredados, pero les dio igual.</p>
	<p class="PARRAFO_MEDIEVAL">Sab�an que su verdadera casa</p>
	<p class="PARRAFO_MEDIEVAL">estaba en aquel magn�fico lugar.</p>
	<p class="PARRAFO_MEDIEVAL"><font class="LETRA">M</font> uchos caballeros serranos entendieron</p>
	<p class="PARRAFO_MEDIEVAL">desde entonces que el ed�n deber�a ser</p>
	<p class="PARRAFO_MEDIEVAL">una especie de reducto con forma de Castillo,</p>
	<p class="PARRAFO_MEDIEVAL">y que por mucho que la Biblia se </p>
	<p class="PARRAFO_MEDIEVAL">empe�ase en afirmar que estaba en el cielo,</p>
	<p class="PARRAFO_MEDIEVAL">estos l�cidos caballeros hab�an</p>
	<p class="PARRAFO_MEDIEVAL">descubierto el verdadero para�so,</p>
	<p class="PARRAFO_MEDIEVAL">ni m�s ni menos que lo hab�an fabricado</p>
	<p class="PARRAFO_MEDIEVAL">unos mortales del linaje de los Castillo.</p>
	<p class="PARRAFO_MEDIEVAL">�Lo bien hecho bien parece�,</p>
	<p class="PARRAFO_MEDIEVAL">cualquier cosa que se haya realizado</p>
	<p class="PARRAFO_MEDIEVAL">con tiempo y dedicaci�n, mostrar�</p>
	<p class="PARRAFO_MEDIEVAL">la impronta de lo bien hecho.</p>
	<p class="PARRAFO_MEDIEVAL"><font class="LETRA">P</font> odr�a ser la carta de presentaci�n</p>
	<p class="PARRAFO_MEDIEVAL">de dicho lugar,</p>
	<p class="PARRAFO_MEDIEVAL">que es algo m�s que un bar.</p>
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
	<p class="PARRAFO_MEDIEVAL">(es m�s, hay sospechas de que Jos�,</p>
	<p class="PARRAFO_MEDIEVAL">no se sabe por qu�, a estos �ltimos</p>
	<p class="PARRAFO_MEDIEVAL">les guarda un cari�o especial...</p>
	<p class="PARRAFO_MEDIEVAL">�por qu� ser�?).</p>
	<p class="PARRAFO_MEDIEVAL">Cualquiera tiene lugar en susodicho lugar.</p>
	<p class="PARRAFO_MEDIEVAL"><font class="LETRA">N</font> o hay que darle las gracias a Dios,</p>
	<p class="PARRAFO_MEDIEVAL">sino a Jaime por crear,</p>
	<p class="PARRAFO_MEDIEVAL">hace ya 30 a�os magn�fico paraje,</p>
	<p class="PARRAFO_MEDIEVAL">que sigue igual a su tradici�n.</p>
	<p class="PARRAFO_MEDIEVAL">En la actualidad, te podr�s encontrar</p>
	<p class="PARRAFO_MEDIEVAL">A Teo, Javi o Jos� y ellos con su amabilidad</p>
	<p class="PARRAFO_MEDIEVAL">habitual te har�n ver la felicidad.</p>
	<p class="PARRAFO_MEDIEVAL">Porque estar en El Castillo</p>
	<p class="PARRAFO_MEDIEVAL">con tus amigos no tiene precio...</p>
	<p class="PARRAFO_MEDIEVAL">( a este bello juglar se le ha ido </p>
	<p class="PARRAFO_MEDIEVAL">la pinza), vete al Castillo</p>
	<p class="PARRAFO_MEDIEVAL">que por muy feo que seas te acoger�n.</p>
	<p class="PARRAFO_MEDIEVAL">MES�N CASTILLO</p>
	<p class="PARRAFO_MEDIEVAL"><font class="LETRA">T</font> u casa, tus amigos, para todo lo que</p>
	<p class="PARRAFO_MEDIEVAL">quieras, incluso para hacer deporte</p>
	<p class="PARRAFO_MEDIEVAL">vete a este Mes�n,</p>
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
