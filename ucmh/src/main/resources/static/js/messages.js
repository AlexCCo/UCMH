/**
 * Code made entirely by Alejandro Cancelo Correia as well as message.css and message.html
 * */

/**
 * this will store the last HTMLLIElement representing the last users (left side of
 * the screen) clicked.
 * It is needed for not creating a new WebSocket for the current chat * 
 * */
var last_user_clicked;
var connection;
var stompClient;
var page_owner;
var chat_box = {
		chat_name: null,
		chat_screen: null,
		
		change_name: function(name_text){
			this.chat_name.innerText = name_text;
		},
		
		clear_screen: function(){
			this.chat_screen.innerHTML = "";
		},
		
		add_message: function(html_text){
			//faster an safer than innerHTML https://developer.mozilla.org/en-US/docs/Web/API/Element/insertAdjacentHTML
			this.chat_screen.insertAdjacentHTML("beforeend", html_text);
			/*
			 * it is needed to always have the scroll at the chat's end
			 * reference:
			 * https://developer.mozilla.org/en-US/docs/Web/API/Element/scrollTop
			 * https://developer.mozilla.org/en-US/docs/Web/API/Element/scrollHeight
			 * 
			 * */
			this.chat_screen.scrollTop = chat_box.scrollHeight;
		}
};

document.addEventListener("DOMContentLoaded", (event) => {
	page_owner = document.getElementById("user-message-owner").getAttribute("data-user-owner");
	
	chat_box.chat_screen = document.getElementById("chat-box");
	chat_box.chat_name = document.getElementById("user-name-chat");
	
	let my_message_collection = chat_box.chat_screen.getElementsByClassName("message-to");
	
	//Messages from the client are put to the right
	for(let message of my_message_collection){
		message.parentElement.style.cssText = `text-align: end;
												padding-right: 7px;
												margin-left: auto;`;
	}
	
	let sender_msg_box = document.getElementsByClassName("user-info-wrap");
	
	for(let box of sender_msg_box){
		box.addEventListener("click", function(event){
			console.log(box.getAttribute("data-element-clicked"));
			/*
			 * i could store the last messages in localStorage or sessionStorage, research it
			 * https://developer.mozilla.org/en-US/docs/Web/API/Window/localStorage
			 * https://developer.mozilla.org/en-US/docs/Web/API/Window/sessionStorage
			 */
			if(box.getAttribute("data-element-clicked") == null){
				
				if(last_user_clicked != null){
					//set to false
					last_user_clicked.toggleAttribute("data-element-clicked");
					//close current websocket
					stompClient.deactivate();
				}
				//clean chat an change chat name
				chat_box.clear_screen();
				chat_box.change_name(box.getElementsByClassName("sender-name")[0].innerText);
				
				//set dirty flag to true
				box.toggleAttribute("data-element-clicked");
				last_user_clicked = box;
				//request a new websocket session
				obtain_messages(box);
			}
		});
	}
	
	let input_text = document.getElementById("text-input");
	
	//send text
	input_text.addEventListener("keydown", function(key){
		//enter key
		if(key.keyCode === 13 || key.keyCode === 14){
			let now = new Date();
			go("", 'POST', {msg:	input_text.innerText,
				time: `${now.getUTCFullYear()}-${now.getUTCMonth()+1}-${now.getUTCDate()}-${now.getUTCHours()}-${now.getUTCMinutes()}-${now.getUTCSeconds()}`
				});
			//send_message(chat_box.chat_name.innerText, input_text.innerText);
		}
	});
	
	//clear input
	input_text.addEventListener("keyup", function(key){
		//enter key
		if(key.keyCode === 13 || key.keyCode === 13){
			input_text.innerHTML = "";
		}
	});
	
	let erasable = document.getElementsByClassName("erasable");
	
	for(let erasable_item of erasable){
		console.log(erasable_item);
		erasable_item.style.display = "none";
	}
	
	ws.receive = function (text) {
		console.log("received message executed in message.js")
		console.log(text);
	};
});

