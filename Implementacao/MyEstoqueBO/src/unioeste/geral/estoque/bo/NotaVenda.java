package unioeste.geral.estoque.bo;

public class NotaVenda extends Nota {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Cliente cliente;
	
	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
