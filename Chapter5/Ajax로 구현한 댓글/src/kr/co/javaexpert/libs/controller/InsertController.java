package kr.co.javaexpert.libs.controller;

import java.sql.Connection;
import java.sql.SQLException;

import kr.co.javaexpert.libs.db.CommentDAO;
import kr.co.javaexpert.libs.db.DBClose;
import kr.co.javaexpert.libs.db.DBConnection;
import kr.co.javaexpert.libs.model.CommentBean;

public class InsertController {
	private Connection conn;
	public InsertController(){
		this.conn = DBConnection.getConnection();
	}
	public int insert(CommentBean cb){
		int nextId = 0;
		try{
			nextId = CommentDAO.insert(conn, cb);
		}catch(SQLException ex){
			System.out.println(ex);
		}
		DBClose.close(conn);
		return nextId;
	}
}
