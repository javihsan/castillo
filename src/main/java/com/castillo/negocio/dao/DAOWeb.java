package com.castillo.negocio.dao;

import java.util.List;

import com.castillo.negocio.dto.DTOWeb;

public interface DAOWeb {

	public DTOWeb create(DTOWeb web) throws Exception;

	public DTOWeb remove(long id) throws Exception;

	public DTOWeb update(DTOWeb web) throws Exception;

	public DTOWeb getById(long id);

	public List<DTOWeb> getWeb();

	public DTOWeb getWebByWebParametro(String webParametro);
	
	public DTOWeb getWebBBDDByWebParametro(String webParametro);
 }