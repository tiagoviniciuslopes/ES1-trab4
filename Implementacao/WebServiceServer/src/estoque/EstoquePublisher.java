package estoque;

import java.net.InetAddress;
import java.net.UnknownHostException;

import javax.xml.ws.Endpoint;

public class EstoquePublisher {

	public static void main(String[] args) throws UnknownHostException {
		// TODO Auto-generated method stub
		InetAddress inetAddress = InetAddress.getLocalHost();
		Endpoint.publish("http://"+inetAddress.getHostAddress()+":9876/estoque", new EstoqueImplementacao());
	}

}
