package com.castillo.negocio.dao;

import java.util.List;

import com.castillo.negocio.dto.DTOMensaje;

public interface DAOMensaje {

	public DTOMensaje create(DTOMensaje mensaje) throws Exception;

	public DTOMensaje remove(long id) throws Exception;

	public DTOMensaje update(DTOMensaje mensaje) throws Exception;

	public DTOMensaje getById(long id);

	public List<DTOMensaje> getMensaje();

	public List<DTOMensaje> getMensajeByMenIdForo(long menIdForo);

 }