<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Consulta</title>
		<meta name="description" content="Expanding Search Bar Deconstructed" />
		<meta name="keywords" content="transition, search, expanding, search input, sliding input, css3, javascript" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico"> 
		<link rel="stylesheet" type="text/css" href="css/default.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		<script src="js/modernizr.custom.js"></script>
	</head>
	<body>
		<div class="container">

			<header>
				<h1>Consultar Produto <span> Clique para expandir a busca</span></h1>
			</header>
			<div class="main clearfix">
				<!-- Optional columns for small components -->
				<div class="column">
					<p>Trabalho 4 de Engenharia de Software - Digite o código do produto para buscar</p>
					<p><a href="index.jsp">Página inicial</a></p>
				</div>
				<div class="column">
					<div id="sb-search" class="sb-search">
						<form action="consultas/ConsultarFornecedores">
							<input class="sb-search-input" placeholder="Digite a informação" type="text" value="" name="search" id="search">
							<input class="sb-search-submit" type="submit" value="">
							<span class="sb-icon-search"></span>
						</form>
					</div>
				</div>
			</div>
		</div><!-- /container -->
		<script src="js/classie.js"></script>
		<script src="js/uisearch.js"></script>
		<script>
			new UISearch( document.getElementById( 'sb-search' ) );
		</script>
	</body>
</html>