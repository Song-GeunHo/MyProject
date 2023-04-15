<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>

<head>
    <meta charset="utf-8">
    <style>
        @import url('styles/font.css');
        @import url('styles/layout.css');
        @import url('styles/size.css');
        @import url('styles/color.css');
    </style>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>

<body>
    <div id="all_wrap">
        <div id="form_wrap">
            <a href="main.html">
                <figure><img src="images/ARTMU.png"></figure>
            </a>

            <form id="sign_email" action="signUp_email_ok.jsp" method="post" onsubmit="return signUp_email();" novalidate>
                <div id="inner_wrap">
                    <div id="sign_input">
                        <h2>이메일로 가입하기</h2>
                        <label>
                            <h3>이메일 주소</h3>
                            <input class="input" id="id" name="id" type="email" placeholder="이메일 주소 입력" maxlength="24" required
                                minlength="6">
                            <span class="error" aria-live="polite"></span>
                        </label>
                        <label>
                            <h3>비밀번호</h3>
                            <input class="input" id="pw" name="pw" type="password" placeholder="비밀번호 입력" required minlength="8" autoComplete="off">
                            <span class="error" aria-live="polite"></span>
                        </label>
                        <label>
                            <h3>비밀번호 확인</h3>
                            <input class="input" id="repw" type="password" placeholder="비밀번호 재입력" required minlength="8" autoComplete="off">
                            <span class="error" aria-live="polite"></span>
                        </label>
                    </div>
                    <div id="cert_input">
                        <h3>본인인증</h3>
                        <div>
                            <input type="button" id="cert_phone" value="휴대폰 본인 인증하기">
                            <input class="input" id="cert_num" type="text" disabled>
                        </div>
                        <label>
                    </div>
                    <div id="terms">
                        <input id="check_all" type="checkbox"> 아트뮤 가입 약관에 모두 동의합니다.
                        </label>
                        <span id="terms_unfold" onclick="termsUnfolding();">확인하기 ∨</span>
                        <p id="terms_detail">아트뮤 이용약관(필수), 개인정보취급방침(필수), 개인정보 수집·이용 약관(필수), 마케팅정보 수집동의(선택)</p>
                    </div>
                    <input type="submit" id="signUp" value="가입 완료">

                </div>
            </form>
        </div>
    </div>
    <script src="scripts/inputCheck.js?ver=1"></script>
    <script>
    	if ( <%= session.getAttribute("existsID") %> ) {
    		swal("Good job!", "You clicked the button!", "success");
    	}
    </script>
</body>


</html>