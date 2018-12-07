package com.castillo.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;


public class BarController extends AbstractController {
	
	private String view;
	
	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
		
		String path = arg0.getPathInfo();
		
		ModelAndView mav = new ModelAndView(getView()+path.substring(path.indexOf("_")));
		
		String tipo = arg0.getParameter("tipo");
		mav.addObject("tipo", tipo);
		
		mav.addObject("menu", new Integer(1));
		
		return mav;
	}
	
	public String getView() {
		return view;
	}

	public void setView(String view) {
		this.view = view;
	}
	
}
