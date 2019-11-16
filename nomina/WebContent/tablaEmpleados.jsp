<%@ page import="nomina.dao.*"%>
<%@ page import="nomina.model.*"%>
<%@ page import="nomina.idao.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Tabla Empleados</title>
		<style>
			table {
				font-family: arial, sans-serif;
				border-collapse: collapse;
				width: 100%;
			}

			td, th {
				border: 1px solid #dddddd;
				text-align: left;
				padding: 8px;
			}

			tr:nth-child(even) {
				background-color: #dddddd;
			}
		</style>
	</head>
	<body>
		<table>
			<tr>
			 <th>Identificacion</th>
			 <th>Nombre</th>
			 <th>Cargo</th>
			 <th>Sueldo Basico</th>
		 	</tr>
		 	
		 	<%
		 		IEmpleadoDao em = new EmpleadoDaoImpl();
		 		for(Empleado e : em.obtenerEmpleados()) {
		 	%>
		 	<tr>
		 		<td><% e.getIdentificacion(); %> </td>
		 		<td><% e.getNombre();%></td>
		 		<td><% e.getCargo(); %> </td>
		 		<td><% e.getSueldoBasico(); %></td>
		 	</tr>
			<%
		 		}
			%>
		
		</table>
			<br>
		<a href=".\agregarEmpleado.html">Agregar empleado</a>
	</body>
</html>
