const user_types = {
	PSYCHOLOGIST: "PSY",
	PATIENT: "USER"
}

const user_methods = {
		MORE: "more",
		LESS: "less"
}


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
	let uri = document.URL + "/users-list-" + userType + "-" + userMethod;
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
	let uri = document.URL + "/user-delete-" + user_id;
	
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

function get_users_by_name(){
	let user_name = document.getElementById("name");
	let user_lastName = document.getElementById("surname");
	let uri =  document.URL + "/get-browser-result?name=" + user_name.value + "&surname=" + user_lastName.value;
	console.log(uri);
	requestData.open('GET', uri);
	
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
	
	requestData.send();
}





