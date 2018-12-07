package com.castillo.controllers;

import java.util.Date;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.castillo.negocio.dao.DAOAlbum;
import com.castillo.negocio.dto.DTOAlbum;
import com.castillo.negocio.utils.Utils;
import com.castillo.persist.manager.ManagerAlbum;
import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.blobstore.BlobstoreService;
import com.google.appengine.api.blobstore.BlobstoreServiceFactory;

public class AlbumController extends AbstractController {

	private String view;

	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {

		String path = arg0.getPathInfo();
		
		if (path.indexOf(ControllerConstants.LIST)!=-1){
			return albumList(arg0,arg1);
		}/*
		if (path.indexOf(ControllerConstants.VIEW)!=-1){
			return albumView(arg0,arg1);
		}*/
		if (path.indexOf(ControllerConstants.ADMIN)!=-1){
			return albumAdmin(arg0,arg1);
		}
		if (path.indexOf(ControllerConstants.NEW)!=-1){
			return albumNew(arg0,arg1);
		}
		if (path.indexOf(ControllerConstants.EDIT)!=-1){
			return albumEdit(arg0,arg1);
		}
		if (path.indexOf(ControllerConstants.UPDATE)!=-1){
			return albumUpdate(arg0,arg1);
		}
		if (path.indexOf(ControllerConstants.REMOVE)!=-1){
			return albumRemove(arg0,arg1);
		}

		return null;
	}
	
	private ModelAndView albumList(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
		
		DAOAlbum albumManager = new ManagerAlbum();
		List<DTOAlbum> vAlbum = albumManager.getAlbum();

		ModelAndView mav = new ModelAndView(getView()+ControllerConstants.LIST);
		mav.addObject("vAlbum", vAlbum);
		
		return mav;

	}
	/*
	private ModelAndView albumView(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
		
		Long id = Long.parseLong(arg0.getParameter("id"));
		
		DAOAlbum albumManager = new ManagerAlbum();
		DTOAlbum album = albumManager.getById(id);

		ModelAndView mav = new ModelAndView(getView()+ControllerConstants.VIEW);
		mav.addObject("album", album);
		
		return mav;

	}*/
	
	private ModelAndView albumAdmin(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
		
		DAOAlbum albumManager = new ManagerAlbum();
		List<DTOAlbum> vAlbum = albumManager.getAlbumAdmin();

		ModelAndView mav = new ModelAndView(getView()+ControllerConstants.ADMIN);
		mav.addObject("vAlbum", vAlbum);
		
		return mav;

	}
	
	private ModelAndView albumNew(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
		
		ModelAndView mav = null;
		
		String albNombre = arg0.getParameter("albNombre");
		
		if (albNombre!=null){ // New
			
			String fecha = arg0.getParameter("albFecha");
			Date albFecha = Utils.getDate(fecha);
	      	        
	        Integer albActivado = 0;
			if (arg0.getParameter("albActivado")!=null){
				albActivado = 1;
			}
	        
			String albFichero = (String)arg0.getAttribute("albFichero");
			
			String albImagen = (String)arg0.getAttribute("albImagen");
			
	        DTOAlbum album = new DTOAlbum();
	        album.setAlbNombre(albNombre);
	        album.setAlbActivado(albActivado);
	        album.setAlbFecha(albFecha);
	        album.setAlbFichero(albFichero);
	        album.setAlbImagen(albImagen);
	        
	        DAOAlbum albumManager = new ManagerAlbum();
	        albumManager.create(album);
	        
	        arg1.sendRedirect("/web/"+getView().toLowerCase()+ControllerConstants.ADMIN);
	        
		} else { // Form
			
			mav = new ModelAndView(getView()+ControllerConstants.EDIT);
			
			mav.addObject("urlRedirect", getView().toLowerCase()+ControllerConstants.NEW);
		}
		
		return mav;

	}
	
	private ModelAndView albumEdit(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {

		Long id = Long.parseLong(arg0.getParameter("id"));
		
		DAOAlbum albumManager = new ManagerAlbum();
		DTOAlbum album = albumManager.getById(id);
		
		ModelAndView mav = new ModelAndView(getView()+ControllerConstants.EDIT);
		
		mav.addObject("album", album);
		
		mav.addObject("urlRedirect", getView().toLowerCase()+ControllerConstants.UPDATE);
		
		return mav;
	}
	
	private ModelAndView albumUpdate(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
		
		Long albId = Long.valueOf(arg0.getParameter("albId"));
		
		String albNombre = arg0.getParameter("albNombre");
			
		String fecha = arg0.getParameter("albFecha");
		Date albFecha = Utils.getDate(fecha);

		Integer albActivado = 0;
		if (arg0.getParameter("albActivado")!=null){
			albActivado = 1;
		}
        
		String albFichero = (String)arg0.getAttribute("albFichero");
		
		String albImagen = (String)arg0.getAttribute("albImagen");
		
        DTOAlbum album = new DTOAlbum();
        album.setAlbId(albId);
        album.setAlbNombre(albNombre);
        album.setAlbActivado(albActivado);
        album.setAlbFecha(albFecha);
       	album.setAlbFichero(albFichero);
       	album.setAlbImagen(albImagen);	
                
        DAOAlbum albumManager = new ManagerAlbum();
        albumManager.update(album);
        
        arg1.sendRedirect("/web/"+getView().toLowerCase()+ControllerConstants.ADMIN);
	        
		return null;
	}
	
	private ModelAndView albumRemove(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {

		String nameParam = null;
		int indx = 0;
		Long id = null;
		DTOAlbum album = null;
		DAOAlbum albumManager = null;
		BlobstoreService blobstoreService = null;
		for (Enumeration params = arg0.getParameterNames(); params.hasMoreElements();) {
			nameParam = (String) params.nextElement();
			indx = nameParam.indexOf(ControllerConstants.SELECTOR);
			if (indx != -1){
				id = Long.parseLong(nameParam.substring(ControllerConstants.SELECTOR.length()));
				if (albumManager==null){
					albumManager = new ManagerAlbum();
					blobstoreService = BlobstoreServiceFactory	.getBlobstoreService();
				}
				album = albumManager.remove(id);
				blobstoreService.delete(new BlobKey(album.getAlbFichero()));
				blobstoreService.delete(new BlobKey(album.getAlbImagen()));
			}
		}
	
		arg1.sendRedirect("/web/"+getView().toLowerCase()+ControllerConstants.ADMIN);
		
		return null;

	}
	
	public String getView() {
		return view;
	}

	public void setView(String view) {
		this.view = view;
	}

}
