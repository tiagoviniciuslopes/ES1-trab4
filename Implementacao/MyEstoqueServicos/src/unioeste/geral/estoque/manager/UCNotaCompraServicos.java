package unioeste.geral.estoque.manager;

import unioeste.apoio.BD.SQLConnector;
import unioeste.geral.estoque.bo.Fornecedor;
import unioeste.geral.estoque.bo.ItemNota;
import unioeste.geral.estoque.bo.NotaCompra;
import unioeste.geral.estoque.bo.Produto;
import unioeste.geral.estoque.col.ColItemNota;
import unioeste.geral.estoque.col.ColNota;
import unioeste.geral.estoque.col.ColProduto;

public class UCNotaCompraServicos {
	public NotaCompra registrarCompra(NotaCompra notaCompra) throws Exception{
		
		ColNota colNota = new ColNota();
		ColItemNota colItemNota = new ColItemNota();
		ColProduto colProduto = new ColProduto();
		SQLConnector connector = new SQLConnector();		
		
		// START TRANSACTION
		connector.startTransaction();
		
		// inserir nota compra
		notaCompra.validaObjeto();
		notaCompra = colNota.inserirNota(notaCompra, connector);
		
		// inserir item compra
		for(ItemNota ic : notaCompra.getItemNota()) {
			ic.validaObjeto();
			ic = colItemNota.inserirItemNota(notaCompra, ic, connector);
			
			// aumentar estoque do produto
			Produto p = ic.getProduto();
			p.setQuantidadeEstoque(p.getQuantidadeEstoque() + ic.getQuantidade());
			
			// atualizar fornecedor produto
			p.setFornecedor(notaCompra.getFornecedor());
			p.validaObjeto();
			p = colProduto.atualizarProduto(p, connector);
			ic.setProduto(p);
			
		}	
		
		// COMMIT
		connector.commit();
		connector.close();
		
		// retornar dados atualizados	
		return notaCompra;
	}
	
	public NotaCompra consultarNota(NotaCompra notaCompra) throws Exception{
		ColNota colNota = new ColNota();
		ColItemNota colItemNota = new ColItemNota();
		ColProduto colProduto = new ColProduto();
		UCFornecedorServicos ucFornecedorServicos = new UCFornecedorServicos();
		SQLConnector connector = new SQLConnector();
		boolean isSameFornecedor = false;
		
		notaCompra = colNota.consultarNota(notaCompra, connector);
		notaCompra.setItemNota(colItemNota.consultarItemNota(notaCompra, connector));
		
		for(ItemNota ic : notaCompra.getItemNota()) {
			Produto p = colProduto.consultarProduto(ic.getProduto(), connector);
			Fornecedor f = ucFornecedorServicos.consultarFornecedor(p.getFornecedor());
			p.setFornecedor(f);
			ic.setProduto(p);
			
			if(notaCompra.getFornecedor().getIdPessoa() == f.getIdPessoa()) {
				notaCompra.setFornecedor(f);
				isSameFornecedor = true;
			}
			
		}
		
		if(!isSameFornecedor) {
			Fornecedor f = ucFornecedorServicos.consultarFornecedor(notaCompra.getFornecedor());
			notaCompra.setFornecedor(f);
		}
		
		connector.close();
		
		return notaCompra;
	}
}
