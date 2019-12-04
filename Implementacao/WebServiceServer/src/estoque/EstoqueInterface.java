package estoque;

import java.util.ArrayList;

import javax.jws.WebMethod;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;
import javax.jws.soap.SOAPBinding.Style;

import unioeste.geral.estoque.bo.Fornecedor;
import unioeste.geral.estoque.bo.NotaCompra;
import unioeste.geral.estoque.bo.Produto;
 
@WebService
@SOAPBinding(style = Style.RPC)
public interface EstoqueInterface {
	@WebMethod public Fornecedor consultarFornecedorPorId(Fornecedor f) throws Exception;
	@WebMethod public Fornecedor consultarFornecedor(Fornecedor f) throws Exception;
	@WebMethod public NotaCompra consultarNota(NotaCompra nc) throws Exception;
	@WebMethod public NotaCompra registrarCompra(NotaCompra notaCompra) throws Exception;
	@WebMethod public Produto consultarProduto(Produto p) throws Exception;
	@WebMethod public ArrayList<Produto> consultarTodosProdutos() throws Exception;
	
}
