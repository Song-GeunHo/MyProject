<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>

	<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	System.out.println(id);
	Connection conn = null;
	PreparedStatement pstmt = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	try {
		Context init = new InitialContext();
		Context env = (Context) init.lookup("java:comp/env");
		DataSource ds = (DataSource) env.lookup("jdbc/myoracle");
		conn = ds.getConnection();
		
		String sql = "SELECT id FROM member WHERE id = ?";
		pstmt = conn.prepareStatement(sql);	
		pstmt.setString(1, id);
		
		pstmt.executeQuery();
		
		System.out.println("중복");
		session.setAttribute("existsID", true );
		response.sendRedirect("signUp_email.jsp");

	} catch (Exception e) {
		System.out.println("가입");
		stmt = conn.createStatement();
		stmt.executeQuery("INSERT INTO members VALUES(" + id + "," + pw + ")");
		response.sendRedirect("main.html");
		e.printStackTrace();
	} finally {
		try {
			if ( conn != null ) conn.close();
			if ( pstmt != null ) pstmt.close();
		} catch ( Exception e ) {
			e.printStackTrace();
		}
	}
	%>