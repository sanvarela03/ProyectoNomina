<%@ page import="nomina.dao.*"%>
<%@ page import="nomina.model.*"%>
<%@ page import="nomina.idao.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Tabla Empleados</title>
<link rel="stylesheet" href="CSS/tabla/tablaSTY.css">
</head>
<body>
	<h1>Empleados</h1>
	<form action="borrar.jsp">
		<table>
			<tr>
				<th>Identificacion</th>
				<th>Nombre</th>
				<th>Cargo</th>
				<th>Sueldo Basico</th>
				<th>Accion</th>
			</tr>

			<%
				IEmpleadoDao em = new EmpleadoDaoImpl();
				for (Empleado e : em.obtenerEmpleados()) {
			%>
			<tr id="<%=e.getIdentificacion()%>">
				<td><input type="text" name="identificacion"
					value="<%=e.getIdentificacion()%>" readonly></td>
				<td><input type="text" name="nombre" value="<%=e.getNombre()%>"
					readonly></td>
				<td><input type="text" name="cargo" value="<%=e.getCargo()%>"
					readonly></td>
				<td><input type="text" name="sueldoBasico"
					value="<%=e.getSueldoBasico()%>" readonly></td>
				<td><input type="submit" value="Eliminar"></td>
			</tr>
			<%
				}
			%>
		</table>
	</form>
	<br>
	<a href=".\agregarEmpleado.html">Agregar empleado</a>
</body>
</html>
