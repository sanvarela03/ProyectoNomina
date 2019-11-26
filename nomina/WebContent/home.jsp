<!DOCTYPE html>
<html lang="en">
<head>
<title>Home</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="CSS/home/homeSTY.css">
<script>
	function mostrar(sw) {
		var pic;
		if (sw == 0) {
			pic = "tablaEmpleados.jsp"
		} else if (sw == 1) {
			pic = "nomina.jsp"
		} else if (sw == 2) {
			pic = "reporte.html"
		}
		document.getElementById('centro').src = pic;
	}
</script>

</head>
<body>
	<header>
		<h2>Nomina 2019</h2>
	</header>

	<section>
		<nav>
			<ul>
				<li><button type="button" onclick="mostrar(0)">Home</button></li>
				<br>
				<li><button type="button" onclick="mostrar(1)">Nomina</button></li>
				<br>
				<li><button type="button" onclick="mostrar(2)">Reporte</button></li>
				<br>
			</ul>
		</nav>
		<article>
			<iframe src="tablaEmpleados.jsp" height="250" width="920" id="centro"></iframe>
		</article>
	</section>

	<footer>
		<p>
			Santiago Varela Daza<br>Dario Garzon
		</p>
	</footer>

</body>
</html>
