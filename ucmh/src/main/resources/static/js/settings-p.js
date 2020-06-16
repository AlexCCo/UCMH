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
	
	/*Sends the message written to the correspondent psychologist in order to contact him*/
	$("#accept-contact-psy").click(function(event){
		let input_text = $("#contact-psy-message").val();
		let now = new Date();
		let psy_mail = document.getElementById("user-message-owner").getAttribute("data-user-psychologist-mail");
		if(psy_mail === undefined){
			return;
			}
		console.log("sending message...");
		console.log(input_text);
		//send a web socket message
		go(`${config.uri}${psy_mail}`, 'POST', 
			{msg: input_text,
			 time: `${now.getUTCFullYear()}-${now.getUTCMonth()+1}-${now.getUTCDate()}-${now.getUTCHours()}-${now.getUTCMinutes()}`
			});
		alert("Mensaje enviado.");
	});
});