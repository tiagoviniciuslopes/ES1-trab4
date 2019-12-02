package unioeste.geral.estoque.bo;

import java.io.Serializable;

import unioeste.geral.estoque.exception.EstoqueException;

public abstract class ItemNota implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int quantidade;

	private float precoUnitario;

	private float precoTotal;

	private Produto produto;

	public int getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}

	public float getPrecoUnitario() {
		return precoUnitario;
	}

	public void setPrecoUnitario(float precoUnitario) {
		this.precoUnitario = precoUnitario;
	}

	public float getPrecoTotal() {
		return precoTotal;
	}

	public void setPrecoTotal(float precoTotal) {
		this.precoTotal = precoTotal;
	}
	
	public void calcularPrecoTotal() {
		this.precoTotal = precoUnitario * quantidade;
	}

	public Produto getProduto() {
		return produto;
	}

	public void setProduto(Produto produto) {
		this.produto = produto;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public void validaObjeto() throws EstoqueException {
		
		if(quantidade <= 0 || precoUnitario <= 0 || produto == null) throw new EstoqueException("Item invalido");
	}
	
	

}
