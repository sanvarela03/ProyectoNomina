<%@ page import="nomina.dao.*"%>
<%@ page import="nomina.model.*"%>
<%@ page import="nomina.idao.*"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
	<%
		String identificacion = request.getParameter("identificacion");
		String nombre = request.getParameter("nombre");
	%>
	<form action="liquidarExtras.jsp" method="post">
	  <fieldset>
	    <legend>Liquidacion de horas extras:</legend>
	    <br>
	    Identificación:
	    <br>
	    <input type="text" name="identificacion" value="<%=identificacion%>" readonly>
	    <br>
	    Nombre:
	    <br>
	    <input type="text" name="nombre" value="<%=nombre%>" readonly>
	     <br>   
	    Recargo Nocturno:
	    <br>
	    <input type="text" name="recargoNocturno" value="0"> h
	    <br>
	    Extra Diurna:
	    <br>
	    <input type="text" name="extraDiurna" value="0"> h
	    <br>
	    Extra Nocturna:
	    <br>
	    <input type="text" name="extraNocturna" value="0"> h
	    <br>
	    Extra Festivo:
	    <br>
	    <input type="text" name="extraFestivo" value="0"> h
	    <br>
	    Extra Diurno Festivo:
	    <br>
	    <input type="text" name="extraDiurnoFestivo" value="0"> h
	    <br>
	    Extra Nocturno Festivo:
	    <br>
	    <input type="text" name="extraNocturnoFestivo" value="0"> h
	    <br><br>
	    <input type="submit" value="Continuar">
	  </fieldset>
	</form>
</body>
</html>