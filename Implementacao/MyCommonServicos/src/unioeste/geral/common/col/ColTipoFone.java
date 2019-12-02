package unioeste.geral.common.col;

import java.util.ArrayList;

import unioeste.apoio.BD.SQLConnector;
import unioeste.geral.common.bo.TipoFone;
import unioeste.geral.common.dao.DAOTipoFone;

public class ColTipoFone {

	public TipoFone obterTipoFonePorId(TipoFone tipoFone, SQLConnector connector) throws Exception{
		DAOTipoFone dao = new DAOTipoFone();
		
		return dao.obterTipoFonePorId(tipoFone, connector);
	}
	
	public ArrayList<TipoFone> obterTodosTiposFone(SQLConnector connector) throws Exception{
		DAOTipoFone dao = new DAOTipoFone();
		
		return dao.obterTodosTiposFone(connector);
	}
	
}
