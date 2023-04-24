<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>

<head>
<meta charset="utf-8">
<style>
@import url('styles/font.css');

@import url('styles/layout.css?a1');

@import url('styles/size.css?b1');

@import url('styles/color.css?c2');
</style>
<script src="scripts/signUpCheck.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>

<body>
	<div id="all_wrap">
		<div id="form_wrap">
			<a href="main.jsp">
				<figure>
					<img src="images/ARTMU.png">
				</figure>
			</a>

			<form id="sign_us" action="signUp_email_ok.jsp" method="post" onsubmit="return signUp_email();" novalidate>
				<div id="inner_wrap">
					<div id="sign_input">
						<h2>아트뮤 회원 가입하기</h2>
						<label>
							<h3>아이디</h3>
							<input class="input" id="id" name="id" type="email" placeholder="아이디 입력" maxlength="15" required minlength="6">
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
						<label>
							<h3>닉네임</h3>
							<input class="input" id="name" name="name" type="text" placeholder="닉네임 입력" required minlength="1" maxlength="16">
							<span class="error" aria-live="polite"></span>
						</label>
						<label>
							<h3>생년월일</h3>
							<input type="text" class="input" placeholder="년" minlength="4" maxlength="4">
							<select onchange="this.style.color='black'">
								<option value="" disabled selected>월</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
							</select>
							<input type="text" class="input" placeholder="일" minlength="1" maxlength="2">
							<span class="error" aria-live="polite"></span>
						</label>
						<label>
							<h3>휴대폰 번호</h3>
							<input class="input" name="phone" type="text" placeholder="휴대폰 번호 입력" required maxlength="16">
							<span class="error" aria-live="polite"></span>
						</label>
					</div>
					<div id="cert_input">
						<div>
							<input type="button" id="cert_phone" value="휴대폰 본인 인증하기"> <input class="input" id="cert_num" type="text" disabled>
						</div>
					</div>
					<div id="terms">
						<input id="check_all" type="checkbox" name="term"> 아트뮤 가입 약관에 모두 동의합니다. </label> <span id="terms_unfold" onclick="termsUnfolding();">확인하기 ∨</span>
						<p id="terms_detail">아트뮤 이용약관(필수), 개인정보취급방침(필수), 개인정보 수집·이용 약관(필수), 마케팅정보 수집동의(선택)</p>
					</div>
					<input type="submit" id="signUp" value="가입 완료">
				</div>

			</form>
		</div>
	</div>
	<script src="scripts/inputCheck.js?ver=1"></script>

</body>


</html>