<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.sql.*" %>
<jsp:directive.page import="kr.co.javaexpert.libs.db.*" />    
<%
	String phone = request.getParameter("phone");
	Connection conn = DBConnection.getConnection();
	String sql = "SELECT irum, sido, gugun, dong, bunji, zipcode FROM member ";
	sql += "WHERE phone = '" + phone + "' ";
 	Statement stmt = conn.createStatement();
 	ResultSet rs = stmt.executeQuery(sql);
 	String msg = null;
 	if(rs.next()){
 		msg = rs.getString("irum") + "\n";
 		msg += rs.getString("sido") + " " + rs.getString("gugun") + " " + rs.getString("dong");
 		if(rs.getString("bunji") ==null ) msg += " ";
 		else msg += " " + rs.getString("bunji");
 		msg += " #" + rs.getString("zipcode");
 	}
 	out.println(msg);
 	rs.close();
	stmt.close();
	DBClose.close(conn);
%>