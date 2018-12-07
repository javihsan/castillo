package com.castillo.persist.manager;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.apache.commons.beanutils.PropertyUtils;

import com.castillo.negocio.dao.DAOWeb;
import com.castillo.negocio.dto.DTOWeb;
import com.castillo.negocio.utils.NullAwareBeanUtilsBean;
import com.castillo.persist.entities.Web;
import com.castillo.persist.transformer.TransformerWeb;

@SuppressWarnings("unchecked")
public class ManagerWeb implements DAOWeb {

	public ManagerWeb() {

	}

	private EntityManager getEntityManager() {
		return EMF.get().createEntityManager();
	}

	public DTOWeb create(DTOWeb web) throws Exception {
		EntityManager em = getEntityManager();
		Web entityWeb = TransformerWeb.getInstance().transformDTOToEntity(web);
		try {
			em.getTransaction().begin();
			em.persist(entityWeb);
			em.getTransaction().commit();
		} catch (Exception ex) {
			try {
				if (em.getTransaction().isActive()) {
					em.getTransaction().rollback();
				}
			} catch (Exception e) {
				ex.printStackTrace();
				throw e;
			}
			throw ex;
		} finally {
			em.close();
		}
		return TransformerWeb.getInstance().transformEntityToDTO(entityWeb);
	}

	public DTOWeb remove(long id) throws Exception {
		EntityManager em = getEntityManager();
		Web oldEntityWeb = new Web();
		try {
			em.getTransaction().begin();
			Web entityWeb = (Web) em.find(Web.class, id);
			PropertyUtils.copyProperties(oldEntityWeb, entityWeb);
			em.remove(em.merge(entityWeb));
			em.getTransaction().commit();
		} catch (Exception ex) {
			try {
				if (em.getTransaction().isActive()) {
					em.getTransaction().rollback();
				}
			} catch (Exception e) {
				ex.printStackTrace();
				throw e;
			}
			throw ex;
		} finally {
			em.close();
		}
		return TransformerWeb.getInstance().transformEntityToDTO(oldEntityWeb);
	}

	public DTOWeb update(DTOWeb web) throws Exception {
		EntityManager em = getEntityManager();
		Web entityWeb = TransformerWeb.getInstance().transformDTOToEntity(web);
		Web oldEntityWeb = null;
		DTOWeb oldWeb = null;
		try {
			em.getTransaction().begin();
			oldEntityWeb = (Web) em.find(Web.class, entityWeb.getWebId());
			new NullAwareBeanUtilsBean().copyProperties(entityWeb, oldEntityWeb);
			oldWeb = TransformerWeb.getInstance().transformEntityToDTO(oldEntityWeb);
			entityWeb = em.merge(entityWeb);
			em.getTransaction().commit();
		} catch (Exception ex) {
			try {
				if (em.getTransaction().isActive()) {
					em.getTransaction().rollback();
				}
			} catch (Exception e) {
				ex.printStackTrace();
				throw e;
			}
			throw ex;
		} finally {
			em.close();
		}
		return oldWeb;
	}
	
	public DTOWeb getById(long id) {
		EntityManager em = getEntityManager();
		Web entityWeb = null;
		try {
			entityWeb = (Web) em.find(Web.class, id);
		} finally {
			em.close();
		}
		return TransformerWeb.getInstance().transformEntityToDTO(entityWeb);
	}

	public List<DTOWeb> getWeb() {
		EntityManager em = getEntityManager();
		List<DTOWeb> result = new ArrayList<DTOWeb>();
		List<Web> resultQuery = null;
		try {
			Query query = em.createNamedQuery("getWeb");
			resultQuery = (List<Web>) query.getResultList();
			for (Web entityWeb : resultQuery) {
				result.add(TransformerWeb.getInstance().transformEntityToDTO(entityWeb));
			}
		} finally {
			em.close();
		}
		return result;
	}
	
	public DTOWeb getWebByWebParametro(String webParametro) {
		EntityManager em = getEntityManager();
		Web entityWeb = null;
		try {
			Query query = em.createNamedQuery("getWebByWebParametro");
			query.setParameter("webParametro", webParametro);
			List<Web> list = query.getResultList();
			if (list.size()==0) return null;
			entityWeb = (Web) list.get(0);
			
		} finally {
			em.close();
		}
		return TransformerWeb.getInstance().transformEntityToDTO(entityWeb);
	} 

	
	public DTOWeb getWebBBDDByWebParametro(String webParametro) {
		EntityManager em = getEntityManager();
		Web entityWeb = null;
		try {
			Query query = em.createNamedQuery("getWebBBDDByWebParametro");
			query.setParameter("webParametro", webParametro);
			List<Web> list = query.getResultList();
			if (list.size()==0) return null;
			entityWeb = (Web) list.get(0);
			
		} finally {
			em.close();
		}
		return TransformerWeb.getInstance().transformEntityToDTO(entityWeb);
	}
}