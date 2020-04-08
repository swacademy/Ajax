<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>


<%
	String data = request.getParameter("data");
	data = "서버는 지금 -- " + data + "-- 을 수신했습니다";
	out.println(data);
%>