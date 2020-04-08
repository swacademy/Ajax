package kr.co.javaexpert.libs.controller;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Vector;

import kr.co.javaexpert.libs.db.CommentDAO;
import kr.co.javaexpert.libs.db.DBClose;
import kr.co.javaexpert.libs.db.DBConnection;
import kr.co.javaexpert.libs.model.CommentBean;

public class SelectController {
	private Connection conn;
	public SelectController(){
		this.conn = DBConnection.getConnection();
	}
	public CommentBean select(int id){
		CommentBean cb = null;
		try{
			cb = CommentDAO.select(conn, id);
		}catch(SQLException ex){
			System.out.println(ex);
		}
		DBClose.close(this.conn);
		return cb;
	}
	public Vector<CommentBean> select_all(){
		Vector<CommentBean> vector = null;
		try{
			vector = CommentDAO.select_all(this.conn);
		}catch(SQLException ex){
			System.out.println(ex);
		}
		DBClose.close(conn);
		return vector;
	}
}
