package es.fdi.ucm.ucmh.config.spring;

import java.security.Principal;
import java.util.List;
import java.util.Map;

import org.springframework.context.annotation.Configuration;
import org.springframework.http.server.ServerHttpRequest;
import org.springframework.messaging.converter.MessageConverter;
import org.springframework.messaging.handler.invocation.HandlerMethodArgumentResolver;
import org.springframework.messaging.handler.invocation.HandlerMethodReturnValueHandler;
import org.springframework.messaging.simp.config.ChannelRegistration;
import org.springframework.messaging.simp.config.MessageBrokerRegistry;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.config.annotation.EnableWebSocketMessageBroker;
import org.springframework.web.socket.config.annotation.StompEndpointRegistry;
import org.springframework.web.socket.config.annotation.WebSocketMessageBrokerConfigurer;
import org.springframework.web.socket.config.annotation.WebSocketTransportRegistration;
import org.springframework.web.socket.server.support.DefaultHandshakeHandler;


/**
 * This class will only serve the purpose of learning how to configure and implement
 * a websocket broker that can understand STOMP subprotocol.
 * 
 * The web socket support build on top of JSR 356, a java websocket API
 * */
//@Configuration
//@EnableWebSocketMessageBroker
public class SimpleBrokerWebSocketConfig implements WebSocketMessageBrokerConfigurer{

	@Override
    public void configureWebSocketTransport(WebSocketTransportRegistration registration) {
        registration.setSendTimeLimit(15 * 1000).setSendBufferSizeLimit(512 * 1024);
    }

	@Override
	public void registerStompEndpoints(StompEndpointRegistry registry) {
		/*
		 * this end-point will be used by the websocket to stablish a connection.
		 * we also registering it as a websocket that uses STOMP as a subprotocol.
		 * 
		 * if the websocket couldn't be created, we will use SockJS as a fallback
		 */
		
		registry.addEndpoint("/ws-get/")
				.setAllowedOrigins("*")
				.setHandshakeHandler(new CustomWebSocketHandShake());
		//for some strange reason, if i don't register the endpoint like this
		//the client will fail at trying to connect.
		//the message says 
		//failed: Error during WebSocket handshake: Unexpected response code: 200
		//which doesn't even make sense at all
		registry.addEndpoint("/ws-get/")
				.setAllowedOrigins("*")
				.setHandshakeHandler(new CustomWebSocketHandShake())
				.withSockJS();
		
	}

	@Override
	public void configureMessageBroker(MessageBrokerRegistry registry) {
		// /received/ will be the domain handled by our broker 
		registry.enableSimpleBroker("/received/");
		registry.setApplicationDestinationPrefixes("/messages");
	}
	
	
	private class CustomWebSocketHandShake extends DefaultHandshakeHandler {
		private int a = 0;
		
		//we need to create this class because we will need to map out all the users
		@Override
		protected Principal determineUser(ServerHttpRequest request, WebSocketHandler wsHandler,
				Map<String, Object> attributes) {
			System.out.println(System.lineSeparator()+"connected!::: " + request.getHeaders());
			a++;
			return new StompPrincipal("hola" + a);
		}
		
	}
	
	private class StompPrincipal implements Principal {
	    private String name;

	    public StompPrincipal(String name) {
	        this.name = name;
	    }

	    @Override
		public String getName() {
	        return name;
	    }
	}
	
}
