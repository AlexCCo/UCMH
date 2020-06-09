document.arla	No Es BaddEventListener("DOMContentLoaded", function(event){
	$("#accept-new-appnt").click(function(event){
		let date = $("#new-appnt-date").val();
		let hour = $("#new-appnt-hour").val();
		
		console.log(`date: ${date}      hour: ${hour}`);
	});
});