function obtain_messages(origin_element) {
	let sender_name = origin_element.getElementsByClassName("sender-name")[0];
	let new_badge = origin_element.getElementsByClassName("dirty-flag-box")[0];
	let broker_uri;
	
	if(window.location.protocol === "http:"){
		broker_uri = `ws://${document.location.host}/ws-get/`;
	}
	else if(window.location.protocol === "https:"){
		broker_uri = `wss://${document.location.host}/ws-get/`;
	}

	/*
	 * this will create a connection using STOMP as a subprotocol
	 * reference: 
	 * https://stomp-js.github.io/api-docs/latest/classes/Stomp.html
	 * https://stomp-js.github.io/guide/stompjs/using-stompjs-v5.html
	 * https://stomp-js.github.io/guide/stompjs/rx-stomp/ng2-stompjs/using-stomp-with-sockjs.html
	 * */
    stompClient = new StompJs.Client({
        brokerURL: broker_uri,
        connectHeaders: {
          login: page_owner,
          passcode: "password"
        },
        debug: function (str) {
          console.log(str);
        },
        reconnectDelay: 5000,
        heartbeatIncoming: 4000,
        heartbeatOutgoing: 4000
      });
    
    // Fallback code
    if (typeof WebSocket !== 'function') {
    	// For SockJS you need to set a factory that creates a new SockJS instance
        // to be used for each (re)connect	
		/*
		 * this will create the websocket and try to connect to the uri endpoint
		 * only if it is supported, if its not supported, SockJS will try to 
		 * emulate that behavior
		 * reference:
		 * https://github.com/sockjs/sockjs-client
		 * */
    	client.webSocketFactory = function () {
    		// Note that the URL is different from the WebSocket URL 
    		return new SockJS(broker_uri);
    	};
    }
    
    //when the connection is active, this function will be called
    stompClient.onConnect = function(frame){
    	//All the subscribes must be done in here
    	console.log(`Stomp onConnect: ${frame}`);
    	
    	/*
    	 * we tell the broker we want to listen every message sent to the given
    	 * particular end-point. When a message comes, the callback will be triggered
    	 * */
    	stompClient.subscribe("/user/queue/private", function(message){
    		console.log(`Message receive by the broker: ${message}`);
    		receive_message(chat_box.chat_name.innerText, message);
    	});
    	
    }
    
    stompClient.onStompError = function (frame) {
        // Will be invoked in case of error encountered at Broker
        // Bad login/passcode typically will cause an error
        // Complaint brokers will set `message` header with a brief message. Body may contain details.
        // Compliant brokers will terminate the connection after any error
        console.log(`Broker reported error: ${frame.headers['message']}`);
        console.log(`Additional details: ${frame.body}`);
      };
      
    
    stompClient.onDisconnect = function(frame){
    	console.log(`Stomp onDisconnect: ${frame}`);
    }
    
    //it will start the connection with the broker, if the connection breaks it will try it again
    stompClient.activate();
    
    //initialize_websocket();
	//clear new badge
	new_badge.className = "dirty-flag-box";
}

function initialize_websocket(){

    //we tell what to do when the websocket_connection change to OPEN
	connection.onopen = function(){
	/*
	readyState values:
	0	CONNECTING	Socket has been created. The connection is not yet open.
    1	OPEN	The connection is open and ready to communicate.
    2	CLOSING	The connection is in the process of closing.
    3	CLOSED	The connection is closed or couldn't be opened.
	*/
		console.log(`WebSocket state: ${connection.readyState}`);
	}
	
    //we tell what to do when the websocket_connection change to CLOSED
	connection.onclose = function(){
		console.log(`WebSocket state: ${connection.readyState}`);
		console.log("Connection closed");
	}
    
    /*
    we don't know what kind of errors might occurs, maybe the connection was
    halted for some reason like the server went down or maybe the client
    Internet went down so we can't keep with the connection, what we 
    know is whatever error occurs, it will trigger an error event which
    will be handled by this property
    */
	connection.onerror = function(event){
		console.log("Some error occurred in websocket_connection");
		console.log("Error event:");
		console.log(event);
	}
	
	/*
	when the server sends a message, it will trigger a MessageEvent which
	will be handled by this property
	*/
	connection.onmessage = function(message){
		console.log(`The server sent: ${message.data}`);
		receive_message("paco", message.data);
	}
}

function render_send_HTML_message(message_text){
	let html_string = `<div class="message-wrap" style="text-align: end; padding-right: 7px; margin-left: auto;">
							<div class="message-to">
								<div class="message-owner">tu</div>
								<div class="message-content">
									${message_text}
								</div>
							</div>
						</div>`;
	return html_string;
}

function render_received_HTML_message(owner, message_text){
	let html_string = `<div class="message-wrap">
							<div class="message-from">
								<div class="message-owner">${owner}</div>
								<div class="message-content">
									${message_text}
								</div>
							</div>
						</div>`;
	return html_string;
}

function send_message(to_person, text){
	console.log(`sending message: ${text}`);
	//send to the websocket
	stompClient.publish({
		destination: `/user/${to_person}/queue/private`, 
		headers: {},
		body: text
	});
	//update chat
	chat_box.add_message(render_send_HTML_message(text));
}

function receive_message(from_person, message_text){
	//update chat
	chat_box.add_message(render_received_HTML_message(from_person, message_text));
}
