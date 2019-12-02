package unioeste.geral.estoque.col;

import unioeste.apoio.BD.SQLConnector;
import unioeste.geral.estoque.bo.NotaCompra;
import unioeste.geral.estoque.dao.DAONota;

public class ColNota {

	public NotaCompra inserirNota(NotaCompra notaCompra, SQLConnector connector) throws Exception{
		// TODO Auto-generated method stub
		
		DAONota dao = new DAONota();
		
		notaCompra = dao.inserirNota(notaCompra, connector);
		
		return notaCompra;
	}

	public NotaCompra consultarNota(NotaCompra notaCompra, SQLConnector connector) throws Exception{
		// TODO Auto-generated method stub
		
		DAONota dao = new DAONota();
		
		notaCompra = dao.consultarNota(notaCompra, connector);
		
		return notaCompra;
	}

}
