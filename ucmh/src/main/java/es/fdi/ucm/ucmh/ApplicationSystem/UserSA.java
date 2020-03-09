package es.fdi.ucm.ucmh.ApplicationSystem;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import es.fdi.ucm.ucmh.model.User;
import es.fdi.ucm.ucmh.transfer.TUser;

public class UserSA {

	public int createUser(TUser transfer) {
		Integer id = -1;
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("ucmh");
		EntityManager em = emf.createEntityManager();
		User u = new User();
		em.getTransaction().begin();
		TypedQuery<User> query = em.createQuery("select obj from Conferencia obj where :nombre = obj.nombre",
				User.class);
		query.setParameter(1, transfer.getMail());
		if (query.getResultList().isEmpty()) {
			u.setFirstName(transfer.getFirstName());
			u.setMail(transfer.getMail());
			u.setPhoneNumber(transfer.getPhoneNumber());
			u.setPassword(transfer.getPassword());
			u.setType(transfer.getType());
			u.setSecondName(transfer.getSecondName());

			em.persist(u);
			em.getTransaction().commit();
			return u.getID();
		}
		else {
			em.getTransaction().commit();
			return -1;
		}
		
	}

}
