package unioeste.geral.estoque.testes;

import unioeste.geral.common.exception.NegocioException;
import unioeste.geral.estoque.bo.Produto;
import unioeste.geral.estoque.manager.UCProdutoServicos;

public class ProdutoServicosIntegrationTests {
	
	public static void main(String[] args) throws Exception{
		ProdutoServicosIntegrationTests p = new ProdutoServicosIntegrationTests();
		
		p.consultarProdutoMustPass();
		p.consultarTodosProdutosMustPass();
	}
	
	public void consultarProdutoMustPass() throws Exception{
		UCProdutoServicos uc = new UCProdutoServicos();
		Produto p = new Produto();
		p.setIdProduto(2);
		p = uc.consultarProduto(p);
		if(p == null ) throw new NegocioException("Erro: consultarProdutoMustPass retornou nulo");
	}
	
	public void consultarTodosProdutosMustPass() throws Exception{
		UCProdutoServicos uc = new UCProdutoServicos();
		Produto[] p = uc.consultarTodosProdutos();
		
		if(p == null ) throw new NegocioException("Erro: consultarTodosProdutosMustPass retornou nulo");
	}
	
}
