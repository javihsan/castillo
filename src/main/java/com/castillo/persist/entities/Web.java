package com.castillo.persist.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

import com.google.appengine.api.datastore.Text;


/**
 * The persistent class for the web database table.
 * 
 */
@Entity
@NamedQueries({
	@NamedQuery(name="getWeb", query = "SELECT t FROM Web t order by t.webId desc"),
	@NamedQuery(name="getWebBBDDByWebParametro", query = "SELECT t FROM Web t WHERE t.webParametro=:webParametro"),
	@NamedQuery(name="getWebByWebParametro", query = "SELECT t FROM Web t WHERE t.webParametro=:webParametro and t.webActivado =1 order by t.webId desc")
})
public class Web implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long webId;

	private int webActivado;

	private String webParametro;
 
	@Column(columnDefinition="TEXT")
	private Text webValor;
	
	private String webValorFile;

    public Web() {
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