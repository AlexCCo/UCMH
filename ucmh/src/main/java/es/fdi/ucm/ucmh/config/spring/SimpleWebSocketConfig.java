package es.fdi.ucm.ucmh.config.spring;


import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.messaging.simp.config.MessageBrokerRegistry;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.WebSocketMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.springframework.web.socket.config.annotation.EnableWebSocketMessageBroker;
import org.springframework.web.socket.config.annotation.StompEndpointRegistry;
import org.springframework.web.socket.config.annotation.WebSocketConfigurer;
import org.springframework.web.socket.config.annotation.WebSocketHandlerRegistry;
import org.springframework.web.socket.config.annotation.WebSocketMessageBrokerConfigurer;
import org.springframework.web.socket.handler.TextWebSocketHandler;


/**
 * This class will only serve the purpose of learning how to configure and implement
 * a plain websocket, a websocket without any subprotocol to work with.
 * 
 * The web socket support build on top of JSR 356, a java websocket API
 * */
//@Configuration
//@EnableWebSocket
public class SimpleWebSocketConfig implements WebSocketConfigurer {
	
	@Override
	public void registerWebSocketHandlers(WebSocketHandlerRegistry registry) {
		/*
		 * al the messages that go into the specified end-point (/ws-get), will be
		 * treated by EchoHandler's class which implements WebSocketHandler interfaces.
		 * 
		 * This implementation will allow you to take more control about what to do
		 * with websocket sessions but, Spring have created some abstract class to help
		 * you ease the hard work which are TextWebSocketHandler and BinaryWebSocketHandler
		 * */
		
		registry.addHandler(echoCreation(), "/socket/ws-get").withSockJS();
	}
	
	public EchoHandler echoCreation() {
		return new EchoHandler();
	}
  
	private static class EchoHandler extends TextWebSocketHandler{
		
		//is a thread-safe array list implementation
		private List<WebSocketSession> sessions = new CopyOnWriteArrayList<WebSocketSession>();
		
		@Override
		public void afterConnectionEstablished(WebSocketSession session) throws Exception {
			sessions.add(session);
			System.out.println(System.lineSeparator() + "Plain websockets alive: " + sessions.size());
			session.sendMessage(new TextMessage("welcome again boy"));
		}
		
		/**
		 * This method will be invoked every time a client send us a message.
		 * We use this method because we need to manage text message because of the nature 
		 * of our websocket handler
		 * */
		@Override
		protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
			//we will implement an echo websocket
			for(WebSocketSession sess: sessions) {
				if(session.getId().equals(sess.getId())) {
					sess.sendMessage(message);
				}
			}
		}

		@Override
		public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
			if(sessions.remove(session)) {
				System.out.println(System.lineSeparator() + "Session: " + session.getId() + " CLOSED");
				System.out.println(System.lineSeparator() + "Session close status: " + status.getCode());
			}
		}
		
		
		
	}
}
