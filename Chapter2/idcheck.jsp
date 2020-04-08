<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String irum = request.getParameter("irum");
	irum = new String(irum.getBytes("ISO8859_1"), "utf-8");
	out.println("당신의 이름은 " + irum + " 이군요.");
%>