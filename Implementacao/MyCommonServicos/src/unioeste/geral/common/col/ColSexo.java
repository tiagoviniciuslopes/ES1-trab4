package unioeste.geral.common.col;

import java.util.ArrayList;

import unioeste.apoio.BD.SQLConnector;
import unioeste.geral.common.bo.Sexo;
import unioeste.geral.common.dao.DAOSexo;

public class ColSexo {

	public Sexo obterSexoPorId(Sexo sexo, SQLConnector connector) throws Exception{
		DAOSexo dao = new DAOSexo();
		
		return dao.obterSexoPorId(sexo, connector);
	}
	
	public ArrayList<Sexo> obterTodosSexos(SQLConnector connector) throws Exception{
		DAOSexo dao = new DAOSexo();
		
		return dao.obterTodosSexos(connector);
	}
	
}
