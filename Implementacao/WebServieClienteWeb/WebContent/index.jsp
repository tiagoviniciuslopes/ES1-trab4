<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Index</title>
	<script src="jquery.min.js"></script>
</head>
<body>
	<a href="ConsultarFornecedor.jsp">Consultar fornecedor por id</a><br>
	<a href="ConsultarNota.jsp">Consultar nota por codigo</a><br>
	<a href="ConsultarProduto.jsp">Consultar produto por codigo</a><br>
	
	<form id="my_form" action="helpers/HelperRegistrarCompra">
		<a href="javascript:{}" onclick="document.getElementById('my_form').submit();">Registrar compra</a><br>
	</form>
		
</body>
</html>