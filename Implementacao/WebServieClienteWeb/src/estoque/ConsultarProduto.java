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

import unioeste.geral.estoque.bo.Produto;

/**
 * Servlet implementation class ConsultarProduto
 */
@WebServlet("/consultas/ConsultarProduto")
public class ConsultarProduto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConsultarProduto() {
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
	    
	    Produto p = new Produto();
	    p.setIdProduto(Integer.parseInt(request.getParameter("codigo")));
	    
	    try {
			p = (Produto)estoque.consultarProduto(p);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
	    PrintWriter out = response.getWriter();
	    out.print("<br>");
	    out.print(p.getCodBarras());
	    out.print("<br>");
	    out.print(p.getNomeProduto());
	    out.print("<br>");
	    out.print(p.getQuantidadeEstoque());
	    out.print("<br>");
	    out.print(p.getFornecedor().getNomeCompleto());
	    out.print("<br>");
	    out.print(p.getPrecoCustoAtual());
	    out.print("<br>");
	    out.print(p.getPrecoVendaAtual());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
