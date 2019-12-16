package estoque;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.net.URL;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.namespace.QName;
import javax.xml.ws.Service;

import unioeste.geral.common.bo.CNPJ;
import unioeste.geral.estoque.bo.Fornecedor;
import unioeste.geral.estoque.bo.ItemCompra;
import unioeste.geral.estoque.bo.NotaCompra;
import unioeste.geral.estoque.bo.Produto;

/**
 * Servlet implementation class RegistrarCompra
 */
@WebServlet("/cadastros/RegistrarCompra")
public class RegistrarCompra extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrarCompra() {
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
	    
	    int quantidadeProdutos = Integer.parseInt(request.getParameter("quantidadeProdutosTotal"));
	    ArrayList<ItemCompra> itemCompra = new ArrayList<ItemCompra>();
	    
	    
	    //02863526000120
	    for(int i = 1; i<=quantidadeProdutos; i++) {
	    	Produto p = new Produto();
	    	ItemCompra ic = new ItemCompra();
	    	p.setIdProduto(Integer.parseInt(request.getParameter("idproduto"+i)));
	    	ic.setProduto(p);
	    	ic.setPrecoTotal(Float.parseFloat(request.getParameter("total"+i)));
	    	ic.setPrecoUnitario(Float.parseFloat(request.getParameter("valorunitario"+i)));
	    	ic.setQuantidade(Integer.parseInt(request.getParameter("quantidade"+i)));
	    	
	    	itemCompra.add(ic);
	    	
	    }
	    
	    NotaCompra nc = new NotaCompra();
	    nc.setItemNota(itemCompra.toArray(new ItemCompra[itemCompra.size()]));
	    nc.setDataNota(request.getParameter("data"));
	    nc.setDescontoTotal(Float.parseFloat(request.getParameter("descontototal")));
	    Fornecedor fornecedor = new Fornecedor();
	    CNPJ cnpj = new CNPJ();
	    cnpj.setNumeroDoc(request.getParameter("cnpj"));
	    fornecedor.setCnpj(cnpj);
	    nc.setFornecedor(fornecedor);
	    nc.setTotalNota(Float.parseFloat(request.getParameter("totalnota")));
	    nc.setValorLiquido(Float.parseFloat(request.getParameter("valorliquido")));
	    
	    try {
			nc = estoque.registrarCompra(nc);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    /*
	    PrintWriter out = response.getWriter();
	    out.print("<h1>CODIGO DA NOVA NOTA CADASTRADA: " + nc.getIdNota() + "</h1>");*/
		request.setAttribute("notacadastrada", nc);
		request.getRequestDispatcher("/NotaCadastrada.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
