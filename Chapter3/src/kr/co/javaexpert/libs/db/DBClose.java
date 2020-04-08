package kr.co.javaexpert.libs.db;

import java.sql.SQLException;
import java.sql.Connection;

public class DBClose {
	public static void close(Connection conn){
		if(conn != null)
			try {
				conn.close();
			} catch (SQLException e) {
				System.out.println(e.getMessage());
			}
	}
}
