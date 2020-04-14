const user_types = {
	PSYCHOLOGIST: "PSY",
	PATIENT: "USER"
};

const user_methods = {
		MORE: "more",
		LESS: "less"
};

const error_map_msg = {
		"id": "Debe ser un numero",
		"name": "El campo acepta solo letras",
		"surname": "El campo acepta solo letras",
		"mail": "Introduce un email valido, ejemplo: algunmail@gmail.com",
		"phone": "Tiene que tener nueve numeros",
		"pass": "Minimo 8 numeros y letras"
};

var requestData = new XMLHttpRequest();
var patien_collection = document.getElementById("patient-collection");
var psychologist_collection = document.getElementById("psychologist-collection");
var browser_collection = document.getElementById("browser-collection");

document.addEventListener("DOMContentLoaded", (event) => {
	console.log("Dom loaded!");
	
	//all of these are buttons
	let less_patiens = document.getElementById("less-patiens");
	let more_patiens = document.getElementById("more-patiens");
	let less_psychologists = document.getElementById("less-psychologists");
	let more_psychologists = document.getElementById("more-psychologists");
	
	let delete_pat_btn = document.getElementsByClassName("delete-pat");
	let delete_psy_btn = document.getElementsByClassName("delete-psy");
	
	let browse_btn = document.getElementById("user-browser-browse-button");
	
	let accept_register_btn = document.getElementsByClassName("accept-user");
	
	let reject_user_btn = document.getElementsByClassName("reject-user");
	
	for(const rjt_btn of reject_user_btn){
		rjt_btn.addEventListener("click", (e) => {
			clean_error_msg("pat", true);
			clean_error_msg("psy", true);
		})
	}
	
	for(let accept of accept_register_btn){
		accept.addEventListener("click", (e) => {
			accept_handler(accept.id);
		});
	}
	
	browse_btn.addEventListener("click", (e) => {
		get_users_by_name();
	});
	
	for(let btn of delete_pat_btn){
		btn.addEventListener("click", (e) => {
			delete_btn_handler(user_types.PATIENT, btn)
		})
	}
	
	for(let btn of delete_psy_btn){
		btn.addEventListener("click", (e) => {
			delete_btn_handler(user_types.PSYCHOLOGIST, btn)
		})
	}
	
	less_patiens.addEventListener("click", (e) => {
		get_users(user_types.PATIENT, user_methods.LESS);
	});
	less_psychologists.addEventListener("click", (e) => {
		get_users(user_types.PSYCHOLOGIST, user_methods.LESS)
	});
	
	more_patiens.addEventListener("click", (e) => {
		get_users(user_types.PATIENT, user_methods.MORE);
	});
	more_psychologists.addEventListener("click", (e) => {
		get_users(user_types.PSYCHOLOGIST, user_methods.MORE);
	});
});

/**
 * It will retrieve all user of one type and show them in packages. To accomplish
 * this functionality it will do an AJAX request.<br>
 * The number of users to show is decided by the server.
 * 
 * @param userType Type of user you want to retrieve.<br>
 * It can be <i>patients</i> of <i>psychologists</i>
 * @param userMethod Method to use. This parameter allows you to retrieve 
 * the <i>previous</i> package of users or the <i>next</i> one
 * */

function get_users(userType, userMethod){
	//prepare the request object to get json data
	let uri = `${document.URL}/users-list-${userType}-${userMethod}`;
	let html_collection;
	
	requestData.open('GET', uri);
	
	if(userType === user_types.PATIENT){
		html_collection = patien_collection;
		console.log(html_collection);
	}
	else if(userType === user_types.PSYCHOLOGIST){
		html_collection = psychologist_collection;
		console.log(html_collection);
	}
	else{
		html_collection = "";
		console.log(html_collection);
	}
	
	//tell what to do once the data is loaded
	requestData.onload = function() {
		
		registerHTMLItems(html_collection, requestData.responseText);

		if(userType === user_types.PATIENT){
			let buttons = html_collection.getElementsByClassName("delete-pat");
			
			for(let btn of buttons){
				btn.addEventListener("click", (e) => {
					delete_btn_handler(user_types.PATIENT, btn)
				})
			}
		}
		else if(userType === user_types.PSYCHOLOGIST){
			let buttons = html_collection.getElementsByClassName("delete-psy");
			
			for(let btn of buttons){
				btn.addEventListener("click", (e) => {
					delete_btn_handler(user_types.PSYCHOLOGIST, btn)
				})
			}
		}
	}
	//send the request
	requestData.send();
}

