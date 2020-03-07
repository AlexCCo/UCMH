package es.fdi.ucm.ucmh.ApplicationSystem;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.transaction.Transactional;

import es.fdi.ucm.ucmh.model.User;
import es.fdi.ucm.ucmh.transfer.TUser;

public  class UserSA {
	
	@Transactional 
	public int createUser(TUser transfer) {
		Integer id = -1;
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("ficheroXMLDeJPA");
		EntityManager em = emf.createEntityManager();
		User u = new User();
			
		
		em.persist(u);
		
	}


                            
                            
}
