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
		
		
		
		
		
		IDevengadoDao dev =new DevenegadoDaoImpl();
		Devengado devengado = dev.leerDevengado(identificacion);
		
		IEmpleadoDao em = new EmpleadoDaoImpl();
		Empleado e = em.leerEmpleado(identificacion);	
		
		e.setEstado("liquidado");
		em.actualizarEmpleado(e);
		
		Descuento descuento = new Descuento(e, devengado);
		
		%>
		<h1>Liquidar Descuentos</h1>
		<form action="finalizar.jsp" method="post">
		<fieldset>
			<legend>Descuentos y deducciones:</legend>
			<br> 
			Identificación:
			<br> 
			<input type="text" name="identificacion" value="<%=e.getIdentificacion()%>" readonly>
			<br>
			Nombre:
			<br> 
			<input type="text" name="nombre" value="<%=e.getNombre()%>" readonly> 
			<br>
			Salud:
			<br> 
			<input type="text" name="salud" value="<%=descuento.getSalud()%>" readonly> 
			<br>  
			Pension:
			<br> 
			<input type="text" name="pension" value="<%=descuento.getPension()%>" readonly>
			<br> 
			Prestamos:
			<br> 
			<input type="text" name="prestamos" value="0">
			<br> 
			Embargos:
			<br>
			<input type="text" name="embargos" value="0">
			<br>
			Fondo Empleados:
			<br> 
			<input type="text" name="fondoEmpleados" value="0">
			<br> 
			<br><br> 
			<input type="submit" value="Finalizar">
		</fieldset>
	</form>
	
	</body>	
</html>