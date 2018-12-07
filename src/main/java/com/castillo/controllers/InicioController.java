package com.castillo.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.castillo.negocio.dao.DAOWeb;
import com.castillo.negocio.dto.DTOWeb;
import com.castillo.persist.manager.ManagerWeb;


public class InicioController extends AbstractController {
	
	private String view;
	
	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
		
		ModelAndView mav = new ModelAndView(getView());
		
		String path = arg0.getPathInfo();
		if (path.indexOf(ControllerConstants.ADMIN)!=-1){
			mav = new ModelAndView(getView()+ControllerConstants.ADMIN);
		}
		/*
		DAOMensaje mensajeManager = new ManagerMensaje();
		List<DTOMensaje> vMensajes = mensajeManager.getMensajeByMenIdForo(0);
		mav.addObject("vMensajes", vMensajes);
		*/
		DAOWeb webManager = new ManagerWeb();
		DTOWeb web = webManager.getWebByWebParametro("Texto principal");
		if (web != null){
			String texto_principal = web.getWebValor().getValue();
			mav.addObject("texto_principal", texto_principal);
		}
				
		return mav;
	}
	
	public String getView() {
		return view;
	}

	public void setView(String view) {
		this.view = view;
	}
	
}
