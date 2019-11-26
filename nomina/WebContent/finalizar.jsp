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
		double prestamos = Double.parseDouble(request.getParameter("prestamos"));
		double embargos = Double.parseDouble(request.getParameter("embargos"));
		double fondoEmpleados = Double.parseDouble(request.getParameter("fondoEmpleados"));

		IDevengadoDao dev = new DevenegadoDaoImpl();
		Devengado devengado = dev.leerDevengado(identificacion);

		IEmpleadoDao em = new EmpleadoDaoImpl();
		Empleado e = em.leerEmpleado(identificacion);
		
		
		IDescuentoDao des = new DescuentoDaoImpl(); 
		Descuento descuento = new Descuento(e, devengado, prestamos, embargos, fondoEmpleados);
		des.crearDescuento(descuento);
	%>
	<h1>Empleado liquidado!!</h1>

</body>
</html>