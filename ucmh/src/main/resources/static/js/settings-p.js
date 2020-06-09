document.addEventListener("DOMContentLoaded", function(event){
	
	$("#accept-change-psy").click(function(event){
		let uri = `${config.rootUrl}user/change-psy`;
		let request = new XMLHttpRequest();
		//get feedback
		let feedback = $("#change-psy-feedback").val();

		request.open("POST", uri);
		
		request.setRequestHeader("X-CSRF-TOKEN", config.csrf.value);
		
		request.onload = function(evt){
			console.log(`NICE: ${evt}`);
		};
		request.onerror = function(evt){
			console.log(`NOT NICE: ${request.responseText}`);
		};
		
		request.send(feedback);
	});
});