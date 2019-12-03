package unioeste.geral.estoque.col;

import unioeste.apoio.BD.SQLConnector;
import unioeste.geral.estoque.bo.Fornecedor;
import unioeste.geral.estoque.dao.DAOFornecedor;

public class ColFornecedor {

	public Fornecedor consultarFornecedorPorCnpj(Fornecedor f, SQLConnector connector) throws Exception{
		// TODO Auto-generated method stub
		DAOFornecedor dao = new DAOFornecedor();
		
		return dao.consultarFornecedorPorCnpj(f, connector);
	}
	
	public Fornecedor consultarFornecedorPorId(Fornecedor f, SQLConnector connector) throws Exception{
		// TODO Auto-generated method stub
		DAOFornecedor dao = new DAOFornecedor();
		
		return dao.consultarFornecedorPorId(f, connector);
	}

}
