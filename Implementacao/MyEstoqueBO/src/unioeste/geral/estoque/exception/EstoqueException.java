package unioeste.geral.estoque.exception;

public class EstoqueException extends Exception {

	private static final long serialVersionUID = 1L;

	public EstoqueException() {
		System.out.println("Erro no estoque");
	}
	
	public EstoqueException(String m) {
		System.out.println(m);
	}
	
}
