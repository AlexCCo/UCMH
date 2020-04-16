

document.addEventListener("DOMContentLoaded", (event) => {
	let my_message_collection = document.getElementsByClassName("message-to");
	
	for(let message of my_message_collection){
		message.parentElement.style.cssText = `text-align: end;
												padding-right: 7px;
												margin-left: auto;`;
		
		
	}
});