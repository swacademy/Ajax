package kr.co.javaexpert.libs.controller;

import java.sql.Connection;
import java.sql.SQLException;

import kr.co.javaexpert.libs.db.CommentDAO;
import kr.co.javaexpert.libs.db.DBClose;
import kr.co.javaexpert.libs.db.DBConnection;

public class DeleteController {
	private Connection conn;
	public DeleteController(){
		this.conn = DBConnection.getConnection();
	}
	public void delete(int id){
		try{
			CommentDAO.delete(this.conn, id);
		}catch(SQLException ex){
			System.out.println(ex);
		}
		DBClose.close(conn);
	}
}