/**
 * It will create HTML elements and adds them into the document. Each HTML element
 * represents a user.
 * 
 * @param collection_items This parameter represents the HTML element where all the users
 * will be inserted
 * @param response_text A JSON formatted string representing a list of users in the form of: <br>
 * <pre>
 * {
 *   [
 *     {
 *       "id": 
 *       "firstName": 
 *       "lastName": 
 *       "mail": 
 *       "phoneNumber": 
 *       "psychologistName": 
 *       "type":
 *     }, 
 *     ...
 *   ]
 * }
 * </pre>
 * */
function registerHTMLItems(collection_items, response_text){

	let user_data = JSON.parse(response_text);
	
	console.log(user_data);
	
	collection_items.innerHTML = "";
	
	for(const user_from_JSON of user_data){
		let html_string = renderHTMLUsers(user_from_JSON, user_from_JSON.type);
		
		collection_items.innerHTML += html_string;
	}
}

/**
 * This function will create the appropriate HTML format of a user list item
 * to be displayed 
 * 
 * @param json_object it expect a user in JSON format
 * @return The corresponding well formatted HTML element as a STRING
 * */
function renderHTMLUsers(json_object, userType){
	let create_list = "<li class=\"collection-item avatar\">";
	let button_string = "";
	
	create_list += "<div class=\"user-info\">";
	create_list += "<img src=\"/image/ejemplo.jpg\" alt=\"A picture of a user\" class=\"circle\">";
	create_list += "<p class=\"title\">"+ json_object.firstName + ", " + json_object.lastName +"</p>";
	if(userType === user_types.PATIENT){
		create_list += "<p>Id: <span class=\"user-id\">" + json_object.id + "</span></p>";
		
		button_string = "<div class=\"user-delete\">";
		button_string +="<button class=\"delete-pat waves-effect waves-red-darken-4 red lighten-1 btn-flat\">";
		button_string +="delete</button></div></li>";
	}
	else if(userType === user_types.PSYCHOLOGIST){
		create_list += "<p>Id: <span class=\"user-id\">" + json_object.id + "</span></p>";
		
		button_string = "<div class=\"user-delete\">";
		button_string +="<button class=\"delete-psy waves-effect waves-red-darken-4 red lighten-1 btn-flat\">";
		button_string +="delete</button></div></li>";
	}
	create_list += "<p> e-mail: <span>" + json_object.mail  + "</span></p>";
	create_list += "<p> Tlf: <span>" + json_object.phoneNumber + "</span></p>";
    create_list += "</div>";
    create_list += button_string;
    
    return create_list;
}

/**
 * It will delete one user entry and do a request to delete that user inside the server
 * 
 * @param userType Type of user wanted to deleted
 * @param btn_listened An Element representing the button where the delete action took place
 * */
function delete_btn_handler(userType, btn_listened){
	let btn_grandpa = (btn_listened.parentElement).parentElement
	let user_id = btn_grandpa.firstElementChild.getElementsByClassName("user-id")[0].innerText;
	//we start to create the AJAX request
	let uri = `${document.URL}/user-delete-${user_id}`;
	
	/*
	 * We don't employ the 'DELETE' http method because it is marked as not safe and 
	 * may lead to security risks in our web application
	 * */
	requestData.open('POST', uri);
	
	//tell what to do once the data is loaded
	requestData.onload = function() {
		//ok or accepted
		let user_data = JSON.parse(requestData.responseText);
		
		if(user_data.result === "OK"){
			console.log(user_data.result);
			btn_grandpa.remove();
		}
		else{
			console.log("Error!");
		}
	}
	
	//send the request
	requestData.send();
}

