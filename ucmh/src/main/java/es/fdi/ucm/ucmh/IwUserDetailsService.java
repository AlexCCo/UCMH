package es.fdi.ucm.ucmh;

import java.util.ArrayList;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import es.fdi.ucm.ucmh.model.User;


public class IwUserDetailsService implements UserDetailsService {

	private static Logger log = LogManager.getLogger(IwUserDetailsService.class);

    private EntityManager entityManager;
    
    @PersistenceContext
    public void setEntityManager(EntityManager em){
        this.entityManager = em;
    }

    public UserDetails loadUserByUsername(String username){
    	try {
	        User u = entityManager.createNamedQuery("User.byUsername", User.class)
                    .setParameter("username", username)
                    .getSingleResult();
	        // build UserDetails object
	        ArrayList<SimpleGrantedAuthority> roles = new ArrayList<>();

			switch (u.getType()) {
				case ADMIN:
					roles.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
					break;
				case PSY:
					roles.add(new SimpleGrantedAuthority("ROLE_PSY"));
					break;
				default:
					throw new IllegalArgumentException("No roles found for user " + u);
			}
			roles.add(new SimpleGrantedAuthority("ROLE_USER"));
	        return new org.springframework.security.core.userdetails.User(
	        		u.getMail(), u.getPassword(), roles); 
	    } catch (Exception e) {
    		log.info("No such user: " + username + "(e = " + e.getMessage() + ")");
    		throw new UsernameNotFoundException(username);
    	}
    }
}