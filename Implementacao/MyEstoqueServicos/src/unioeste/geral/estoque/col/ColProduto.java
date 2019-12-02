package unioeste.geral.estoque.col;

import java.util.ArrayList;

import unioeste.apoio.BD.SQLConnector;
import unioeste.geral.estoque.bo.Produto;
import unioeste.geral.estoque.dao.DAOProduto;

public class ColProduto {

	public Produto atualizarProduto(Produto p, SQLConnector connector) throws Exception{
		// TODO Auto-generated method stub
		
		DAOProduto dao = new DAOProduto();
		
		p = dao.atualizarProduto(p, connector);
		
		return p;
	}

	public Produto consultarProduto(Produto p, SQLConnector connector) throws Exception{
		// TODO Auto-generated method stub
		
		DAOProduto dao = new DAOProduto();
		
		p = dao.consultarProduto(p, connector);
		
		return p;
	}

	public ArrayList<Produto> consultarTodosProdutos(SQLConnector connector) throws Exception{
		// TODO Auto-generated method stub
		DAOProduto dao = new DAOProduto();
		return dao.consultarTodosProdutos(connector);
	}

}
