package com.castillo.persist.entities;

import java.io.Serializable;
import javax.persistence.*;

import java.util.Date;


/**
 * The persistent class for the album database table.
 * 
 */ 
@Entity
@NamedQueries({
	@NamedQuery(name="getAlbum", query = "SELECT t FROM Album t WHERE t.albActivado =1 order by t.albId desc"),
	@NamedQuery(name="getAlbumAdmin", query = "SELECT t FROM Album t order by t.albId desc")
})
public class Album implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long albId;

	private int albActivado;

    @Temporal( TemporalType.DATE)
	private Date albFecha;

	private String albNombre;

	private String albFichero;

	private String albImagen;
	
    public Album() {
    }

	public Long getAlbId() {
		return this.albId;
	}

	public void setAlbId(Long albId) {
		this.albId = albId;
	}

	public int getAlbActivado() {
		return this.albActivado;
	}

	public void setAlbActivado(int albActivado) {
		this.albActivado = albActivado;
	}

	public Date getAlbFecha() {
		return this.albFecha;
	}

	public void setAlbFecha(Date albFecha) {
		this.albFecha = albFecha;
	}

	public String getAlbNombre() {
		return this.albNombre;
	}

	public void setAlbNombre(String albNombre) {
		this.albNombre = albNombre;
	}
	
	public String getAlbFichero() {
		return this.albFichero;
	}

	public void setAlbFichero(String albFichero) {
		this.albFichero = albFichero;
	}

	public String getAlbImagen() {
		return albImagen;
	}

	public void setAlbImagen(String albImagen) {
		this.albImagen = albImagen;
	}


}