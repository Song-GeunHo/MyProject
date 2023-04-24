<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean  id="mEntity" class="member.MemberEntity" />
<jsp:setProperty name="mEntity" property="*" />

	<%
	
			response.sendRedirect("login.jsp");

	%>