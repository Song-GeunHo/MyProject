let id = document.getElementById("id");
let pw = document.getElementById("pw");
let error = document.getElementById("error");
 
id.addEventListener("focus", () => {
	
	error.innerHTML = "";
	
});

pw.addEventListener("focus", () => {
	
	error.innerHTML = "";
	
});  
	
function login() {
		
	if ( id.value.length === 0 ||  pw.value.length === 0 ) {
		error.innerHTML = "아이디 / 비밀번호를 입력해주세요";
		return false;
	} else {
		return true;
	} 
				
}