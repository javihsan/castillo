package com.castillo.negocio.dao;

import java.util.List;

import com.castillo.negocio.dto.DTOAlbum;

public interface DAOAlbum {

	public DTOAlbum create(DTOAlbum album) throws Exception;
		
	public DTOAlbum remove(long id) throws Exception;

	public DTOAlbum update(DTOAlbum album) throws Exception;

	public DTOAlbum getById(long id);

	public List<DTOAlbum> getAlbum();

	public List<DTOAlbum> getAlbumAdmin();

 }