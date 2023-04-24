package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDatabase {

	MemberEntity mEntity = new MemberEntity();
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public void connectDB() {
	
		try {
			Context init = new InitialContext();
			Context env = (Context) init.lookup("java:comp/env");
			DataSource ds = (DataSource) env.lookup("jdbc/myoracle");
			conn = ds.getConnection();
		} catch ( Exception e ) { e.printStackTrace(); }
		
	}
	
	public void disConnectDB() {

		if ( rs != null )
			try { rs.close(); }
			catch ( SQLException e ) { e.printStackTrace(); }
		if ( pstmt != null )
			try { pstmt.close(); }
			catch ( SQLException e ) { e.printStackTrace(); }
		if ( conn != null )
			try { conn.close(); }
			catch ( SQLException e ) { e.printStackTrace(); }
		
	}
	
	public boolean signUp() {

		String sql = "";
		
		connectDB();
		
		try {
			sql = "SELECT id FROM members WHERE id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mEntity.getId());
			
			rs = pstmt.executeQuery();
		} catch ( Exception e ) {
			e.printStackTrace();
		}
		
		try {
			if ( rs.next() )	return true;
			else {
				String values = mEntity.getId() + "," + mEntity.getPassword() + "," + mEntity.getName() + "," + mEntity.getBirthday()
											+ "," + mEntity.getPhone() + "," + mEntity.getEmail() + "," + ",NULL"; 
				sql = "INSERT INTO members VALUES(" + values + ")";
			}
		} catch ( Exception e ) {
			e.printStackTrace();
		}
		
		disConnectDB();
		
		return false;
		
	}
	
}