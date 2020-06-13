package es.fdi.ucm.ucmh;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
//import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.springframework.security.core.Authentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import es.fdi.ucm.ucmh.model.User;
import es.fdi.ucm.ucmh.model.auxiliar.UserType;

/**
 * Called when a user is first authenticated (via login).
 * Called from SecurityConfig; see https://stackoverflow.com/a/53353324
 * 
 * Adds a "u" variable to the session when a user is first authenticated.
 * Important: the user is retrieved from the database, but is not refreshed at each request. 
 * You should refresh the user's information if anything important changes; for example, after
 * updating the user's profile.
 */
@Component
public class LoginSuccessHandler implements AuthenticationSuccessHandler {

    @Autowired 
    private HttpSession session;
    
    @Autowired
    private EntityManager entityManager;    
    
	private static Logger log = LogManager.getLogger(LoginSuccessHandler.class);
	
    /**
     * Called whenever a user authenticates correctly.
     */
    @Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
    	
	    String mail = ((org.springframework.security.core.userdetails.User)
				authentication.getPrincipal()).getUsername();
	    
	    // add a 'u' session variable, accessible from thymeleaf via ${session.u}
	    log.info("Storing user info for {} in session {}", mail, session.getId());
	    
		User u = entityManager.createNamedQuery("User.byMail", User.class)
		        .setParameter("mail", mail)
		        .getSingleResult();		
		session.setAttribute("u", u);
				
		// add a 'ws' session variable
		session.setAttribute("ws", request.getRequestURL().toString()
				.replaceFirst("[^:]*", "ws")		// http[s]://... => ws://...
				.replaceFirst("/[^/]*$", "/ws"));	// .../foo		 => .../ws
		
		// redirects to 'admin' or 'user/{id}', depending on the user
		String redirect = "error";
		if (u.hasRole(UserType.ADMIN)) {
			redirect = "admin/";
		} else if (u.hasRole(UserType.PSY)) {
			redirect = "psy/";
		} else if (u.hasRole(UserType.PAT)) {
			redirect = "user/";
		}
		
		response.sendRedirect(redirect);
	}
}
