package estoque;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.net.URL;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.namespace.QName;
import javax.xml.ws.Service;

import unioeste.geral.estoque.bo.Fornecedor;

/**
 * Servlet implementation class ConsultarFornecedores
 */
@WebServlet("/consultas/ConsultarFornecedores")
public class ConsultarFornecedores extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConsultarFornecedores() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		InetAddress inetAddress = InetAddress.getLocalHost();
		URL url = new URL("http://"+inetAddress.getHostAddress()+":9876/estoque?wsdl");
	    QName qname = new QName("http://estoque/","EstoqueImplementacaoService");
	    QName qPortName = new QName("http://estoque/","EstoqueImplementacaoPort");
	    Service ws = Service.create(url, qname);
	    EstoqueInterface estoque = ws.getPort(qPortName,EstoqueInterface.class);
	    
	    Fornecedor f = new Fornecedor();
	    f.setIdPessoa(1);
	    
	    try {
			f = (Fornecedor)estoque.consultarFornecedorPorId(f);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
	    PrintWriter out = response.getWriter();
	    out.print(f.getNomeCompleto());
	    out.print(f.getCnpj().getNumeroDoc());
	    out.print(f.getEnderecoEspecifico().getEndereco().getCidade().getUf().getPais().getNome());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
