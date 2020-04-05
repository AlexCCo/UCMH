const user_types = {
	PSYCHOLOGIST: "PSY",
	PATIEN: "USER"
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
	
	less_patiens.addEventListener("click", (e) => {
		get_users(user_types.PATIEN, user_methods.LESS);
	});
	less_psychologists.addEventListener("click", (e) => {
		get_users(user_types.PSYCHOLOGIST, user_methods.LESS)
	});
	
	more_patiens.addEventListener("click", (e) => {
		get_users(user_types.PATIEN, user_methods.MORE);
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
	
	if(userType === user_types.PATIEN){
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
			let html_string = renderHTML(user_from_JSON);
			
			html_collection.innerHTML += html_string;
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
function renderHTML(json_object){
	var create_list = "<li class=\"collection-item avatar\">";
	
	create_list += "<img src=\"/image/ejemplo.jpg\" alt=\"A picture of a user\" class=\"circle\">";
	create_list += "<span class=\"title\">"+ json_object.firstName + ", " + json_object.lastName +"</span>";
	create_list += "<p> e-mail: <span>" + json_object.mail  + "</span></p>";
	create_list += "<p> Tlf: <span>" + json_object.phoneNumber + "</span></p>";
    create_list += "</li>";
    
    return create_list;
}