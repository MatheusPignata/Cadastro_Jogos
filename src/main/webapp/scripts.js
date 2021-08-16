function buscar (){
	let val = document.querySelector("#busca").value.toLowerCase();
	let rows = document.querySelectorAll("tr");
	
	for(let i = 1; i < rows.length; i++){
		if(rows[i].innerHTML.toString().toLowerCase().replace("<td>", "").includes(val)){
			rows[i].style.display = "table-row";
		}else{
			rows[i].style.display = "none";
		}
	}

}

function chamar(){
	console.log("tamo online")
}

function buscarBacana(){
	let val = document.querySelector("#busca").value.toLowerCase();
	let rows = document.querySelectorAll("tr");
	
	for(let i = 0; i < rows.length; i++){
		if(rows[i].innerHTML.toString().toLowerCase().replace("<td>", "").includes(val)){
			rows[i].style.display = "table-row";
		}else{
			rows[i].style.display = "none";
		}
	}

}
