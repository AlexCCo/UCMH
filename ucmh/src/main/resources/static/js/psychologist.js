
document.addEventListener("DOMContentLoaded", function(e){
	$( ".pacientBTN" ).click(function(e) {
	  let mail = $(this).attr("data-user-mail");
	  
	  $("#sent-confirmation").css("visibility", "hidden");
	  $.ajax({
		  headers: {'X-CSRF-TOKEN' : config.csrf.value},
		  method: "GET",
		  url: `${config.rootUrl}psy/pacient/${mail}`,
		  data: {}
	  })
	  .done(function( msg ) {
		  $("#pacientName").text(msg.firstName + " " + msg.lastName);
		  $("#pacientDisorder").val(msg.disorder);
		  $("#pacientTreatment").val(msg.treatment);
		  $(".savePacient").attr("data-clicked-mail", mail); 
		  $(".sendmsg").attr("data-clicked-mail", mail);
		  $("#get-user-history").css("visibility", "visible");
		  $("#get-user-history").attr("data-clicked-mail", mail);
		  //TODO: fix user domain problem
		  $("#add-new-entry").attr("data-clicked-mail", "");
		  console.log(msg);
	      });
	});
	
	$( ".savePacient" ).click(function(e) {
	  let mail = $(this).attr("data-clicked-mail");
	  let disorderB = $("#pacientDisorder").val();
	  let treatmentB = $("#pacientTreatment").val();
	  
	  console.log("click");
	  
	  $.ajax({
		  headers: {'X-CSRF-TOKEN' : config.csrf.value},
		  method: "POST",
		  url: `${config.rootUrl}psy/modify/${mail}`,
		  data: {disorder : disorderB, treatment : treatmentB}
	  })
	  .done(function( msg ) {
		  alert("Cambios guardados");
		  });
	  });
	
	//changes made here to work with websockets (Author: Alejandro Cancelo Correia)
	$( ".sendmsg" ).click(function(e) {
	  let mail = $(this).attr("data-clicked-mail");
	  let msg_content = $("#message").val();
	  //if a user have not been clicked, exit the event handler
	  if(mail === undefined){
		return;  
	  }
	  
	  let now = new Date();
	  go(`${config.uri}${mail}`, 'POST', 
			{msg: msg_content,
			 time: `${now.getUTCFullYear()}-${now.getUTCMonth()+1}-${now.getUTCDate()}-${now.getUTCHours()}-${now.getUTCMinutes()}`
		});
	  
	  $("#message").val("");
	  $("#sent-confirmation").css("visibility", "visible");
	});
	
	$("#get-user-history").click(function(event){
		let mail = $(this).attr("data-clicked-mail");
		
		$.ajax({
			url: `${config.rootUrl}psy/history-of/${mail}`,
			method: "GET",
			headers: {'X-CSRF-TOKEN' : config.csrf.value},
		})
		.done(function(received){
			registerHistoryResults(received);
			$("#add-new-entry").css("visibility", "visible");
			$("#add-new-entry").attr("data-clicked-mail", mail);
		})
	});
	
	$("#add-new-entry").click(function(event){
		$("#result-text").css("visibility", "hidden");
		$("#error-text").css("display", "none");
	});
	//author Alejandro Cancelo Correia
	$("#accept-entry").click(function(event){
		let text_input = document.getElementById("entry-text").value;
		let user_mail = $("#add-new-entry").attr("data-clicked-mail");
		
		let now = new Date();

		if(text_input.length == 0){
			$("#error-text").css("display", "block");
			return
		}
		//Ajax don't let you to send a message with a body, the data
		//attribute will transform it in a query string arguments
		//https://api.jquery.com/jquery.ajax/
		let request = new XMLHttpRequest();
        let json = {"mail": `${user_mail}`, "date":`${now.toISOString().slice(0, -5)}`, "text": text_input}
        console.log(json);
	    request.open('POST', `${config.rootUrl}psy/create-entry`);
        
	    request.onload = function(){
	    	let json_object = JSON.parse(request.responseText);

	    	if (json_object.result === "ok"){
				$("#result-text").css("visibility", "visible");
				$("#error-text").css("display", "none");
				document.getElementById("entry-history").appendChild(
						renderHTMLPsychologicalLi(json.date,
												  json.text));
	    	}else{
	    		//weird error
	    	}
		};
		
		request.setRequestHeader('X-CSRF-TOKEN', config.csrf.value);
		request.setRequestHeader('Content-Type', 'application/json');
		
		request.send(JSON.stringify(json));
		
	});
	
	ws.receive = function(text) {
		console.log(text);
	}
});

/**${now.getUTCHours()}-${now.getUTCMinutes()
 * It will treat the response from the server to display all the history
 * entries into the web
 * 
 * @param received An iterable list of response messages
 * 
 * @author Alejandro Cancelo Correia
 * */
function registerHistoryResults(received){
	let psychological_entry_list = document.getElementById("entry-history");
	
	for(let item of received){
		psychological_entry_list.appendChild(renderHTMLPsychologicalLi(item.entryDate, item.entryText));
	}
}

/**
 * @author Alejandro Cancelo Correia
 * */
function renderHTMLPsychologicalLi(entryDate, entryText){
	let li_element = document.createElement("li");
	let formatted_date = entryDate.replace("T", " ");
	let html_string = `<p>${formatted_date}</p><p>${entryText}</p>`;
	
	li_element.innerHTML = html_string;
	li_element.className = "card"
	
	return li_element;
	
}
