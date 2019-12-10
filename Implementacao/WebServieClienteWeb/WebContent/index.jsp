<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Menu</title>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/estilo-menu.css">
	<script src="js/estilo-js.js" type="text/javascript"></script>
</head>
<body>
	<div id="menu">
			<div class="hamburger">
				<div class="line"></div>
				<div class="line"></div>
				<div class="line"></div>
			</div>
			<div class="menu-inner">
				
				<ul>
					
					
					
					<li><a href="ConsultarFornecedor.jsp">Consultar fornecedor por id</a></li>
					<li><a href="ConsultarNota.jsp">Consultar nota por codigo</a><br></li>
					<li><a href="ConsultarProduto.jsp">Consultar produto por codigo</a></li>
					<li>
							<form id="my_form" action="helpers/		HelperRegistrarCompra">
								<a href="javascript:{}" onclick="document.getElementById('my_form').					submit();">Registrar compra</a><br>
							</form>
					</li>
				</ul>
			</div>
	  
	  
			
			<svg version="1.1" id="blob"xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
				<path id="blob-path" d="M60,500H0V0h60c0,0,20,172,20,250S60,900,60,500z"/>
			</svg>
		</div>


	<h2> ESCOLHA A OPÇÃO </h2>
</body>
</html>