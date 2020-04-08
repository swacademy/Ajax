package kr.co.javaexpert.libs.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

import kr.co.javaexpert.libs.model.CommentBean;

public class CommentDAO {
	public static void delete(Connection conn, int id) throws SQLException{
		conn.setAutoCommit(false);
		String sql = "DELETE FROM Ajax_Comment WHERE id = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, id);
		pstmt.executeUpdate();
		conn.commit();
		if(pstmt != null) pstmt.close();
	}
	public static CommentBean select(Connection conn, int id) throws SQLException{
		CommentBean cb = new CommentBean();
		String sql = "SELECT name, content FROM Ajax_Comment WHERE id = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, id);
		ResultSet rs = pstmt.executeQuery();
		rs.next();
		cb.setName(rs.getString("name"));
		cb.setContent(rs.getString("content"));
		if(rs != null) rs.close();
		if(pstmt != null) pstmt.close();
		return cb;
	}
	public static void update(Connection conn, CommentBean cb) throws SQLException{
		conn.setAutoCommit(false);
		String sql = "UPDATE AJAX_COMMENT SET name = ?, content = ? WHERE id = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, cb.getName());
		pstmt.setString(2, cb.getContent());
		pstmt.setInt(3, cb.getId());
		pstmt.executeUpdate();
		
		conn.commit();
		
		if(pstmt != null) pstmt.close();
	}
	public static int insert(Connection conn, CommentBean cb) throws SQLException{
		int nextId = 0;
		conn.setAutoCommit(false);
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("SELECT VALUE FROM ID_REPOSITORY WHERE NAME='COMMENT'");
		rs.next();
		nextId = rs.getInt("VALUE");
		nextId++;
		if(rs != null) rs.close();
		if(stmt != null) stmt.close();
		
		PreparedStatement pstmt = conn.prepareStatement("UPDATE ID_REPOSITORY SET VALUE = ? WHERE NAME='COMMENT'");
		pstmt.setInt(1, nextId);
		pstmt.executeUpdate();
		if(pstmt != null) pstmt.close();
		
		pstmt = conn.prepareStatement("INSERT INTO AJAX_COMMENT VALUES (?, ?, ?)");
		pstmt.setInt(1, nextId);
		pstmt.setString(2, cb.getName());
		pstmt.setString(3, cb.getContent());
		pstmt.executeUpdate();
		
		conn.commit();
		if(pstmt != null) pstmt.close();
		return nextId;
	}
	public static Vector<CommentBean> select_all(Connection conn) throws SQLException{
		Vector<CommentBean> vector = new Vector<CommentBean>(1,1);
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("SELECT * FROM AJAX_COMMENT ORDER BY ID");
		if (rs.next()) {
			do {
				CommentBean cb = new CommentBean();
				cb.setId(rs.getInt("id"));
				cb.setName(rs.getString("name"));
				cb.setContent(rs.getString("content"));
				vector.addElement(cb);
			} while(rs.next());
		}else{
			vector = null;
		}
		if(rs != null) rs.close();
		if(stmt != null) stmt.close();
		return vector;
	}
}
