document.addEventListener("DOMContentLoaded", (event) => {
	$("#accept-new-appnt").click(function(event){
		let date = $("#new-appnt-date").val();
		let hour = $("#new-appnt-hour").val();
		
		$.ajax({
			method: "POST",
			url: `${config.rootUrl}user/saveAppointment`,
			headers: {'X-CSRF-TOKEN' : config.csrf.value},
			data:{fecha : date, hora : hour}
		})
		.done(function(msg)
		{
			if(!msg)
				alert("Esa hora ya se encuentra ocupada.");
			else
				alert("Cita pedida.");
		});
		
		console.log(`date: ${date}      hour: ${hour}`);
	});
});