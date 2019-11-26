<%@page import="nomina.dao.DevenegadoDaoImpl"%>
<%@page import="nomina.idao.IDevengadoDao"%>
<%@page import="nomina.dao.EmpleadoDaoImpl"%>
<%@page import="nomina.idao.IEmpleadoDao"%>
<%@page import="nomina.model.*" %>
<!DOCTYPE html>
<html>
	<head>
	
	</head>
	
	<body>
		<%
		String identificacion = request.getParameter("identificacion");
		String nombre = request.getParameter("nombre");
		double horasExtras = Double.parseDouble(request.getParameter("horasExtras"));
		double bonificaciones = Double.parseDouble(request.getParameter("bonificaciones"));
		double comisiones = Double.parseDouble(request.getParameter("comisiones"));
		
		IEmpleadoDao em = new EmpleadoDaoImpl();
		Empleado e = em.leerEmpleado(identificacion);
		
		IDevengadoDao dev = new DevenegadoDaoImpl();
		Devengado d = new Devengado(e,horasExtras,bonificaciones,comisiones);
		dev.crearDevengado(d);
		
		
		%>
		<form action="liquidarDescuentos.jsp" method="post">
		<fieldset>
			<legend>Devengados:</legend>
			<br> 
			Identificación:
			<br> 
			<input type="text" name="identificacion" value="<%=e.getIdentificacion()%>" readonly>
			<br>
			Nombre:
			<br> 
			<input type="text" name="nombre" value="<%=e.getNombre()%>" readonly> 
			<br>
			Sueldo Basico:
			<br> 
			<input type="text" name="sueldoBasico" value="<%=e.getSueldoBasico()%>" readonly> 
			<br>  
			Auxilio de transporte:
			<br> 
			<input type="text" name="horasExtras" value="<%=d.getAuxilioTransporte()%>" readonly>
			<br> 
			Horas Extra:
			<br> 
			<input type="text" name="bonificaciones" value="<%=d.getHorasExtra()%>">
			<br> 
			Bonificaciones:
			<br>
			<input type="text" name="comisiones" value="<%=d.getBonificaciones()%>">
			<br>
			Comisiones:
			<br> 
			<input type="text" name="bonificaciones" value="<%=d.getComisiones()%>">
			<br> 
			<br><br> 
			<input type="submit" value="Continuar">
		</fieldset>
	</form>
	
	</body>	
</html>