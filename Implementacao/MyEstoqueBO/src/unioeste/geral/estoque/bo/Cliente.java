package unioeste.geral.estoque.bo;

import java.io.Serializable;

public class Cliente implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private ClienteEmpresa clienteEmpresa;

	private ClientePessoa clientePessoa;

	public ClienteEmpresa getClienteEmpresa() {
		return clienteEmpresa;
	}

	public void setClienteEmpresa(ClienteEmpresa clienteEmpresa) {
		this.clienteEmpresa = clienteEmpresa;
	}

	public ClientePessoa getClientePessoa() {
		return clientePessoa;
	}

	public void setClientePessoa(ClientePessoa clientePessoa) {
		this.clientePessoa = clientePessoa;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
