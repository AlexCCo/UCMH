const user_types = {
	PSYCHOLOGIST: "psychologist",
	PATIEN: "patien",
}

document.addEventListener("DOMContentLoaded", (event) => {
	console.log("Dom loaded!");
	
	//all of these are buttons
	var less_patiens = document.getElementById("less-patiens");
	var more_patiens = document.getElementById("more-patiens");
	var less_psychologists = document.getElementById("less-psychologists");
	var more_psychologists = document.getElementById("more-psychologists");
	
	less_patiens.addEventListener("click", (e) => {
		less_users(user_types.PATIEN);
	});
	less_psychologists.addEventListener("click", (e) => {
		less_users(user_types.PSYCHOLOGIST)
	});
	
	more_patiens.addEventListener("click", (e) => {
		more_users(user_types.PATIEN);
	});
	more_psychologists.addEventListener("click", (e) => {
		more_users(user_types.PSYCHOLOGIST);
	});
});

var requestData = new XMLHttpRequest();

function less_users(userType){
	console.log("clicked with type " + userType);
}

function more_users(userType){
	console.log("clicked with type " + userType);
	//prepare the request object to get json data
	requestData.open('GET', '/admin/1/users-list');
	//tell what to do once the data is loaded
	requestData.onload = function() {
		var user_data = JSON.parse(requestData.responseText);
		console.log(user_data);
	}
	//send the request
	requestData.send();
	
}