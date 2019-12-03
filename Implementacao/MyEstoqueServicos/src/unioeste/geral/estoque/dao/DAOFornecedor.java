package unioeste.geral.estoque.dao;

import java.sql.ResultSet;

import unioeste.apoio.BD.SQLConnector;
import unioeste.geral.common.bo.CNPJ;
import unioeste.geral.common.bo.EnderecoEspecifico;
import unioeste.geral.endereco.bo.Endereco;
import unioeste.geral.estoque.bo.Fornecedor;

public class DAOFornecedor {

	public Fornecedor consultarFornecedorPorCnpj(Fornecedor f, SQLConnector connector) throws Exception{
		// TODO Auto-generated method stub
		
		String query = "SELECT * FROM Fornecedor WHERE cnpj= '" + f.getCnpj().getNumeroDoc() + "';";
		ResultSet result = connector.executeQuery(query);
		result.next();
		
		CNPJ cnpj = new CNPJ();
		cnpj.setNumeroDoc(result.getString("cnpj"));
		f.setCnpj(cnpj);
		EnderecoEspecifico enderecoEspecifico = new EnderecoEspecifico();
		enderecoEspecifico.setNumero(result.getInt("numero"));
		enderecoEspecifico.setComplemento(result.getString("complemento"));
		Endereco endereco = new Endereco();
		endereco.setIdEndereco(result.getInt("idEndereco"));
		enderecoEspecifico.setEndereco(endereco);
		f.setEnderecoEspecifico(enderecoEspecifico);
		f.setIdPessoa(result.getInt("idFornecedor"));
		f.setNomeAbreviado(result.getString("nomeAbreviadoFornecedor"));
		f.setNomeCompleto(result.getString("nomeCompletoFornecedor"));
		
		
		return f;
	}
	
	public Fornecedor consultarFornecedorPorId(Fornecedor f, SQLConnector connector) throws Exception{
		// TODO Auto-generated method stub
		
		String query = "SELECT * FROM Fornecedor WHERE idFornecedor = '" + f.getIdPessoa() + "';";
		ResultSet result = connector.executeQuery(query);
		result.next();
		
		CNPJ cnpj = new CNPJ();
		cnpj.setNumeroDoc(result.getString("cnpj"));
		f.setCnpj(cnpj);
		EnderecoEspecifico enderecoEspecifico = new EnderecoEspecifico();
		enderecoEspecifico.setNumero(result.getInt("numero"));
		enderecoEspecifico.setComplemento(result.getString("complemento"));
		Endereco endereco = new Endereco();
		endereco.setIdEndereco(result.getInt("idEndereco"));
		enderecoEspecifico.setEndereco(endereco);
		f.setEnderecoEspecifico(enderecoEspecifico);
		f.setIdPessoa(result.getInt("idFornecedor"));
		f.setNomeAbreviado(result.getString("nomeAbreviadoFornecedor"));
		f.setNomeCompleto(result.getString("nomeCompletoFornecedor"));
		
		
		return f;
	}

}
