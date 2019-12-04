<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Consultar Produto</title>
</head>
<body>
	<form action="consultas/ConsultarProduto">
		<label for="codigo"></label>
		<input type="text" name="codigo" required>
		<input type="submit" value="consultar">
	</form>
</body>
</html>