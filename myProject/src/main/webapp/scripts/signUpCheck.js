function signUpCheck() {
	
	let pw = document.getElementById("pw").value;
	let rePw = document.getElementById("rePw").value;
	
	if( pw.length != 0 ) {
		if ( pw === rePw ) return true;
		else return false;
	}
	
}