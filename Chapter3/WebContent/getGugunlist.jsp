<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.co.javaexpert.libs.db.*, java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String sido = request.getParameter("sido");
	Connection conn = DBConnection.getConnection();
	String sql = "SELECT DISTINCT gugun FROM zipcode ";
	sql += "WHERE sido = ? ORDER BY gugun";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, sido);
	ResultSet rs = pstmt.executeQuery();
%>
	<select name="gugun">
		<option>--구군선택--</option>
<% while(rs.next()){ 
		   String gugun = rs.getString(1);
%>
		<option value="<%=gugun%>"><%=gugun %></option>
<% }  //while end 
	   rs.close();
	   pstmt.close();
%>		   
     </select>
<% DBClose.close(conn);  %>