package kr.co.javaexpert.libs.db;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

public class DBConnection {
	public static Connection getConnection(){
		Connection conn = null;
		try {
			Context context = new InitialContext();
			Context env = (Context)context.lookup("java:comp/env");
			DataSource ds = (DataSource)env.lookup("jdbc/myoracle");
			conn = ds.getConnection();
		} catch (NamingException e) {
			System.out.println(e.getMessage());
		} catch(SQLException e){
			System.out.println(e.getMessage());
		}		
		return conn;
	}
}
