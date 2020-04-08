<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%    
	String irum = request.getParameter("irum");
	String age = request.getParameter("age");
	String phone = request.getParameter("phone");
		
	String msg = "<b>" + irum + "</b>님의 나이는 " +
	                     "<u>" + age + "</u>살이고, 핸드폰 번호는 " +
		  	             "<i>" + phone + "</i> 입니다.";
	out.println(msg);
%>		