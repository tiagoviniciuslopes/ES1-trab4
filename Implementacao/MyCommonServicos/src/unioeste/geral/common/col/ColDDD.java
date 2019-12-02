package unioeste.geral.common.col;

import java.util.ArrayList;

import unioeste.apoio.BD.SQLConnector;
import unioeste.geral.common.bo.DDD;
import unioeste.geral.common.dao.DAODDD;

public class ColDDD {

	public DDD obterDDDPorId(DDD ddd, SQLConnector connector) throws Exception{
		DAODDD dao = new DAODDD();
		
		return dao.obterDDDPorId(ddd, connector);
	}
	
	public ArrayList<DDD> obterTodosDDDs(SQLConnector connector) throws Exception{
		DAODDD dao = new DAODDD();
		
		return dao.obterTodosDDDs(connector);
	}
	
}
