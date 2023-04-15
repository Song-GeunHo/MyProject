<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>

	<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	
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
			pw = rs.getString("pw");
			
			session.setAttribute("user_id", id);
			response.sendRedirect("main.jsp");
		} else {
			session.setAttribute("not_id", id);
			response.sendRedirect("login.jsp");
		}

	} catch (Exception e) {
		e.getStackTrace();
		response.sendRedirect("login.jsp");
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