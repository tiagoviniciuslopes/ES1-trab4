<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
				<h2>Mostrar Notas</h2>
			</div>
			<ul class="actions">
				<li><a href="${pageContext.request.contextPath}/index.jsp" class="button">Página inicial</a></li>
			</ul>
		</div>
	</div>
	<section>
		<div id="extra" class="container">
			<p align = "justify">
			ID: ${notacompra.getIdNota()}<br />
			Data nota: ${notacompra.getStringData()}<br />
			Total: ${notacompra.getTotalNota()}<br />		
			Desconto: ${notacompra.getDescontoTotal()}<br />
			Total Líquido: ${notacompra.getValorLiquido()}<br />
			Fornecedor: ${notacompra.getFornecedor().getNomeCompleto()}<br />
			CNPJ: ${notacompra.getFornecedor().getCnpj().getNumeroDoc()}<br />
			[Itens Comprados]			</p>
			<table>
			    <c:forEach items="${itemcompra}" var="item">
			        <tr>
			            <td>Produto: <c:out value="${item.getProduto().getNomeProduto()}"/></td>
			            <td>Quantidade: <c:out value="${item.getQuantidade()}"/></td>
			            <td>Unitário: <c:out value="${item.getPrecoUnitario()}"/></td>   
			        </tr>
			    </c:forEach>
			</table>

		</div>
	</section>
</div>
<div id="copyright" class="container">
	<p>&copy; Trabalho de Engenharia de Software. Nenhum direito reservado.</p>
</div>
</body>
</html>