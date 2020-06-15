	var appointment_list={
			html_holder: ""
		};
	
document.addEventListener("DOMContentLoaded", (event) => {
	
	//list of users who sent a message to us
	let appointment_box = document.getElementById("appointment-list");
	
	appointment_list.html_holder = appointment_box;
	
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
		
		let outer_div = document.createElement("li");
		outer_div.className = "collection-item card appoint";
		
		let name = $("#appointment-name").attr("name");
		let mail = $("#appointment-name").attr("mail");
		let totalDate = date + " " + hour;
		let html_string = render_appointments(totalDate, name, mail);
		outer_div.innerHTML = html_string;
		$("#appointment-list").append(outer_div);
		
		request.send(JSON.stringify(completeDate));
	});
});

function render_appointments(date, username, mail)
{
	let html_string = 
		`<li class="collection-item card appoint">
		<div>
		<div class="appoint-date">DATE: <span class="date-value">${date}</span></div>
			<div class="lower-separator-container">
				<div class="lower-separator"></div>
			</div>
			<div class="appoint-with">
				Psychologist: <span data-psy-mail="${mail}"
													  class="appoint-psy">${username}</span>
				</div>
			</div>
			</li>`;
	return html_string;
}