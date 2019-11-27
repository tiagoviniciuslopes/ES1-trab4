package unioeste.geral.estoque.bo;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

public class NotaVenda implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int idNotaVenda;

	private Date dataNota;

	private float totalNota;

	private float descontoTotal;

	private float valorLiquido;

	private Cliente cliente;

	private ItemVenda[] itemVenda;

	public int getIdNotaVenda() {
		return idNotaVenda;
	}

	public void setIdNotaVenda(int idNotaVenda) {
		this.idNotaVenda = idNotaVenda;
	}
	
	public String getSQLData() {
		if (dataNota == null)
			return "null";
		SimpleDateFormat stringify = new SimpleDateFormat("yyyy-MM-dd");
		return "'" + stringify.format(dataNota) + "'";
	}
	public String getStringData() {
		SimpleDateFormat stringify = new SimpleDateFormat("dd/MM/yyyy");
		return stringify.format(dataNota);
	}
	public boolean setDataNota(String data) {
		String format = "dd/MM/yyyy";
		if (data.indexOf("-") != -1) {
			format = "yyyy-MM-dd";
		}
		SimpleDateFormat parser = new SimpleDateFormat(format);
		try {
			this.dataNota = parser.parse(data);
			return true;
		} catch (Exception exception) {
			return false;
		}
	}

	public Date getDataNota() {
		return dataNota;
	}

	public void setDataNota(Date dataNota) {
		this.dataNota = dataNota;
	}

	public float getTotalNota() {
		return totalNota;
	}

	public void setTotalNota(float totalNota) {
		this.totalNota = totalNota;
	}

	public float getDescontoTotal() {
		return descontoTotal;
	}

	public void setDescontoTotal(float descontoTotal) {
		this.descontoTotal = descontoTotal;
	}

	public float getValorLiquido() {
		return valorLiquido;
	}

	public void setValorLiquido(float valorLiquido) {
		this.valorLiquido = valorLiquido;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public ItemVenda[] getItemVenda() {
		return itemVenda;
	}

	public void setItemVenda(ItemVenda[] itemVenda) {
		this.itemVenda = itemVenda;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
