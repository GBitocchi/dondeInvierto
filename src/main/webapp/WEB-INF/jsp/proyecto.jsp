<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="">
		<meta name="author" content="">
		<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="resources/css/web/styles.css" rel="stylesheet">
		<title>Inicio - dondeInvierto</title>
	</head>

	<body>

		<!-- Menu -->
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
						<!-- Icon Navbar Collapsed -->
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
						</button>
						<!-- NavBar Logo-->
						<a class="navbar-brand" href="#">Menu principal</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">					
						<li><a href="inicio.html">Inicio</a></li>
						<c:if test="${usuario.getRango()==0}">
							<li><a href="proyecto.html">Proyecto</a></li>
						</c:if>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Cuentas<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Consultar cuentas</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Indicadores<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Consultar indicadores</a></li>
								<li><a href="#">Gesti�n indicadores</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Metodolog�as<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Consultar metodolog�as</a></li>
								<li><a href="#">Gesti�n metodolog�as</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</nav>

		<!-- Container -->
		<div class="container theme-showcase" role="main">

			<!-- DivInfo -->
			<div class="jumbotron">
				<h1>Cargar Proyecto.</h1>
				<p>Cargue un archivo ".csv" para reemplazar los datos del proyecto sobre los cuales trabajan los usuarios.</p>
			</div>
			
			<form method="post" action="generarProyecto.html" enctype="multipart/form-data">
				<div class="form-group">
					<label for="exampleInputFile">Archivo</label>
					<input type="file" name="file" id="exampleInputFile">
					<p class="help-block">Debe ser archivo de extensi�n ".csv" </p>
				</div>
				<input type="submit" value="Cargar CSV">
			</form>

			<!-- jQuery -->
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
			<!-- Bootstrap js -->
			<script src="bootstrap/js/bootstrap.min.js"></script>
		
		</div>
		
	</body>

</html>