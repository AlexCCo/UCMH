/**
 * Code made entirely by Alejandro Cancelo Correia as well as message.css and message.html
 * */

/**
 * this will store the last HTMLLIElement representing the last users (left side of
 * the screen) clicked.
 * It is needed for not creating a new WebSocket for the current chat * 
 * */
var last_user_clicked;
var page_owner;
var current_conversation;
var requestData = new XMLHttpRequest();
var messages_list={
		mails_map: new Map(),
		html_holder: ""
	}

/**
 * An object representing the chat screen positioned on the left side of the screen
 * */
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

/**
 * Here we will initialize all variables we need and create all correct listeners
 * */
document.addEventListener("DOMContentLoaded", (event) => {
	page_owner = document.getElementById("user-message-owner").getAttribute("data-user-owner");
	
	chat_box.chat_screen = document.getElementById("chat-box");
	chat_box.chat_name = document.getElementById("user-name-chat");
	
	//client messages
	let my_message_collection = chat_box.chat_screen.getElementsByClassName("message-to");
	
	//Messages from the client are put to the right
	for(let message of my_message_collection){
		message.parentElement.style.cssText = `text-align: end;
												padding-right: 7px;
												margin-left: auto;`;
	}
	
	//list of users who sent a message to us
	let sender_msg_box = document.getElementById("users-collection");
	
	messages_list.html_holder = sender_msg_box;
	
	for(let box of sender_msg_box.children){
		//add to a map of emails
		messages_list.mails_map.set(box.getElementsByClassName("sender-mail")[0].innerText, box);
		
		//add listeners
		box.addEventListener("click", function(event){
				process_box_clicking(event, box);
			});
	}
	
	
	let input_text = document.getElementById("text-input");
	
	//send text
	input_text.addEventListener("keydown", function(key){
		//enter key
		if(key.keyCode === 13 || key.keyCode === 14){
			
			if(last_user_clicked == null){
				return
			}
			
			let now = new Date();
			let last_user_id = last_user_clicked.getElementsByClassName("sender-mail")[0];
			
			console.log("sending message...")
			//send a web socket message
			go(`${config.uri}${last_user_id.innerText}`, 'POST', 
				{msg: input_text.innerText,
				 time: `${now.getUTCFullYear()}-${now.getUTCMonth()+1}-${now.getUTCDate()}-${now.getUTCHours()}-${now.getUTCMinutes()}`
				});
			//update chat
			chat_box.add_message(render_send_HTML_message(input_text.innerText));
		}
	});
	
	//clear input once we sent our text
	input_text.addEventListener("keyup", function(key){
		//enter key
		if(key.keyCode === 13 || key.keyCode === 14){
			input_text.innerHTML = "";
		}
	});
	
	//we will treat the receive event for ws
	let erasable = document.getElementsByClassName("erasable");
	
	for(let erasable_item of erasable){
		console.log(erasable_item);
		erasable_item.style.display = "none";
	}
	
	ws.receive = function (text) {
		
		if(last_user_clicked != null){
			let last_user_mail = last_user_clicked.getElementsByClassName("sender-mail")[0].innerText;
			
			if(last_user_mail === text.from){
				console.log("New message received");
				console.log("Update chat box...")
				receive_message(chat_box.chat_name.innerText, text.text);
				//we are already talking to that user, we don't need to update the left list
				return;
			}
		}
		
		//we know for sure that the last_user_click won't have
		//anything to do with the owner of this message
		
		let obtain_listed = messages_list.mails_map.get(text.from);
		//a new user is writing to us
		if(obtain_listed === undefined){
			messages_list.mails_map.set(text.from, true);
			add_user_to_messages_list(text.name, text.from);
			console.log("New message received");
			return;
		}else{
			//badge with a "new!" string representing we have new messages
			let new_badge = obtain_listed.getElementsByClassName("dirty-flag-box")[0];
			//clear new badge
			new_badge.className = `new badge dirty-flag-box`;
			obtain_listed.getElementsByClassName("initial-content")[0].innerText = "Tienes un nuevo mensaje";
			console.log("New message received");
		}
	};
});

function obtain_messages(origin_element) {
	let sender_mail = origin_element.getElementsByClassName("sender-mail")[0].innerText;
	let uri = `${config.uri}recv/?requestedUserMail=${sender_mail}`;
	
	console.log("Requesting message list...");
	requestData.open('GET', uri);
	requestData.onload = function (){
		for(let item of JSON.parse(requestData.response)){
			if(item.from === config.mail){
				chat_box.add_message(render_send_HTML_message(item.text))
			}else{
				receive_message(chat_box.chat_name.innerText, item.text);
			}
		}
	}
	
	requestData.send();
}

/**
 * It will create the sender message that will be displayed inside the chat box.<br>
 * The sender in this case is the current user of the application.
 * 
 * @param message_text A string containing the text sent by the user
 * 
 * @returns A well constructed string with all the necessary HTML to display 
 * the given message
 * */
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

/**
 * It will create the sender message that will be displayed inside the chat box
 * 
 * @param message_text A string containing the text sent by the user you are
 * talking to
 * 
 * @returns A well constructed string with all the necessary HTML to display 
 * the given message
 * */
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

/**
 * It will receive a message and display it into the chat box
 * */
function receive_message(from_person, message_text){
	//update chat
	chat_box.add_message(render_received_HTML_message(from_person, message_text));
}

function add_user_to_messages_list(sender_name, sender_mail){
	let outer_div = document.createElement("li");
	outer_div.className = "user-info-wrap collection-item avatar";
	
	//<img src="/image/ejemplo.jpg" alt="" class="circle">
	let html_string = `<div class="user-info">
						<span class="new badge dirty-flag-box"></span>
				       	<p>Nombre: <span class="sender-name">${sender_name}</span></p>
				       	<p>Mail: <span class="sender-mail">${sender_mail}</span></p>
				       	<p class="initial-content">Tienes un nuevo mensaje</p>
				       </div>`;
	
	outer_div.innerHTML = html_string;
	outer_div.addEventListener("click", function(event){
		process_box_clicking(event, outer_div);
	});
	messages_list.html_holder.prepend(outer_div);
	
}

function process_box_clicking(event, box){
	console.log(box.getAttribute("data-element-clicked"));
	//data-* here is an attribute controlling if the current element was clicked previously
	if(box.getAttribute("data-element-clicked") == null){
		//badge with a "new!" string representing we have new messages
		let new_badge = box.getElementsByClassName("dirty-flag-box")[0];
		//clear new badge
		new_badge.className = "dirty-flag-box";
		
		if(last_user_clicked != null){
			//set last clicked element to false
			last_user_clicked.toggleAttribute("data-element-clicked");
		}
		
		//clean chat an change chat name
		chat_box.clear_screen();
		chat_box.change_name(box.getElementsByClassName("sender-name")[0].innerText);
		
		//set dirty flag to true
		box.toggleAttribute("data-element-clicked");
		last_user_clicked = box;
		//request message list to the server
		obtain_messages(box);
	}
}
