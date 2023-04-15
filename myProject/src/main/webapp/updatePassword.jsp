<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String id = (String) session.getAttribute("user_pw");
%>

<html>

<head>
<meta charset="utf-8">
<style>
@import url('styles/font.css');

@import url('styles/layout.css');

@import url('styles/size.css');

@import url('styles/color.css');
</style>
<script src="scripts/script.js"></script>
</head>

<body>
	<div id="all_wrap">
		<div id="form_wrap">
			<a href="main.jsp">
				<figure>
					<img src="images/ARTMU.png">
				</figure>
			</a>
			<form id="login" action="main.jsp" onsubmit="return change_info()" novalidate>
				<div id="inner_wrap">
						<h3>기존 비밀번호</h3>
						<input style="width: 260px;" type="password" class="input" id="input_pw" placeholder="기존 비밀번호 입력" minlength="8">
						<button type="button" id="check_pw" onclick="unlock_input();">확인</button>
						<br>
						<br> <label>
							<h3>변경 비밀번호</h3> <input class="input" id="pw" name="pw" type="password" placeholder="비밀번호 입력" required minlength="8">
						</label> <br>
						<br> <label>
							<h3>변경 비밀번호 확인</h3> <input class="input" id="repw" type="password" placeholder="비밀번호 재입력" required minlength="8">
						</label> <input type="submit" id="update" value="비밀번호 변경">

				</div>
			</form>
		</div>
	</div>
</body>

</html>