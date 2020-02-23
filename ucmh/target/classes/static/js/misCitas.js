/**
 * Created by AlexCCo
 */

//is fired as soon as the DOM tree is parse and loaded without the extra elements
//like js and css
window.addEventListener("DOMContentLoaded", function(event) {
	//get table/tr/td elements
	//and edit them
	for(let i = 1; i < 9; i++){
		//it returns a HTML collection
		let row_table = document.getElementsByClassName("data_row_"+i)[0];
		for(let i = 0; i < 5; i++){
			let td_item = document.createElement("td");
			
			td_item.addEventListener("click", function(event){
				console.log("Clicked on: " + event.currentTarget);
			});
			row_table.appendChild(td_item);
			
		}
	}
})
