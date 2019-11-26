<%@ page import="nomina.dao.*"%>
<%@ page import="nomina.model.*"%>
<%@ page import="nomina.idao.*"%>
<html>
<head>
</head>
<body>
	
	<%
		String identificacion  = request.getParameter("identificacion");
		String nombre = request.getParameter("nombre");
		String cargo = request.getParameter("cargo");
		double sueldoBasico = Double.parseDouble(request.getParameter("sueldoBasico"));
		
		IEmpleadoDao em = new EmpleadoDaoImpl();
		em.crearEmpleado(new Empleado(identificacion,nombre,cargo,sueldoBasico));
	%>
		
	
	<h1>Usuario agregado</h1>
	<br>
	Identificacion: <%=request.getParameter("identificacion") %><br>
	Nombre: <%=request.getParameter("nombre") %><br>
	Cargo: <%=request.getParameter("cargo") %><br>
	Sueldo Basico: <%=request.getParameter("sueldoBasico") %><br>

</body>
</html>