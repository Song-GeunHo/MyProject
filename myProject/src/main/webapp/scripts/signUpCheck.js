function signUpCheck() {
	alert("zz");
	let pw = document.getElementById("pw").value;
	let rePw = document.getElementById("rePw").value;
	
	if ( pw === rePw ) return true;
	else return false;
}