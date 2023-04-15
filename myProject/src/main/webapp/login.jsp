<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% String id = (String)session.getAttribute("not_id"); %>
<html>

<head>
    <meta charset="utf-8">
    <style>
        @import url('styles/font.css');
        @import url('styles/layout.css');
        @import url('styles/size.css');
        @import url('styles/color.css');
    </style>
</head>

<body>
    <div id="all_wrap">
        <div id="form_wrap">
            <a href="#">
                <figure><a href="main.html"><img src="images/ARTMU.png"></a></figure>
            </a>

            <form id="login" action="login_ok.jsp" method="post" onsubmit="return login();" novalidate>
                <div id="inner_wrap">
                    <div id="login_input">
                            <label>
                                <h3>아이디</h3>
                                <input type="email" id="id" class="input" name="id" placeholder="아이디 입력" maxlength="24" required minlength="6">
                            </label>
                            <label>
                                <h3>비밀번호</h3>
                                <input type="password" id="pw" class="input" name="pw" placeholder="비밀번호 입력" required minlength="8" autoComplete="off">
                            </label>
                        <p id="error" class="error"></p>
                        <input type="submit" id="submit" value="로그인">
                    </div>
                    <div id="login_opt">
                        <span>
                            <label>
                                <input id="keep_logIn" type="checkbox">
                                로그인 유지
                            </label>
                        </span>
                        <span>
                            <a href="#">
                                <span>아이디</span>
                            </a> /
                            <a href="#">
                                <span>비밀번호</span>
                                찾기 >
                            </a>
                        </span>
                    </div>
                    <div id="login_ul_wrap">
                        <ul>
                            <li><img src="images/naver.png"></li>
                            <li><img src="images/kakao.png"></li>
                            <li><img src="images/google.png"></li>
                            <li><img src="images/apple.png"></li>
                            <li><img src="images/facebook.png"></li>
                        </ul>
                    </div>
                </div>
                <p><a href="sign.html">아직 아트뮤 회원이 아니세요?<span>회원가입 하기</span></a></p>
            </form>
        </div>
    </div>
    <script src="scripts/login.js?ver=2"></script>
    <script>
    	if ( "<%=id %>" !== null )
    	{
    		let user_id = "<%=id %>";
    		
    		if ( user_id !== "null" ) {
				let id = document.getElementById("id");
				let pw = document.getElementById("pw");
				let error = document.getElementById("error");

				id.value = "<%=id %>";
				pw.focus();
				error.innerHTML = "아이디 또는 비밀번호를 잘못 입력했습니다";
				<%	session.removeAttribute("not_id");	%>
    		}
    	}
    </script>
</body>

</html>