package com.castillo.persist.manager;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.apache.commons.beanutils.PropertyUtils;

import com.castillo.negocio.dao.DAOMensaje;
import com.castillo.negocio.dto.DTOMensaje;
import com.castillo.negocio.utils.NullAwareBeanUtilsBean;
import com.castillo.persist.entities.Mensaje;
import com.castillo.persist.transformer.TransformerMensaje;

@SuppressWarnings("unchecked")
public class ManagerMensaje implements DAOMensaje {

	public ManagerMensaje() {
	
	}
	 
	private EntityManager getEntityManager() {
		return EMF.get().createEntityManager();
	}

	public DTOMensaje create(DTOMensaje mensaje) throws Exception {
		EntityManager em = getEntityManager();
		Mensaje entityMensaje = TransformerMensaje.getInstance().transformDTOToEntity(mensaje);
		try {
			em.getTransaction().begin();
			em.persist(entityMensaje);
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
		return TransformerMensaje.getInstance().transformEntityToDTO(entityMensaje);
	}

	public DTOMensaje remove(long id) throws Exception {
		EntityManager em = getEntityManager();
		Mensaje oldEntityMensaje = new Mensaje();
		try {
			em.getTransaction().begin();
			Mensaje entityMensaje = (Mensaje) em.find(Mensaje.class, id);
			PropertyUtils.copyProperties(oldEntityMensaje, entityMensaje);
			em.remove(em.merge(entityMensaje));
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
		return TransformerMensaje.getInstance().transformEntityToDTO(oldEntityMensaje);
	}
	
	public DTOMensaje update(DTOMensaje mensaje) throws Exception {
		EntityManager em = getEntityManager();
		Mensaje entityMensaje = TransformerMensaje.getInstance().transformDTOToEntity(mensaje);
		Mensaje oldEntityMensaje = null;
		DTOMensaje oldMensaje = null;
		try {
			em.getTransaction().begin();
			oldEntityMensaje = (Mensaje) em.find(Mensaje.class, entityMensaje.getMenId());
			new NullAwareBeanUtilsBean().copyProperties(entityMensaje, oldEntityMensaje);
			oldMensaje = TransformerMensaje.getInstance().transformEntityToDTO(oldEntityMensaje);
			entityMensaje = em.merge(entityMensaje);
			em.getTransaction().commit();
		} catch (Exception ex) {
			try {
				if (em.getTransaction().isActive()) {
					em.getTransaction().rollback();
				}
			} catch (Exception e) {
				throw e;
			}
			throw ex;
		} finally {
			em.close();
		}
		return oldMensaje;
	}

	public DTOMensaje getById(long id) {
		Mensaje entityMensaje = null;
		EntityManager em = getEntityManager();
		try {
			entityMensaje = (Mensaje) em.find(Mensaje.class, id);
		} finally {
			em.close();
		}
		return TransformerMensaje.getInstance().transformEntityToDTO(entityMensaje);
	}

	public List<DTOMensaje> getMensaje() {
		EntityManager em = getEntityManager();
		List<DTOMensaje> result = new ArrayList<DTOMensaje>();
		List<Mensaje> resultQuery = null;
		DTOMensaje mensaje = null;
		try {
			Query query = em.createNamedQuery("getMensaje");
			resultQuery = (List<Mensaje>) query.getResultList();
			for (Mensaje entityMensaje: resultQuery){
				mensaje = TransformerMensaje.getInstance().transformEntityToDTO(entityMensaje);
				result.add(mensaje);
			}
		} finally {
			em.close();
		}
		return result;
	}

	public List<DTOMensaje> getMensajeByMenIdForo(long menIdForo) {
		EntityManager em = getEntityManager();
		List<DTOMensaje> result = new ArrayList<DTOMensaje>();
		List<Mensaje> resultQuery = null;
		DTOMensaje mensaje = null;
		try {
			Query query = em.createNamedQuery("getMensajeByMenIdForo");
			query.setParameter("menIdForo", menIdForo);
			resultQuery = (List<Mensaje>) query.getResultList();
			for (Mensaje entityMensaje: resultQuery){
				mensaje = TransformerMensaje.getInstance().transformEntityToDTO(entityMensaje);
				result.add(mensaje);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			em.close();
		}
		return result;
	}


 }