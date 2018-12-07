package com.castillo.persist.transformer;

import org.apache.commons.beanutils.PropertyUtils;

import com.castillo.negocio.dto.DTOWeb;
import com.castillo.persist.entities.Web;


public class TransformerWeb {
	private static TransformerWeb transformerWeb =  new TransformerWeb();

	public void reset(){
		transformerWeb = null;
	}
	
	public static TransformerWeb getInstance(){
		if (transformerWeb == null){
			transformerWeb = new TransformerWeb();
		}
		return transformerWeb;
	}	
	
	public Web transformDTOToEntity(DTOWeb web){
		
		Web entityWeb = new Web();
		
		try {
			PropertyUtils.copyProperties(entityWeb, web);
		} catch (Exception e) {
			e.printStackTrace();
		} 

		return entityWeb;
	}
	
	public DTOWeb transformEntityToDTO(Web entityWeb){
		
		DTOWeb web = new DTOWeb();
		
		try {
			PropertyUtils.copyProperties(web, entityWeb);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return web;
	}
	
}
