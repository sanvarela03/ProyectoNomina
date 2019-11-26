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
	<h1>Reporte</h1>

	<table>
		<tr>

			<th>Nombre</th>
			<th>Sueldo Basico</th>
			<th>Auxilio Transporte</th>
			<th>Horas Extra</th>
			<th>Bonificaciones</th>
			<th>Comisiones</th>
			<th>Salud</th>
			<th>Pension</th>
			<th>Prestamos</th>
			<th>Embargos</th>
			<th>Fondo Empleados</th>
		</tr>

		<%
			ITablaReporteDao tb = new TablaReporteDaoImpl();
			for (TablaReporte t : tb.obtenerTablaReporte()) {
		%>
		<tr>
			<td><%=t.getNombreEmpleado()%></td>

			<td><%=t.getSueldoBasico()%></td>

			<td><%=t.getAuxilioTransporte()%></td>

			<td><%=t.getHorasExtra()%></td>

			<td><%=t.getBonificaciones()%></td>

			<td><%=t.getComisiones()%></td>

			<td><%=t.getSalud()%></td>

			<td><%=t.getPension()%></td>

			<td><%=t.getPrestamos()%></td>

			<td><%=t.getEmbargos()%></td>

			<td><%=t.getFondoEmpleados()%></td>
		</tr>
		<%
			}
		%>
	</table>

	<br>

</body>
</html>