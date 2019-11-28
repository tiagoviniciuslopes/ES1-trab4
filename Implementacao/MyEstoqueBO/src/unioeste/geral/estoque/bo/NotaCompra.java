package unioeste.geral.estoque.bo;

import java.io.Serializable;

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

}
