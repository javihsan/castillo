package com.castillo.negocio.dto;

import java.io.Serializable;

import com.google.appengine.api.datastore.Text;


public class DTOWeb implements Serializable {
	private static final long serialVersionUID = 1L;

	private Long webId;

	private int webActivado;

	private String webParametro;

	private Text webValor;
	
	private String webValorFile;

    public DTOWeb() {
    }

	public Long getWebId() {
		return this.webId;
	}

	public void setWebId(Long webId) {
		this.webId = webId;
	}

	public int getWebActivado() {
		return this.webActivado;
	}

	public void setWebActivado(int webActivado) {
		this.webActivado = webActivado;
	}

	public String getWebParametro() {
		return this.webParametro;
	}

	public void setWebParametro(String webParametro) {
		this.webParametro = webParametro;
	}

	public Text getWebValor() {
		return this.webValor;
	}

	public void setWebValor(Text webValor) {
		this.webValor = webValor;
	}
	
	public String getWebValorFile() {
		return webValorFile;
	}

	public void setWebValorFile(String webValorFile) {
		this.webValorFile = webValorFile;
	}

}