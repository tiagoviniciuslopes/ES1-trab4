package unioeste.geral.common.col;

import java.util.ArrayList;

import unioeste.apoio.BD.SQLConnector;
import unioeste.geral.common.bo.Email;
import unioeste.geral.common.bo.Pessoa;
import unioeste.geral.common.dao.DAOEmail;

public class ColEmail {

	public ArrayList<Email> obterEmailCliente(Pessoa pessoa, SQLConnector connector) throws Exception{
		DAOEmail dao = new DAOEmail();
		
		return dao.obterEmailCliente(pessoa, connector);
	}
	
	public ArrayList<Email> obterEmailFuncionario(Pessoa pessoa, SQLConnector connector) throws Exception{
		DAOEmail dao = new DAOEmail();
		
		return dao.obterEmailFuncionario(pessoa, connector);
	}
	
	public Email inserirEmailCliente(Email e,Pessoa pessoa, SQLConnector connector) throws Exception {
		DAOEmail dao = new DAOEmail();
		
		return dao.inserirEmailCliente(e, pessoa, connector);
	}

	public ArrayList<Email> obterEmailFornecedor(Pessoa p, SQLConnector connector) throws Exception{
		// TODO Auto-generated method stub
		DAOEmail dao = new DAOEmail();
		
		return dao.obterEmailFornecedor(p, connector);
	}
	
}
