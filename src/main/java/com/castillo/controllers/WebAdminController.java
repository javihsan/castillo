package com.castillo.controllers;

import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.castillo.negocio.dao.DAOWeb;
import com.castillo.negocio.dto.DTOWeb;
import com.castillo.persist.manager.ManagerWeb;
import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.blobstore.BlobstoreService;
import com.google.appengine.api.blobstore.BlobstoreServiceFactory;
import com.google.appengine.api.datastore.Text;

public class WebAdminController extends AbstractController {

	@Autowired
	protected DAOWeb webManager;
	
	private Map viewMap;
	private String view;
	private String path;
	private Map paramMap;
	private String param;
	
	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
	
		String path = arg0.getRequestURI().toLowerCase();
		
		Set setKeys = getViewMap().keySet();
		for (Object key : setKeys) {
			if (path.indexOf((String)key)!=-1){
				setView((String)getViewMap().get(key));
				setParam((String)getParamMap().get(key));
				setPath((String)key);
				break;
			}
		}
	
		
		if (path.indexOf(ControllerConstants.EDIT.toLowerCase())!=-1){
			return webEdit(arg0,arg1);
		}
		if (path.indexOf(ControllerConstants.UPDATE.toLowerCase())!=-1){
			return webUpdate(arg0,arg1);
		}
		if (path.indexOf(ControllerConstants.DOWNLOAD.toLowerCase())!=-1){
			return webDownload(arg0,arg1);
		}
		
		return webEdit(arg0,arg1);

	}
	
	private ModelAndView webEdit(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {

		DTOWeb web = webManager.getWebBBDDByWebParametro(getParam());
		
		if (web == null){ // New
			
			web = new DTOWeb();
			web.setWebParametro(getParam());
	        
			webManager = new ManagerWeb();
			web = webManager.create(web);
		}

		
		ModelAndView mav = new ModelAndView(getView()+ControllerConstants.EDIT);
		
		mav.addObject("web", web);
		mav.addObject("urlRedirect", getPath()+"-"+ControllerConstants.UPDATE.toLowerCase());
		
		return mav;
	}
	
	private ModelAndView webUpdate(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
		
		Long webId = Long.valueOf(arg0.getParameter("webId"));

		String webValorFile = (String)arg0.getAttribute("webValorFile");
		if (arg0.getParameter("webValorFileDelete")!=null){
			webValorFile = "";
		}	
		Text webValor = arg0.getParameter("webValor")!=null?new Text(arg0.getParameter("webValor")):null;
		
		Integer webActivado = 0;
		if (arg0.getParameter("webActivado")!=null){
			webActivado = 1;
		}
		
		DTOWeb web = new DTOWeb();
		web.setWebId(webId);
        web.setWebValorFile(webValorFile);
        web.setWebValor(webValor);
        web.setWebActivado(webActivado);
        
        web = webManager.update(web);
        
        if (arg0.getParameter("webValorFileDelete")!=null){
			if (web.getWebValorFile()!=null){
				BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService(); 
				blobstoreService.delete(new BlobKey(web.getWebValorFile()));
			}
		}
        
        arg1.sendRedirect("/web/inicioAdmin");
	        
		return null;
	}
	
	private ModelAndView webDownload(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
		
		DTOWeb web = webManager.getWebByWebParametro(getParam());
        
		if (web != null && web.getWebValorFile()!= null && web.getWebValorFile()!= ""){ 
			
			arg1.sendRedirect("/vcardServe?blob-key="+web.getWebValorFile());
		}
	        
		return null;
	}
	
	public Map getViewMap() {
		return viewMap;
	}

	public void setViewMap(Map viewMap) {
		this.viewMap = viewMap;
	}

	
	public String getView() {
		return view;
	}

	public void setView(String view) {
		this.view = view;
	}

	
	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public Map getParamMap() {
		return paramMap;
	}

	public void setParamMap(Map paramMap) {
		this.paramMap = paramMap;
	}

	public String getParam() {
		return param;
	}

	public void setParam(String param) {
		this.param = param;
	}
	
	
}
