package unioeste.geral.estoque.testes;

import unioeste.geral.common.bo.CNPJ;
import unioeste.geral.common.exception.NegocioException;
import unioeste.geral.estoque.bo.Fornecedor;
import unioeste.geral.estoque.manager.UCFornecedorServicos;

public class FornecedorServicosIntegrationTests {

	public static void main(String[] args) throws Exception{
		// TODO Auto-generated method stub
		FornecedorServicosIntegrationTests f = new FornecedorServicosIntegrationTests();
		f.consultarFornecedorMustPass();
		f.consultarFornecedorPorIdMustPass();
	}
	
	public void consultarFornecedorMustPass() throws Exception{
		UCFornecedorServicos uc = new UCFornecedorServicos();
		CNPJ cnpj = new CNPJ();
		Fornecedor f = new Fornecedor();
		cnpj.setNumeroDoc("41182243000175");
		f.setCnpj(cnpj);
		
		f = uc.consultarFornecedor(f);
		if(f==null || f.getIdPessoa() <= 0) throw new NegocioException("Erro: consultarFornecedorMustPass retornou nulo");
	}
	
	public void consultarFornecedorPorIdMustPass() throws Exception{
		UCFornecedorServicos uc = new UCFornecedorServicos();
		Fornecedor f = new Fornecedor();
		f.setIdPessoa(1);
		
		f = uc.consultarFornecedorPorId(f);
		if(f==null || f.getIdPessoa() <= 0 || f.getEnderecoEspecifico() == null || f.getCnpj() == null) throw new NegocioException("Erro: consultarFornecedorPorIdMustPass retornou nulo");
	}

}
