package unioeste.geral.estoque.bo;

import java.io.Serializable;

import unioeste.geral.estoque.exception.EstoqueException;

public class NotaCompra extends Nota implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Fornecedor fornecedor;

	private Produto[] produto;

	public Fornecedor getFornecedor() {
		return fornecedor;
	}

	public void setFornecedor(Fornecedor fornecedor) {
		this.fornecedor = fornecedor;
	}

	public Produto[] getProduto() {
		return produto;
	}

	public void setProduto(Produto[] produto) {
		this.produto = produto;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public void validaObjeto() throws EstoqueException{
		if(fornecedor == null || produto == null) throw new EstoqueException("Nota de compra invalida");
	}

}
