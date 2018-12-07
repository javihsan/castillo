<% String img = request.getParameter("img"); %>
<center>
<% if (img.equals("plano")){ %>
<img src="../../imagenes/plano.jpg" border="0">
<% } else if (img.equals("recorridoZoco")){ %>
<table width="550" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="550" height="400">
      <param name="movie" value="../../fotos/recorridoZoco.swf">
      <param name="quality" value="high">
      <embed src="../../imagenes/recorridoZoco.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="550" height="400"></embed>
    </object></td>
  </tr>
</table>
<% } %>
</center>