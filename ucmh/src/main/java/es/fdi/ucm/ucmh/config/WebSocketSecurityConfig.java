package es.fdi.ucm.ucmh.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.messaging.MessageSecurityMetadataSourceRegistry;
import org.springframework.security.config.annotation.web.socket.AbstractSecurityWebSocketMessageBrokerConfigurer;

/**
 * Similar a SecurityConfig, pero para websockets con STOMP.
 * 
 * @author mfreire
 */
@Configuration
public class WebSocketSecurityConfig
      extends AbstractSecurityWebSocketMessageBrokerConfigurer { 

	
    protected void configureInbound(MessageSecurityMetadataSourceRegistry messages) {
        messages
            .simpSubscribeDestMatchers("/topic/admin")	// solo admines pueden suscribirse a este topic
            	.hasRole("ADMIN")
            .anyMessage().authenticated(); 				// todo tiene que proceder de sesiones autenticadas
    }
}