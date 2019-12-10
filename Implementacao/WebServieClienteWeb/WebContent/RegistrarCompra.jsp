<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="unioeste.geral.estoque.bo.Produto" %>

<% Produto[] produtos = (Produto[]) request.getAttribute("produtos");%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Registrar Compra</title>
	<script src="../jquery.min.js"></script>
	
	<script type="text/javascript">
		var produtos = new Array();
		var quantidadeProdutos = 1;
	
		$(document).ready(function(){
			
			$("#plus").click(function(){
				quantidadeProdutos++;
				$("#quantidadeProdutosTotal").val(quantidadeProdutos);
				
				var itemcompra = '<div id ="div'+quantidadeProdutos+'" class="div"> <select id="select'+quantidadeProdutos+'" class="select" name="idproduto'+quantidadeProdutos+'" required>';

				var posicao = 0;
				$.each(produtos, function(key, value){
					itemcompra+='<option class="produtos" posicaoJS="'+quantidadeProdutos+'" posicao="'+posicao+'" id="'+value.idProduto+'" value="'+value.idProduto+'"> '+value.nomeProduto+' </option>';
					posicao++;
				});
				
				itemcompra+='</select><label for="valorunitario'+quantidadeProdutos+'">Valor unitario:</label><input id="valor'+quantidadeProdutos+'" class="valorunitario" type="number" name="valorunitario'+quantidadeProdutos+'" value="230"><label for="quantidade'+quantidadeProdutos+'">Quantidade: </label><input id="quantidade'+quantidadeProdutos+'" class="quantidade" type="number" min="1" name="quantidade'+quantidadeProdutos+'" required value="0"><label for="total'+quantidadeProdutos+'">Total: </label><input id="total'+quantidadeProdutos+'" class="total" type="number" name="total'+quantidadeProdutos+'" required value="0"></div><br>';
				
				$("#produtos").append(itemcompra);
				
			});
			$("#minus").click(function(){
				quantidadeProdutos--;
				$("#quantidadeProdutosTotal").val(quantidadeProdutos);
				$(".div").last().remove();
			});
			
			$(document).on('change','select.select', function(){
				var id = $(this).attr("id").match(/\d+/);
				var posJS = $('#select'+id+' option:selected').attr("posicaoJS");
				var pos = $('#select'+id+' option:selected').attr("posicao");
				var produto = produtos[pos];
				var inputId = '#valor'+posJS;
				
				console.log("id:  " + id);
				console.log("posJS:  " + posJS);
				console.log("pos:  " + pos);
				console.log("produto: " + produto);
				console.log("inputId: " + inputId);
				console.log("prevo venda atual: " + produto.precoVendaAtual);
				
				$(inputId).val(produto.precoVendaAtual);
				
				var preco = $("#valor"+id).val();
				var quantidade = $("#quantidade"+id).val();
				
				$("#total"+id).val(preco*quantidade);
				
				//update total nota
				var total = 0;
				$('.total').each(function(){
					total = parseFloat(total) + parseFloat($(this).val());
				});
				
				$("#totalnota").val(total);
				
				$("#valorliquido").val( $("#totalnota").val() -  $("#descontototal").val());
				
			});
			
			
			$(document).on('change','input.quantidade',function(){		
				var id = $(this).attr("id").match(/\d+/);
				var preco = $("#valor"+id).val();
				var quantidade = $(this).val();
				
				$("#total"+id).val(preco*quantidade);
				
				//update total nota
				var total = 0;
				$('.total').each(function(){
					total = parseFloat(total) + parseFloat($(this).val());
				});
				
				$("#totalnota").val(total);
				
				$("#valorliquido").val( $("#totalnota").val() -  $("#descontototal").val());
				
				
			});
			
			$(document).on('change','input.total', function(){
				//update total nota
				var total = 0;
				$('.total').each(function(){
					total = parseFloat(total) + parseFloat($(this).val());
				});
				
				$("#totalnota").val(total);
				
				$("#valorliquido").val( $("#totalnota").val() -  $("#descontototal").val());
				
			});
			
			$('#descontototal').on('change',function(){
				$("#valorliquido").val( $("#totalnota").val() -  $("#descontototal").val());
			});
			
			
			<% int countJS = 0; %>
			<% for(Produto p : produtos) { %>
					var produto = {};
					produto.idProduto = <%=p.getIdProduto()%>;
					produto.quantidadeEstoque = <%=p.getQuantidadeEstoque()%>;
					produto.precoVendaAtual = <%=p.getPrecoVendaAtual()%>;
					produto.nomeProduto ="<%=p.getNomeProduto()%>";
					
					
					produtos[<%=countJS%>] = produto;
			        <%countJS++;%>
		    <%}%>
			
			console.log(produtos);	
		});
		
		
	
	
	</script>
</head>
<body>
	<form action="../cadastros/RegistrarCompra">
		
		<label for="data">Data compra: </label>
		<input type="date" name="data" required><br>
	
		<label for="cnpj">CNPJ fornecedor: </label>
		<input type="text" name="cnpj" required><br>
		
		<div id="produtos">
			<div id ="div1" class="div">
				<select id="select1" class="select" name="idproduto1" required>
				<% int count = 0; %>
				<% for(Produto p : produtos) { %>
					<option class="produtos" posicaoJS="1" posicao="<%=count%>" id="<%=p.getIdProduto()%>" value="<%=p.getIdProduto()%>"> <%=p.getNomeProduto()%> </option>
				<% count++; %>
				<% } %>
				
				</select>
				<label for="valorunitario">Valor unitario:</label>
				<input id="valor1" class="valorunitario" type="number" name="valorunitario1" value="230">
				
				<label for="quantidade">Quantidade: </label>
				<input id="quantidade1" class="quantidade" type="number" name="quantidade1" min="1" required value="0">
				
				<label for="total">Total: </label>
				<input id="total1" class="total" type="number" name="total1" required value="0">
				
				<img id="plus" src="../plus.png"><img id="minus" src="../minus.png">
			</div>
			
			<br>
		</div>
		<br>
		
		<label for="totalnota">Total nota: </label>
		<input type="number" name="totalnota" id="totalnota" required><br>
		
		<label for="descontototal">Desconto total: </label>
		<input type="number" name="descontototal" min="0" required id="descontototal"><br>
		
		<label for="valorliquido">Valor liquido: </label>
		<input type="number" name="valorliquido" required id="valorliquido"><br>
		
		<input type="hidden" value="1" id="quantidadeProdutosTotal" name="quantidadeProdutosTotal">
		
		<input type="submit" value="Registrar">
	</form>
</body>
</html>