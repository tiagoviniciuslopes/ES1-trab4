package unioeste.geral.common.col;

import java.util.ArrayList;

import unioeste.apoio.BD.SQLConnector;
import unioeste.geral.common.bo.DDI;
import unioeste.geral.common.dao.DAODDI;

public class ColDDI {

	public DDI obterDDIPorId(DDI ddi, SQLConnector connector) throws Exception{
		DAODDI dao = new DAODDI();
		
		return dao.obterDDIPorId(ddi, connector);
	}
	
	public ArrayList<DDI> obterTodosDDIs(SQLConnector connector) throws Exception{
		DAODDI dao = new DAODDI();
		
		return dao.obterTodosDDIs(connector);
	}
	
}
