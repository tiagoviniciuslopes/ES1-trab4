package unioeste.geral.estoque.testes;

import java.util.ArrayList;

import unioeste.geral.common.bo.CNPJ;
import unioeste.geral.common.exception.NegocioException;
import unioeste.geral.estoque.bo.Fornecedor;
import unioeste.geral.estoque.bo.ItemCompra;
import unioeste.geral.estoque.bo.ItemNota;
import unioeste.geral.estoque.bo.NotaCompra;
import unioeste.geral.estoque.bo.Produto;
import unioeste.geral.estoque.manager.UCNotaCompraServicos;

public class NotaCompraServicosIntegrationTests {

	public static void main(String[] args) throws Exception{
		// TODO Auto-generated method stub
		NotaCompraServicosIntegrationTests c = new NotaCompraServicosIntegrationTests();
		
		c.registrarCompraMustPass();
		c.consultarNotaMustPass();
	}
	
	public void consultarNotaMustPass() throws Exception{
		UCNotaCompraServicos uc = new UCNotaCompraServicos();
		NotaCompra n = new NotaCompra();
		n.setIdNota(1);
		
		n = uc.consultarNota(n);
		
		if(n.getFornecedor() == null || n.getFornecedor().getIdPessoa() <= 0 || n.getItemNota() == null) throw new NegocioException("Erro: ConsultarNotaMustPass retornou nulo");
	}
	
	public void registrarCompraMustPass() throws Exception{
		UCNotaCompraServicos uc = new UCNotaCompraServicos();
		NotaCompra n = new NotaCompra();
		Produto p1 = new Produto();
		Produto p2 = new Produto();
		ItemCompra ic1 = new ItemCompra();
		ItemCompra ic2 = new ItemCompra();
		Fornecedor f = new Fornecedor();
		CNPJ cnpj = new CNPJ();
		ArrayList<ItemCompra> ic = new ArrayList<ItemCompra>();
		
		cnpj.setNumeroDoc("41182243000175");
		f.setCnpj(cnpj);
		
		p1.setIdProduto(10);
		p2.setIdProduto(11);
		
		ic1.setProduto(p1);
		ic1.setPrecoUnitario(490);
		ic1.setQuantidade(756);
		ic1.calcularPrecoTotal();
		
		ic2.setProduto(p2);
		ic2.setPrecoUnitario(410);
		ic2.setQuantidade(65);
		ic2.calcularPrecoTotal();
		
		ic.add(ic1);
		ic.add(ic2);
		
		n.setDescontoTotal(0);
		n.setDataNota("11/09/2002");
		n.setFornecedor(f);
		n.setTotalNota(397090);
		n.setValorLiquido(397090);
		n.setItemNota(ic.toArray(new ItemNota[ic.size()]));
		
		uc.registrarCompra(n);
		
	}

}
