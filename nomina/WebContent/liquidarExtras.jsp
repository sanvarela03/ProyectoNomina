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
		double rN = Double.parseDouble(request.getParameter("recargoNocturno"));
		double eD = Double.parseDouble(request.getParameter("extraDiurna"));
		double eN = Double.parseDouble(request.getParameter("extraNocturna"));
		double eF = Double.parseDouble(request.getParameter("extraFestivo"));
		double eDF = Double.parseDouble(request.getParameter("extraDiurnoFestivo"));
		double eNF = Double.parseDouble(request.getParameter("extraNocturnoFestivo"));

		IEmpleadoDao em = new EmpleadoDaoImpl();
		Empleado e = em.leerEmpleado(identificacion);

		double horasExtras = e.recargoNocturno(rN) + e.extraDiurna(eD) + e.extraNocturna(eN) + e.extraFestivo(eF)
				+ e.extraDiurnaFestivo(eDF) + e.extraNocturnaFestivo(eNF);
	%>

	<form action="liquidarDevengados.jsp" method="post">
		<fieldset>
			<legend>Devengados:</legend>
			<br> 
			Identificación:
			<br> 
			<input type="text" name="identificacion" value="<%=identificacion%>" readonly>
			<br>
			Nombre:
			<br> 
			<input type="text" name="nombre" value="<%=nombre%>" readonly> 
			<br> 
			Horas Extras:
			<br> 
			<input type="text" name="horasExtras" value="<%=horasExtras%>" readonly>
			<br> 
			Bonificaciones:
			<br> 
			<input type="text" name="bonificaciones" value="0">
			<br> 
			Comisiones:
			<br>
			<input type="text" name="comisiones" value="0">
			<br><br><br> 
			<input type="submit" value="Continuar">
		</fieldset>
	</form>
</body>
</html>