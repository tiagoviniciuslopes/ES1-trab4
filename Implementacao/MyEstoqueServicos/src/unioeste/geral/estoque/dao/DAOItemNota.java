package unioeste.geral.estoque.dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import unioeste.apoio.BD.SQLConnector;
import unioeste.geral.estoque.bo.ItemCompra;
import unioeste.geral.estoque.bo.ItemNota;
import unioeste.geral.estoque.bo.NotaCompra;
import unioeste.geral.estoque.bo.Produto;

public class DAOItemNota {

	public ItemNota inserirItemNota(NotaCompra nc, ItemNota ic, SQLConnector connector) throws Exception{
		// TODO Auto-generated method stub
		
		String query = "INSERT INTO ItemCompra (idNotaCompra, idProduto, quantidade, precoUnitario) "
				+ "VALUES ("+nc.getIdNota()+", "+ic.getProduto().getIdProduto()+", "+ic.getQuantidade()+", "+ic.getPrecoUnitario()+")";
		
		connector.executeUpdate(query);
		
		return ic;
	}

	public ArrayList<ItemCompra> consultarItemNota(NotaCompra notaCompra, SQLConnector connector) throws Exception {
		// TODO Auto-generated method stub
		
		String query = "SELECT * FROM ItemCompra WHERE idNotaCompra = "+notaCompra.getIdNota()+";";
		ResultSet result = connector.executeQuery(query);
		
		ArrayList<ItemCompra> ic = new ArrayList<ItemCompra>(); 
		
		while(result.next()) {
			ItemCompra i = new ItemCompra();
			i.setPrecoUnitario(result.getFloat("precoUnitario"));
			i.setQuantidade(result.getInt("quantidade"));	
			i.calcularPrecoTotal();
			Produto p = new Produto();
			p.setIdProduto(result.getInt("idProduto"));
			i.setProduto(p);
			
			ic.add(i);
		}
		
		return ic;
	}

}
