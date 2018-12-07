package com.castillo.persist.transformer;

import org.apache.commons.beanutils.PropertyUtils;

import com.castillo.negocio.dto.DTOMensaje;
import com.castillo.persist.entities.Mensaje;


public class TransformerMensaje {
	private static TransformerMensaje transformerMensaje =  new TransformerMensaje();
	

	public void reset(){
		transformerMensaje = null;
	}
	
	public static TransformerMensaje getInstance(){
		if (transformerMensaje == null){
			transformerMensaje = new TransformerMensaje();
		}
		return transformerMensaje;
	}	
	
	public Mensaje transformDTOToEntity(DTOMensaje mensaje){
		
		Mensaje entityMensaje = new Mensaje();
		
		try {
			PropertyUtils.copyProperties(entityMensaje, mensaje);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		return entityMensaje;
	}
	
	public DTOMensaje transformEntityToDTO(Mensaje entityMensaje){
		
		DTOMensaje mensaje = new DTOMensaje();
		
		try {
			PropertyUtils.copyProperties(mensaje, entityMensaje);
		} catch (Exception e) {
			e.printStackTrace();
		} 

		return mensaje;
	}
	
}
