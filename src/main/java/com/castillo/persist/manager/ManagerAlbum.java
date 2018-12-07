package com.castillo.persist.manager;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.apache.commons.beanutils.PropertyUtils;

import com.castillo.negocio.dao.DAOAlbum;
import com.castillo.negocio.dto.DTOAlbum;
import com.castillo.negocio.utils.NullAwareBeanUtilsBean;
import com.castillo.persist.entities.Album;
import com.castillo.persist.transformer.TransformerAlbum;

@SuppressWarnings("unchecked")
public class ManagerAlbum implements DAOAlbum {

	public ManagerAlbum() {
	
	}
	 
	private EntityManager getEntityManager() {
		return EMF.get().createEntityManager();
	}

	public DTOAlbum create(DTOAlbum album) throws Exception {
		EntityManager em = getEntityManager();
		Album entityAlbum = TransformerAlbum.getInstance().transformDTOToEntity(album);
		try {
			em.getTransaction().begin();
			em.persist(entityAlbum);
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
		return TransformerAlbum.getInstance().transformEntityToDTO(entityAlbum);
	}

	public DTOAlbum remove(long id) throws Exception {
		EntityManager em = getEntityManager();
		Album oldEntityAlbum = new Album();
		try {
			em.getTransaction().begin();
			Album entityAlbum = (Album) em.find(Album.class, id);
			PropertyUtils.copyProperties(oldEntityAlbum, entityAlbum);
			em.remove(em.merge(entityAlbum));
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
		return TransformerAlbum.getInstance().transformEntityToDTO(oldEntityAlbum);
	}

	public DTOAlbum update(DTOAlbum album) throws Exception {
		EntityManager em = getEntityManager();
		Album entityAlbum = TransformerAlbum.getInstance().transformDTOToEntity(album);
		Album oldEntityAlbum = null;
		DTOAlbum oldAlbum = null;
		try {
			em.getTransaction().begin();
			oldEntityAlbum = (Album) em.find(Album.class, entityAlbum.getAlbId());
			new NullAwareBeanUtilsBean().copyProperties(entityAlbum, oldEntityAlbum);
			oldAlbum = TransformerAlbum.getInstance().transformEntityToDTO(oldEntityAlbum);
			entityAlbum = em.merge(entityAlbum);
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
		return oldAlbum;
	}

	public DTOAlbum getById(long id) {
		EntityManager em = getEntityManager();
		Album entityAlbum = null;
		try {
			entityAlbum = (Album) em.find(Album.class, id);
		} finally {
			em.close();
		}
		return TransformerAlbum.getInstance().transformEntityToDTO(entityAlbum);
	}

	public List<DTOAlbum> getAlbum() {
		EntityManager em = getEntityManager();
		List<DTOAlbum> result = new ArrayList<DTOAlbum>();
		List<Album> resultQuery = null;
		try {
			Query query = em.createNamedQuery("getAlbum");
			resultQuery = (List<Album>) query.getResultList();
			for (Album entityAlbum : resultQuery) {
				result.add(TransformerAlbum.getInstance().transformEntityToDTO(entityAlbum));
			}
		} finally {
			em.close();
		}
		return result;
	}

	public List<DTOAlbum> getAlbumAdmin() {
		EntityManager em = getEntityManager();
		List<DTOAlbum> result = new ArrayList<DTOAlbum>();
		List<Album> resultQuery = null;
		try {
			Query query = em.createNamedQuery("getAlbumAdmin");
			resultQuery = (List<Album>) query.getResultList();
			for (Album entityAlbum : resultQuery) {
				result.add(TransformerAlbum.getInstance().transformEntityToDTO(entityAlbum));
			}
		} finally {
			em.close();
		}
		return result;
	}
	
 }