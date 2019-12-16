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

import unioeste.geral.estoque.bo.ItemCompra;
import unioeste.geral.estoque.bo.ItemNota;
import unioeste.geral.estoque.bo.NotaCompra;

/**
 * Servlet implementation class ConsultarNota
 */
@WebServlet("/consultas/ConsultarNota")
public class ConsultarNota extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConsultarNota() {
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
	    
	    NotaCompra nc = new NotaCompra();
	    nc.setIdNota(Integer.parseInt(request.getParameter("codigo")));
	    
	    try {
			nc = (NotaCompra)estoque.consultarNota(nc);
			/*
			PrintWriter out = response.getWriter();
			
			out.print("<br><h2> ID: " + nc.getIdNota() + "</h2>");
			out.print("<br><h2> Data nota: " + nc.getStringData() + "</h2>");
			out.print("<br><h2> Total: " + nc.getTotalNota() + "</h2>");
			out.print("<br><h2> Desconto: " + nc.getDescontoTotal() + "</h2>");
			out.print("<br><h2> Total liquido: " + nc.getValorLiquido() + "</h2>");
			out.print("<br><h2> Fornecedor: " + nc.getFornecedor().getNomeCompleto() + "</h2>");
			out.print("<br><h2> CNPJ Fornecedor: " + nc.getFornecedor().getCnpj().getNumeroDoc() + "</h2>");
			out.print("<br><h2> ITENS COMPRADOS: </h2>");
			for(ItemNota ic : nc.getItemNota()) {
				out.print("<br><h3>Produto: "+ic.getProduto().getNomeProduto()+"  |  Quantidade: "+ic.getQuantidade()+"  | Preco Unitario: "+ic.getPrecoUnitario()+"</h3>");
			}
			*/
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
		request.setAttribute("notacompra", nc);
		request.setAttribute("itemcompra", nc.getItemNota());
		request.getRequestDispatcher("/MostrarNotas.jsp").forward(request, response);
	    
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
