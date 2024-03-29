<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Varela" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/estilo-response/default-response.css" rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/estilo-response/fonts-response.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
<div id="wrapper">
	<div id="header-wrapper">
	<div id="header" class="container">
		<div id="logo">
			<h1><a href="#">Trabalho 4</a></h1>
		</div>
		<div id="menu">
			<ul>
				<li><a href="${pageContext.request.contextPath}/ConsultarProduto.jsp" accesskey="2" title="">Consultar Produto</a></li>
				<li><a href="${pageContext.request.contextPath}/ConsultarNota.jsp" accesskey="3" title="">Consultar Nota</a></li>
				<li><a href="${pageContext.request.contextPath}/ConsultarFornecedor.jsp" accesskey="4" title="">Consultar Fornecedor</a></li>
				<li><a href="${pageContext.request.contextPath}/ConsultarBot.jsp" accesskey="5" title="">ChatBot</a></li>
			</ul>
		</div>
	</div>
	</div>
	<div id="banner">
		<div class="container">
			<div class="title">
				<h2>Nova Nota Cadastrada</h2>
			</div>
			<ul class="actions">
				<li><a href="${pageContext.request.contextPath}/index.jsp" class="button">P�gina inicial</a></li>
			</ul>
		</div>
	</div>
	<section>
		<div id="extra" class="container">
			<p align = "justify">
			Nota cadastrada com sucesso!<br />
			C�digo da nova nota: ${notacadastrada.getIdNota()}<br />

			</p>
		</div>
	</section>
</div>
<div id="copyright" class="container">
	<p>&copy; Trabalho de Engenharia de Software. Nenhum direito reservado.</p>
</div>
</body>
</html>