package unioeste.geral.estoque.manager;

import java.util.ArrayList;

import unioeste.apoio.BD.SQLConnector;
import unioeste.geral.estoque.bo.Produto;
import unioeste.geral.estoque.col.ColProduto;

public class UCProdutoServicos {

	public Produto consultarProduto(Produto p) throws Exception{
		ColProduto colProduto = new ColProduto();
		UCFornecedorServicos ucFornecedorServico = new UCFornecedorServicos();
		SQLConnector connector = new SQLConnector();
		
		p = colProduto.consultarProduto(p, connector);
		p.setFornecedor(ucFornecedorServico.consultarFornecedorPorId(p.getFornecedor()));
		
		connector.close();
		return p;
	}
	
	public Produto[] consultarTodosProdutos() throws Exception{
		ColProduto colProduto = new ColProduto();
		SQLConnector connector = new SQLConnector();
		
		ArrayList<Produto> produtos = colProduto.consultarTodosProdutos(connector);
		
		connector.close();
		return produtos.toArray(new Produto[produtos.size()]);
	}
	
}
