package com.castillo.persist.transformer;

import org.apache.commons.beanutils.PropertyUtils;

import com.castillo.negocio.dto.DTOAlbum;
import com.castillo.persist.entities.Album;


public class TransformerAlbum {
	private static TransformerAlbum transformerAlbum =  new TransformerAlbum();

	public void reset(){
		transformerAlbum = null;
	}
	
	public static TransformerAlbum getInstance(){
		if (transformerAlbum == null){
			transformerAlbum = new TransformerAlbum();
		}
		return transformerAlbum;
	}	
	
	public Album transformDTOToEntity(DTOAlbum album){
		
		Album entityAlbum = new Album();
		
		try {
			PropertyUtils.copyProperties(entityAlbum, album);
		} catch (Exception e) {
			e.printStackTrace();
		} 

		return entityAlbum;
	}
	
	public DTOAlbum transformEntityToDTO(Album entityAlbum){
		
		DTOAlbum album = new DTOAlbum();
		
		try {
			PropertyUtils.copyProperties(album, entityAlbum);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return album;
	}
	
}
