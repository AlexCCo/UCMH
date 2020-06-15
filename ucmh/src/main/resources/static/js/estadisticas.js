document.addEventListener("DOMContentLoaded", (event) => {
	
	$("#very-dissatisfied").click(function(event){
		$("#state-value").attr("value", 0);
		document.getElementById("show-emotion").innerHTML = 'Hoy me siento: muy mal';
	});
	$("#dissatisfied").click(function(event){
		$("#state-value").attr("value", 1);
		document.getElementById("show-emotion").innerHTML = 'Hoy me siento: mal';
	});
	$("#neutral").click(function(event){
		$("#state-value").attr("value", 2);
		document.getElementById("show-emotion").innerHTML = 'Hoy me siento: ni fu ni fa';
	});
	$("#satisfied").click(function(event){
		$("#state-value").attr("value", 3);
		document.getElementById("show-emotion").innerHTML = 'Hoy me siento: bien';

	});
	$("#very-satisfied").click(function(event){
		$("#state-value").attr("value", 4);
		document.getElementById("show-emotion").innerHTML = 'Hoy me siento: muy bien';
	});
	
	$("#saveState").click(function(event){
		let date = $("#selectedDate").val();
		let text_input = $("#explanation").val();
		let value = $("#state-value").attr("value");
		
		let info = {"date" : `${date}`, 
				"explanation" : `${text_input}`,
				"state" : `${value}`};
		let request = new XMLHttpRequest();
		request.open('POST', `${config.rootUrl}user/saveEmotionState`);
		
		request.setRequestHeader('X-CSRF-TOKEN', config.csrf.value);
		request.setRequestHeader('Content-Type', 'application/json');
		request.onload = function(){
		};
		
		let outer_div = document.createElement("li");
		outer_div.className = "collection-item avatar";
		let satisfaction = "";
		switch(value)
		{
		case '0':
			satisfaction = "sentiment_very_dissatisfied";
			break;
		case '1':
			satisfaction = "sentiment_dissatisfied";
			break;
		case '2':
			satisfaction = "sentiment_satisfied";
			break;
		case '3':
			satisfaction = "sentiment_satisfied_alt";
			break;
		case '4':
			satisfaction = "sentiment_very_satisfied";
			break;
		}
		let html_string = render_states(satisfaction, date, text_input);
		outer_div.innerHTML = html_string;
		$("#states-list").append(outer_div);
		request.send(JSON.stringify(info));
	});
});

function render_states(satisfaction, date, explanation)
{
	let html_string = 
		`<li class="collection-item avatar"">
		<i class="material-icons">${satisfaction}</i>
		<p>Fecha: </p><p>${date}</p>
		<span>Descripción: </span><p>${explanation}</p>
		</li>`;
	return html_string;
}