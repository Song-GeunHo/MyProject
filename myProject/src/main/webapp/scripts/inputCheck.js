let toggle = true;
const id = document.getElementById("id");
const pw = document.getElementById("pw");
const repw = document.getElementById("repw");
const idErr = id.nextElementSibling;
const pwErr = pw.nextElementSibling;
const repwErr = repw.nextElementSibling;

const idRegExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
const pwRegExp = /^.*(?=^.{8,}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%*^&+=]).*$/;

id.addEventListener("input", () => {

    const idIsValid = idRegExp.test(id.value);

    if (idIsValid) {
        id.style.borderColor = "green";
        idErr.textContent = "";
        idErr.className = "error";
    } else {
		showIdError();
	}

});

pw.addEventListener("input", () => {

    const pwIsValid = pwRegExp.test(pw.value);

	if ( pw.value === repw.value ) {
		repw.style.borderColor = "green";
        repwErr.innerHTML = "";
        repwErr.className = "error";
	}
	 if ( pwIsValid ) {
        pw.style.borderColor = "green";
        pwErr.textContent = "";
        pwErr.className = "error";
    } else {
		showPwError();
	}

});

repw.addEventListener("input", () => {

    const repwIsValid = pw.value === repw.value;

    if ( repwIsValid ) {
        repw.style.borderColor = "green";
        repwErr.textContent = "";
        repwErr.className = "error";
    } else {
		showRepwError();
	}

});

function signUp_email() {

    const idIsValid = (id.value.length != 0) && idRegExp.test(id.value);
    const pwIsValid = (pw.value.length != 0) && pwRegExp.test(pw.value);
    const repwIsValid = (repw.value.length != 0) && (pw.value == repw.value) && pwRegExp.test(repw.value);

    if ( !idIsValid ) {
        showIdError();
    } else {
        id.style.borderColor = "green";
        idErr.textContent = "";
        idErr.className = "error";
    }

    if ( !pwIsValid ) {
        showPwError();
    } else {
        pw.style.borderColor = "green";
        pwErr.textContent = "";
        pwErr.className = "error";
    }

    if ( !repwIsValid ) {
        showRepwError();
    } else {
        repw.style.borderColor = "green";
        repwErr.textContent = "";
        repwErr.className = "error";
    }

	if ( idIsValid && pwIsValid && repwIsValid ) {
		return true;
	}
	else {
		return false;
	}
	
}

function showIdError() {

    id.style.borderColor = "#900";
    if (id.validity.valueMissing) {
		idErr.textContent = "아이디를 입력해주세요.";
	} else if (id.validity.tooShort) {
		idErr.textContent = `최소 ${id.minLength} 자리 입력이 필요합니다. ${id.value.length}`;
	} else if (!idRegExp.test(id.value)) {
		idErr.textContent = "이메일 형식으로 입력해주세요.";
	}
	
    idErr.className = "error active";
	return false;
	
}

function showPwError() {

    pw.style.borderColor = "#900";
    if ( pw.validity.valueMissing ) {
		pwErr.textContent = "비밀번호를 입력해주세요.";
	} else if ( pw.validity.tooShort ) {
		pwErr.textContent = `최소 ${pw.minLength} 자리 입력이 필요합니다. ${pw.value.length}`;
	} else if ( !pwRegExp.test(pw.value) ) {
		pwErr.textContent = "영문, 숫자, 특수문자 조합으로 입력해주세요.";
	}

    pwErr.className = "error active";
	return false;
	
}

function showRepwError() {

    repw.style.borderColor = "#900";
    if ( !(pw.value === repw.value) || repw.value.length === 0 ) {
		repwErr.textContent = "비밀번호가 일치하지 않습니다.";
	}

	repwErr.className = "error active";
	return false;

}

function termsUnfolding() {

    let terms_detail = document.getElementById("terms_detail");

    if(toggle) {
        terms_detail.style.display = "block";
        toggle = !toggle;
    } else {
        terms_detail.style.display = "none";
        toggle = !toggle;
    }

}