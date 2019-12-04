package unioeste.geral.estoque.col;

import java.util.ArrayList;

import unioeste.apoio.BD.SQLConnector;
import unioeste.geral.estoque.bo.ItemCompra;
import unioeste.geral.estoque.bo.ItemNota;
import unioeste.geral.estoque.bo.NotaCompra;
import unioeste.geral.estoque.dao.DAOItemNota;

public class ColItemNota {

	public ItemNota inserirItemNota(NotaCompra nc, ItemNota ic, SQLConnector connector) throws Exception{
		// TODO Auto-generated method stub
		DAOItemNota dao = new DAOItemNota();
		
		ic = dao.inserirItemNota(nc, ic, connector);
		
		return ic;
	}

	public ItemNota[] consultarItemNota(NotaCompra notaCompra, SQLConnector connector) throws Exception {
		// TODO Auto-generated method stub
		DAOItemNota dao = new DAOItemNota();
		
		ArrayList<ItemCompra> itemCompra = dao.consultarItemNota(notaCompra, connector);
		
		return itemCompra.toArray(new ItemCompra[itemCompra.size()]);
	}

}
