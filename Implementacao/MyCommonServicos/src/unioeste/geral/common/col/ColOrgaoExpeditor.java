package unioeste.geral.common.col;

import java.util.ArrayList;

import unioeste.apoio.BD.SQLConnector;
import unioeste.geral.common.bo.OrgaoExpeditor;
import unioeste.geral.common.dao.DAOOrgaoExpeditor;

public class ColOrgaoExpeditor {

	public OrgaoExpeditor obterOrgaoExpeditorPorId(OrgaoExpeditor orgaoExpeditor, SQLConnector connector) throws Exception{
		DAOOrgaoExpeditor dao = new DAOOrgaoExpeditor();
		
		return dao.obterOrgaoExpeditorPorId(orgaoExpeditor, connector);
	}
	
	public ArrayList<OrgaoExpeditor> obterTodosOrgaosExpeditores(SQLConnector connector) throws Exception{
		DAOOrgaoExpeditor dao = new DAOOrgaoExpeditor();
		
		return dao.obterTodosOrgaosExpeditores(connector);
	}
	
}
