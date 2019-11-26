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
	<h1>Empleados no liquidados</h1>
	<form action="liquidar.jsp">
		<table>
			<tr>
				<th>Identificacion</th>
				<th>Nombre</th>
				<th>Accion</th>
			</tr>

			<%
				IEmpleadoDao em = new EmpleadoDaoImpl();
				for (Empleado e : em.obtenerEmpleadosNoLiquidados()) {
			%>
			<tr id="<%=e.getIdentificacion()%>">
				<td><input type="text" name="identificacion"
					value="<%=e.getIdentificacion()%>" readonly></td>
				<td><input type="text" name="nombre" value="<%=e.getNombre()%>"
					readonly></td>
				<td><input type="submit" value="Liquidar"></td>
			</tr>
			<%
				}
			%>
		</table>
	</form>
	<h1>Empleados liquidados</h1>	<form action="liquidar.jsp">
		<table>
			<tr>
				<th>Identificacion</th>
				<th>Nombre</th>
				<th>Accion</th>
			</tr>

			<%
				for (Empleado e : em.obtenerEmpleadosLiquidados()) {
			%>
			<tr id="<%=e.getIdentificacion()%>">
				<td><input type="text" name="identificacion"
					value="<%=e.getIdentificacion()%>" readonly></td>
				<td><input type="text" name="nombre" value="<%=e.getNombre()%>"
					readonly></td>
				<td><input type="submit" value="Liquidar"></td>
			</tr>
			<%
				}
			%>
		</table>
	</form>


</body>
</html>
