
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
			console.log(received);
		})
	});
	
	ws.receive = function(text) {
		console.log(text);
	}
});
