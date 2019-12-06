package estoque;

import javax.jws.WebService;

import unioeste.geral.estoque.bo.Fornecedor;
import unioeste.geral.estoque.bo.NotaCompra;
import unioeste.geral.estoque.bo.Produto;
import unioeste.geral.estoque.manager.UCFornecedorServicos;
import unioeste.geral.estoque.manager.UCNotaCompraServicos;
import unioeste.geral.estoque.manager.UCProdutoServicos;

@WebService(endpointInterface = "estoque.EstoqueInterface")
public class EstoqueImplementacao implements EstoqueInterface {

	
	public Fornecedor consultarFornecedorPorId(Fornecedor f) throws Exception {
		UCFornecedorServicos uc = new UCFornecedorServicos();
		return uc.consultarFornecedorPorId(f);
	}

	
	public NotaCompra consultarNota(NotaCompra nc) throws Exception {
		// TODO Auto-generated method stub
		UCNotaCompraServicos uc = new UCNotaCompraServicos();
		return uc.consultarNota(nc);
	}


	@Override
	public Fornecedor consultarFornecedor(Fornecedor f) throws Exception {
		// TODO Auto-generated method stub
		UCFornecedorServicos uc = new UCFornecedorServicos();
		return uc.consultarFornecedor(f);
	}


	@Override
	public NotaCompra registrarCompra(NotaCompra notaCompra) throws Exception {
		// TODO Auto-generated method stub
		UCNotaCompraServicos uc = new UCNotaCompraServicos();
		return uc.registrarCompra(notaCompra);
	}


	@Override
	public Produto consultarProduto(Produto p) throws Exception {
		// TODO Auto-generated method stub
		UCProdutoServicos us = new UCProdutoServicos();
		return us.consultarProduto(p);
	}


	@Override
	public Produto[] consultarTodosProdutos() throws Exception {
		// TODO Auto-generated method stub
		UCProdutoServicos us = new UCProdutoServicos();
		return us.consultarTodosProdutos();
	}

}
