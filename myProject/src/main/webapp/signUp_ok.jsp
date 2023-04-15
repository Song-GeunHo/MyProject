<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>

	<%
	String id = (String)request.getParameter("id");
	String pw = (String)request.getParameter("pw");

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		Context init = new InitialContext();
		Context env = (Context) init.lookup("java:comp/env");
		DataSource ds = (DataSource) env.lookup("jdbc/myoracle");
		conn = ds.getConnection();

		String sql = "SELECT * FROM MEMBERS WHERE id = ? AND pw = ?";
		pstmt = conn.prepareStatement(sql);		
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		
		rs = pstmt.executeQuery();
		
		if ( rs.next() ) {
			id = rs.getString("id");
			
			session.setAttribute("user_id", id);
			response.sendRedirect("main.jsp");
		} else {
			response.sendRedirect("login.html");
		}

	} catch (Exception e) {
		e.printStackTrace();
		response.sendRedirect("login.html");
	} finally {
		try {
			if ( conn != null ) conn.close();
			if ( pstmt != null ) pstmt.close();
			if ( rs != null ) rs.close();
		} catch ( Exception e ) {
			e.printStackTrace();
		}
	}
	%>