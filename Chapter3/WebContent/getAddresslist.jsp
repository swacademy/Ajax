<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.co.javaexpert.libs.db.*, java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String sido = request.getParameter("sido");
	String gugun = request.getParameter("gugun");
	String dong = request.getParameter("dong");
	Connection conn = DBConnection.getConnection();
	String sql = null;
	if(sido == "" && gugun == ""){
		sql = "SELECT zipcode, sido, gugun, dong, bunji FROM zipcode ";
		sql += "WHERE dong LIKE '%" + dong + "%' ";
	}else if(sido != "" && gugun == ""){
		sql = "SELECT zipcode, sido, gugun, dong, bunji FROM zipcode ";
		sql += "WHERE sido = '" + sido + "' AND dong LIKE '%" + dong + "%' ";
	}else if(sido != "" && gugun != ""){
		sql = "SELECT zipcode, sido, gugun, dong, bunji FROM zipcode ";
		sql += "WHERE sido = '" + sido + "' AND gugun = '" + gugun + "' AND ";
		sql += "dong LIKE '%" + dong + "%' ";
	}
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
%>
<table cellpadding="3" cellspacing="0" border="1" width="500">
	<%
		while(rs.next()){
			String zipcode ="[" + rs.getString("zipcode") + "]";
			String dbsido = rs.getString("sido");
			String dbgugun = rs.getString("gugun");
			String dbdong = rs.getString("dong");
			String bunji = rs.getString("bunji");
			if(bunji == null) bunji = "";
			String address = dbsido + " " + dbgugun + " " + dbdong + " " + bunji;
	%>
		<tr>
			<td><%=zipcode %></td>
			<td><%=address %></td>
		</tr>
	<% } 
		rs.close();
		stmt.close();
	%>
</table>
<% DBClose.close(conn);  %>