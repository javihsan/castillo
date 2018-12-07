package com.castillo.persist.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import com.google.appengine.api.datastore.Blob;

/**
 * The persistent class for the album database table.
 * 
 */
@Entity
public class Imagen implements Serializable {
	private static final long serialVersionUID = 1L;


	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String title;

	private String imageType;

	private Blob image;

	public Imagen() {
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getImageType() {
		return imageType;
	}

	public void setImageType(String imageType) {
		this.imageType = imageType;
	}

	public byte[] getImage() {
		if (image == null) {
			return null;
		}

		return image.getBytes();
	}

	public void setImage(byte[] bytes) {
		this.image = new Blob(bytes);

	}

}