document.addEventListener("DOMContentLoaded", (event) => {
	$("#accept-new-appnt").click(function(event){
		let date = $("#new-appnt-date").val();
		let hour = $("#new-appnt-hour").val();
		let completeDate = {"date" :`${date}T${hour}`};
		let request = new XMLHttpRequest();
		request.open('POST', `${config.rootUrl}user/saveAppointment`);
		
		request.setRequestHeader('X-CSRF-TOKEN', config.csrf.value);
		request.setRequestHeader('Content-Type', 'application/json');
		
		request.onload = function(){
				alert(request.responseText);
		};

		request.send(JSON.stringify(completeDate));
		console.log(`date: ${date}      hour: ${hour}`);
	});
});

function render_appointments(date, user, mail)
{
	let html_string = `<li class="collection-item card appoint">
  	<div>
		<div class="appoint-date">DATE: <span class="date-value">${date}</span></div>
			<div class="lower-separator-container">
				<div class="lower-separator"></div>
			</div>
			<div class="appoint-with">
				Psychologist: <span data-psy-mail="${mail}"
													  class="appoint-psy">${user}</span>
				</div>
			</div>
		</li>`;
	return html_string;
}