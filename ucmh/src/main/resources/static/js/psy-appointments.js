document.addEventListener("DOMContentLoaded", function(){
	$(".contac-pat").click(function(){
		$("#send-msg").attr("data-user-mail", $(this).attr("data-user-mail"));
	});
	
	$(".delete-appn").click(function(){
		let uri = `${config.rootUrl}psy/remove-appoinment`;
		let ajax = new XMLHttpRequest();
		let btn = $(this);
		
		let payload = {
				mail: $(this).attr("data-user-mail"),
				date: $(this).attr("data-user-date").replace(" ", "T")
		}
		
		ajax.open("POST", uri);
		
		ajax.setRequestHeader("X-CSRF-TOKEN", config.csrf.value);
		ajax.setRequestHeader("Content-Type", "application/json");
		
		ajax.onload = function(){
			console.log(ajax.responseText);
			btn.parent().parent().remove();
		};
		
		ajax.send(JSON.stringify(payload));

	});
	
	$("#send-msg").click(function(){
		let mail = $(this).attr("data-user-mail");
		let text = $("#message").val();
		
		 let now = new Date();
		  go(`${config.uri}${mail}`, 'POST', 
				{msg: text,
				 time: `${now.getUTCFullYear()}-${now.getUTCMonth()+1}-${now.getUTCDate()}-${now.getUTCHours()}-${now.getUTCMinutes()}`
			});
	});
});