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

	<style>
		b	{
			color: green;
		}	
	</style>
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
			<th>Total Devengado</th>
			<!-- Descuentos -->
			<th>Salud</th>
			<th>Pension</th>
			<th>Prestamos</th>
			<th>Embargos</th>
			<th>Fondo Empleados</th>
			<th>Total Descuentos y deducciones</th>
		</tr>

		<%
			
			//Devengados
			double globalSueldoBasico = 0;
			double globalAuxilioTransporte = 0;
			double globalHorasExtra = 0;
			double globalBonificaciones = 0;
			double globalComisiones = 0;
			double globalDevengado = 0;
			
			//Descuentos
			double globalSalud = 0;
			double globalPension = 0;
			double globalPrestamos = 0;
			double globalEmbargos = 0;
			double globalFondoEmpleados = 0;
			double globalDescuentos = 0;
			
			
			
			ITablaReporteDao tb = new TablaReporteDaoImpl();
			for (TablaReporte t : tb.obtenerTablaReporte()) {
		%>
		<tr>
			<!-- Devengados -->
			
			<td><%=t.getNombreEmpleado()%></td>

			<td><%=t.getSueldoBasico()%></td>

			<td><%=t.getAuxilioTransporte()%></td>

			<td><%=t.getHorasExtra()%></td>

			<td><%=t.getBonificaciones()%></td>

			<td><%=t.getComisiones()%></td>
			
			<%
				double totalDevengados =t.getSueldoBasico()+t.getAuxilioTransporte()+t.getHorasExtra()+t.getBonificaciones()+t.getComisiones();
				
				globalSueldoBasico += t.getSueldoBasico();
				globalAuxilioTransporte += t.getAuxilioTransporte();
				globalHorasExtra += t.getHorasExtra();
				globalBonificaciones += t.getBonificaciones();
				globalComisiones += t.getComisiones();
				globalDevengado += totalDevengados;
			%>
			
			<td><%=totalDevengados%></td>
			<!-- Descuentos -->
				
			<td><%=t.getSalud()%></td>

			<td><%=t.getPension()%></td>

			<td><%=t.getPrestamos()%></td>

			<td><%=t.getEmbargos()%></td>

			<td><%=t.getFondoEmpleados()%></td>
			<%
				double totalDescuentos = t.getSalud()+t.getPension()+t.getPrestamos()+t.getEmbargos();
				
				globalSalud += t.getSalud();
				globalPension += t.getPension();
				globalPrestamos += t.getPrestamos();
				globalEmbargos += t.getEmbargos();
				globalFondoEmpleados += t.getFondoEmpleados();
				globalDescuentos += totalDescuentos;
				
				
			%>
			
			<td><%=totalDescuentos%></td>
		</tr>
		<%
			}
		%>
		<tr>
			<td></td>
			<td><b><%=globalSueldoBasico%></b></td>
			<td><b><%=globalAuxilioTransporte%></b></td>
			<td><b><%=globalHorasExtra%></b></td>
			<td><b><%=globalBonificaciones%></b></td>
			<td><b><%=globalComisiones%></b></td>
			<td><b><%=globalDevengado%></b></td>
			
			<!-- Descuentos -->
			
			<td><b><%=globalSalud%></b></td>
			<td><b><%=globalPension%></b></td>
			<td><b><%=globalPrestamos%></b></td>
			<td><b><%=globalEmbargos%></b></td>
			<td><b><%=globalFondoEmpleados%></b></td>
			<td><b><%=globalDescuentos%></b></td>		
		</tr>
	</table>
	<br>
	
	<!--
	<%
		double pension = (globalDevengado-globalAuxilioTransporte-globalBonificaciones)*0.12;
	%>
	
	<h1>Aportes por parte de la empresa</h1>
	<table>
		<tr>
			<th>Salud</th>
			<th>Pension</th>
			<th>Riesgo Profesional</th>
			<th>Caja de compensacion</th>
			<th>ICBF</th>
			<th>Sena</th>
		</tr>
		<tr>
			<td></td>
			<td><% %></td>		
		</tr>
	</table>
	
	<h1>Prestaciones Sociales</h1>
	<table>
		<tr>
			<th>Cesantias</th>
			<th>Intereses sobre cesantias</th>
			<th>Prima de servicios</th>
			<th>Vacaciones</th>
		</tr>
		
		<tr>		
		</tr>
	</table>
	-->
</body>
</html>