package unioeste.geral.estoque.bo;

import java.io.Serializable;

public class Produto implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int idProduto;

	private float precoCustoAtual;

	private int quantidadeEstoque;

	private String nomeProduto;

	private String codBarras;

	private float precoVendaAtual;

	private Fornecedor fornecedor;

	public int getIdProduto() {
		return idProduto;
	}

	public void setIdProduto(int idProduto) {
		this.idProduto = idProduto;
	}

	public float getPrecoCustoAtual() {
		return precoCustoAtual;
	}

	public void setPrecoCustoAtual(float precoCustoAtual) {
		this.precoCustoAtual = precoCustoAtual;
	}

	public int getQuantidadeEstoque() {
		return quantidadeEstoque;
	}

	public void setQuantidadeEstoque(int quantidadeEstoque) {
		this.quantidadeEstoque = quantidadeEstoque;
	}

	public String getNomeProduto() {
		return nomeProduto;
	}

	public void setNomeProduto(String nomeProduto) {
		this.nomeProduto = nomeProduto;
	}

	public String getCodBarras() {
		return codBarras;
	}

	public void setCodBarras(String codBarras) {
		this.codBarras = codBarras;
	}

	public float getPrecoVendaAtual() {
		return precoVendaAtual;
	}

	public void setPrecoVendaAtual(float precoVendaAtual) {
		this.precoVendaAtual = precoVendaAtual;
	}

	public Fornecedor getFornecedor() {
		return fornecedor;
	}

	public void setFornecedor(Fornecedor fornecedor) {
		this.fornecedor = fornecedor;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