/**
 * It will retrieve a list of users in JSON format. The list of users will 
 * match with the name, surname or both given by the client and they will be
 * displayed into the HTML 
 * */
function get_users_by_name(){
	let user_name = document.getElementById("name");
	let user_lastName = document.getElementById("surname");
	let uri = `${document.URL}/get-browser-result?name=${user_name.value}&surname=${user_lastName.value}`;
	console.log(uri);
	
	//what type of access we want
	requestData.open('GET', uri);
	//what to do once its finished
	requestData.onload = function() {
		registerHTMLItems(browser_collection, requestData.responseText);
		
		let buttons_pat = browser_collection.getElementsByClassName("delete-pat");
		let buttons_psy = browser_collection.getElementsByClassName("delete-psy");
		
		for(let btn of buttons_pat){
			btn.addEventListener("click", (e) => {
				delete_btn_handler(user_types.PATIENT, btn)
			})
		}
		
		for(let btn of buttons_psy){
			btn.addEventListener("click", (e) => {
				delete_btn_handler(user_types.PSYCHOLOGIST, btn)
			})
		}
	}
	//send the request
	requestData.send();
}

/**
 * It will perform the corresponding action of register a psychologist or
 * a patient in the application.
 * 
 * @param btn_id A string representing the id of the <i>'accept'</i> button
 * clicked by the administrator.
 * */
function accept_handler(btn_id){
	let btn_type = btn_id.slice(-3);
	let input_elements = ["firstName-input-",  "lastName-input-",
						  "mail-input-", "phoneNumber-input-", "password-input-", "type-input-"];
	let error_flag = false;
	let string_msg = {
			"firstName": "",
			"lastName": "",
			"mail": "",
			"phoneNumber": "",
			"type": "",
			"password": "",
	};
	
	clean_error_msg(btn_type, false);
	
	for(const elem of input_elements){
		let input_type = elem.split("-");
		let value_of = document.getElementById(elem.concat(btn_type));
		
		if(value_of == null || value_of.value.length == 0){
			let error = document.getElementById(`error-${input_type[0]}-${btn_type}`);
			error.style.display = "block";
			error.innerText = "No puede estar vacio";
			error_flag = true;
		}
		else if(!value_of.checkValidity()){
			let error = document.getElementById(`error-${input_type[0]}-${btn_type}`);
			error.style.display = "block";
			error.innerText = error_map_msg[input_type[0]];
			error_flag = true;
		}
		else{
			console.log(`value: ${value_of.value}`);
			string_msg[input_type[0]] = value_of.value;
		}
	}
	
	string_msg.type = string_msg.type.toUpperCase();
	
	const msg = JSON.stringify(string_msg);
	
	console.log(msg);
	
	if(!error_flag){
		let uri = `${document.URL}/register-user/`;
		//create the request
		requestData.open('POST', uri);
		//tell what to do one the request is done
		requestData.onload = function() {
			console.log("message was sent");
		};
		
		requestData.setRequestHeader("Content-Type", "application/json");
		//send the request
		requestData.send(msg);
		
		console.log(uri);
	}
	console.log(msg);
}

/**
 * It will clean the input and the error messages from the form of register psychologist or
 * patient
 * 
 * @param userType The type of the user you are trying to register
 * @param clear_input A boolean telling to clear the input text or not 
 * */
function clean_error_msg(userType, clear_input){
	let input_elements = ["id", "name",  "surname", "mail", "phone", "pass"];
	
	for(const elem of input_elements){
		let error = document.getElementById(`error-${elem}-${userType}`);
		error.style.display = "none";
		
		if(clear_input){
			document.getElementById(`${elem}-input-${userType}`).value = "";
		}
	}
}



