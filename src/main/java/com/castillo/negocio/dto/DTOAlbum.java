package com.castillo.negocio.dto;

import java.io.Serializable;
import java.util.Date;


public class DTOAlbum implements Serializable {
	private static final long serialVersionUID = 1L;

	private Long albId;

	private int albActivado;

	private Date albFecha;

	private String albNombre;
	
	private String albFichero;

	private String albImagen;

	public DTOAlbum() {
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
	
	public String getAlbFicheroIndice() {
		return "Blob_Album_Indice_"+getAlbId();
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