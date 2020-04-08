<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>    
<%
	response.setHeader("cache-control", "no-cache"); //HTTP 1.1
	response.setHeader("cache-control", "no-store"); //FF
	response.setDateHeader("expires", 0);
	response.setHeader("pragma", "no-cache");   //HTTP1.0
	
	Calendar now = Calendar.getInstance();
	int hour = now.get(Calendar.HOUR_OF_DAY);
	int minute = now.get(Calendar.MINUTE);
	int second = now.get(Calendar.SECOND);
	out.println("" + hour + " : " + minute + " : " + second);
%>