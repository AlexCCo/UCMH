document.addEventListener("DOMContentLoaded", (event) => {
	console.log("Dom loaded!");
	new_incoming_messages = document.getElementById("notification");
	new_incoming_messages.style.visibility = "hidden";
	console.log(ws);
	ws.receive = function (text) {
		console.log("received message")
			new_incoming_messages.style.visibility = "visible";
	};
});