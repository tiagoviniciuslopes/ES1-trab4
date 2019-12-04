package estoque;

import java.net.URL;

import javax.xml.namespace.QName;
import javax.xml.ws.Service;

import unioeste.geral.estoque.bo.Fornecedor;

public class EstoqueCliente {

	public static void main(String[] args) throws Exception{
		// TODO Auto-generated method stub
		URL url = new URL("http://localhost:9876/estoque?wsdl");
	    QName qname = new QName("http://estoque/","EstoqueImplementacaoService");
	    QName qPortName = new QName("http://estoque/","EstoqueImplementacaoPort");
	    Service ws = Service.create(url, qname);
	    EstoqueInterface estoque = ws.getPort(qPortName,EstoqueInterface.class);
	    
	    Fornecedor f = new Fornecedor();
	    f.setIdPessoa(1);
	    f = estoque.consultarFornecedorPorId(f);
	    System.out.println(f.getNomeCompleto());
	}
	
}
