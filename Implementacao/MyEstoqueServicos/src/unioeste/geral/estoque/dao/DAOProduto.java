package unioeste.geral.estoque.dao;

import java.sql.ResultSet;

import unioeste.apoio.BD.SQLConnector;
import unioeste.geral.estoque.bo.Fornecedor;
import unioeste.geral.estoque.bo.Produto;

public class DAOProduto {

	public Produto atualizarProduto(Produto p, SQLConnector connector) throws Exception{
		// TODO Auto-generated method stub
		
		String query = "UPDATE Produto SET idFornecedor = "+p.getFornecedor().getIdPessoa()+"  WHERE idProduto = " + p.getIdProduto() + ";";
		connector.executeUpdate(query);
		query = "UPDATE Produto SET quantidadeEstoque = "+p.getQuantidadeEstoque()+"  WHERE idProduto = " + p.getIdProduto() + ";";
		connector.executeUpdate(query);
		
		return p;
	}

	public Produto consultarProduto(Produto p, SQLConnector connector) throws Exception {
		// TODO Auto-generated method stub
		
		String query = "SELECT * FROM Produto WHERE idProduto = "+ p.getIdProduto() +";";
		ResultSet result = connector.executeQuery(query);
		result.next();
		
		p.setCodBarras(result.getString("codBarras"));
		Fornecedor f = new Fornecedor();
		f.setIdPessoa(result.getInt("idFornecedor"));
		p.setFornecedor(f);
		p.setNomeProduto(result.getString("nomeProduto"));
		p.setPrecoCustoAtual(result.getFloat("precoCustoAtual"));
		p.setPrecoVendaAtual(result.getFloat("precoVendaAtual"));
		p.setQuantidadeEstoque(result.getInt("quantidadeEstoque"));
		
		return p;
	}

}
