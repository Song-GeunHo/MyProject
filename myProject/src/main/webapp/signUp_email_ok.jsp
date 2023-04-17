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
	Statement stmt = null;
	ResultSet rs = null;
	
	try {
		Context init = new InitialContext();
		Context env = (Context) init.lookup("java:comp/env");
		DataSource ds = (DataSource) env.lookup("jdbc/myoracle");
		conn = ds.getConnection();
		
		String sql = "SELECT id FROM members WHERE id = ?";
		pstmt = conn.prepareStatement(sql);	
		pstmt.setString(1, id);
		
		rs = pstmt.executeQuery();
		
		if ( rs.next() ) {
			session.setAttribute("existsID", "exists" );
		} else {
			session.setAttribute("existsID", "none" );
			stmt = conn.createStatement();
			stmt.executeQuery("INSERT INTO members VALUES(\'" + id + "\',\'" + pw + "\')");
		}
		response.sendRedirect("signUp_email.jsp");

	} catch (Exception e) {
		e.printStackTrace();
		response.sendRedirect("signUp_email.jsp");
	} finally {
		try {
			if ( conn != null ) conn.close();
			if ( stmt != null ) stmt.close();
			if ( pstmt != null ) pstmt.close();
		} catch ( Exception e ) {
			e.printStackTrace();
		}
	}
	%>