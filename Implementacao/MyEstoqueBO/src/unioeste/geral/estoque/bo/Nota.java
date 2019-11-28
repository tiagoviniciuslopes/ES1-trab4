package unioeste.geral.estoque.bo;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

public abstract class Nota implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int idNota;

	private Date dataNota;

	private float totalNota;

	private float descontoTotal;

	private float valorLiquido;

	private ItemNota[] itemNota;

	public int getIdNota() {
		return idNota;
	}

	public void setIdNota(int idNota) {
		this.idNota = idNota;
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
	public boolean setDataExpedicao(String data) {
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

	public ItemNota[] getItemNota() {
		return itemNota;
	}

	public void setItemNota(ItemNota[] itemNota) {
		this.itemNota = itemNota;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
