package com.castillo.controllers;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.castillo.negocio.dto.DTOMensaje;
import com.castillo.persist.manager.ManagerMensaje;


public class MensajeCortoController extends AbstractController {
	
	private String view;
	
	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
		
		ModelAndView mav = new ModelAndView(getView());
		
		String texto =  arg0.getParameter("texto");
		if (texto!=null){
			long idForo =0;
			
			DTOMensaje mensajeBean = new DTOMensaje();
		
			mensajeBean.setMenFecha(new Date());
			mensajeBean.setMenTexto(texto);
			mensajeBean.setMenIdForo(idForo);
			
			new ManagerMensaje().create(mensajeBean);	

			mav = new ModelAndView("close");
			
			mav.addObject("urlOpener", "inicio");
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
