<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.regex.Pattern"%>
<%!
	boolean isGood(String str){
		boolean flag = true;
		flag = Pattern.matches("\\d{4}-[0-1]\\d-[0-3]\\d", str);
		return flag;
    }
%>    
<%
	String userdate = request.getParameter("birthDate");
	boolean flag = isGood(userdate);
	response.setContentType("text/xml");
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("pragma", "no-cache");
	response.setDateHeader("Expires", 0);
	String msg = "You have entered a invalid date.";
	if(flag) msg = "You have entered a valid date";
	out.println("<response>");
	out.println("<passed>" + Boolean.toString(flag) + "</passed>");
	out.println("<message>" + msg + "</message>");
	out.println("</response>");
%>