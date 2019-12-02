package unioeste.geral.estoque.dao;

import java.sql.ResultSet;

import unioeste.apoio.BD.SQLConnector;
import unioeste.geral.estoque.bo.Fornecedor;
import unioeste.geral.estoque.bo.NotaCompra;

public class DAONota {

	public NotaCompra inserirNota(NotaCompra notaCompra, SQLConnector connector) throws Exception{
		// TODO Auto-generated method stub
		
		String query = "INSERT INTO NotaCompra (dataNota, totalNota, descontoTotal, valorLiquido, idFornecedor) "
				+ "VALUES ("+ notaCompra.getSQLData() +", "+notaCompra.getTotalNota()+", "+notaCompra.getDescontoTotal()+", "+notaCompra.getValorLiquido()+", "+notaCompra.getFornecedor().getIdPessoa()+" )";
		
		connector.executeUpdate(query);
		
		String query_id = "SELECT * FROM NotaCompra WHERE idNotaCompra = LAST_INSERT_ID();";
		ResultSet result = connector.executeQuery(query_id);
		result.next();
		
		notaCompra.setIdNota(result.getInt("idNotaCompra"));
		
		return notaCompra;
	}

	public NotaCompra consultarNota(NotaCompra notaCompra, SQLConnector connector) throws Exception{
		// TODO Auto-generated method stub
		
		String query = "SELECT * FROM NotaCompra WHERE idNotaCompra = "+ notaCompra.getIdNota() +";";
		ResultSet result = connector.executeQuery(query);
		result.next();
		
		notaCompra.setDataNota(result.getDate("dataNota"));
		notaCompra.setDescontoTotal(result.getFloat("descontoTotal"));
		notaCompra.setTotalNota(result.getFloat("totalNota"));
		notaCompra.setValorLiquido(result.getFloat("valorLiquido"));
		Fornecedor f = new Fornecedor();
		f.setIdPessoa(result.getInt("idFornecedor"));
		notaCompra.setFornecedor(f);
		
		return notaCompra;
	}

}
