const user_types = {
	PSYCHOLOGIST: "PSY",
	PATIENT: "USER"
}

const user_methods = {
		MORE: "more",
		LESS: "less"
}

document.addEventListener("DOMContentLoaded", (event) => {
	console.log("Dom loaded!");
	
	//all of these are buttons
	var less_patiens = document.getElementById("less-patiens");
	var more_patiens = document.getElementById("more-patiens");
	var less_psychologists = document.getElementById("less-psychologists");
	var more_psychologists = document.getElementById("more-psychologists");
	
	var delete_pat_btn = document.getElementsByClassName("delete-pat");
	var delete_psy_btn = document.getElementsByClassName("delete-psy");
	
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

var requestData = new XMLHttpRequest();
var patien_collection = document.getElementById("patient-collection");
var psychologist_collection = document.getElementById("psychologist-collection");

function get_users(userType, userMethod){
	console.log("clicked with type " + userType);
	
	//prepare the request object to get json data
	var uri = '/admin/1/users-list-'+ userType + '-' + userMethod;
	requestData.open('GET', uri);
	var html_collection;
	
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
		let user_data = JSON.parse(requestData.responseText);
		
		console.log(user_data);
		
		html_collection.innerHTML = "";
		
		for(const user_from_JSON of user_data){
			let html_string = renderHTMLUsers(user_from_JSON, userType);
			
			html_collection.innerHTML += html_string;
		}

		if(userType === user_types.PATIENT){
			var buttons = html_collection.getElementsByClassName("delete-pat");
			
			for(let btn of buttons){
				btn.addEventListener("click", (e) => {
					delete_btn_handler(user_types.PATIENT, btn)
				})
			}
		}
		else if(userType === user_types.PSYCHOLOGIST){
			var buttons = html_collection.getElementsByClassName("delete-psy");
			
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
 * This function will create the appropriate HTML element of a user list item
 * to be displayed 
 * 
 * @param json_object it expect a user in JSON format
 * @return The corresponding well formatted HTML element as a STRING
 * */
function renderHTMLUsers(json_object, userType){
	var create_list = "<li class=\"collection-item avatar\">";
	var button_string = "";
	
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
	var btn_grandpa = (btn_listened.parentElement).parentElement
	var user_id = btn_grandpa.firstElementChild.getElementsByClassName("user-id")[0].innerText;
	//we start to create the AJAX request
	var uri = "/admin/1/user-delete-" + user_id;
	
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