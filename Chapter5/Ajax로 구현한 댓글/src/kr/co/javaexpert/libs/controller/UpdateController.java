package kr.co.javaexpert.libs.controller;

import java.sql.Connection;
import java.sql.SQLException;

import kr.co.javaexpert.libs.db.CommentDAO;
import kr.co.javaexpert.libs.db.DBClose;
import kr.co.javaexpert.libs.db.DBConnection;
import kr.co.javaexpert.libs.model.CommentBean;

public class UpdateController {
	private Connection conn;
	public UpdateController(){
		this.conn = DBConnection.getConnection();
	}
	public void update(CommentBean cb){
		try{
			CommentDAO.update(conn, cb);
		}catch(SQLException ex){
			System.out.println(ex);
		}
		DBClose.close(conn);
	}
}
