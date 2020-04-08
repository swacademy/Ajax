<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String outMsg = "";
	String data = request.getParameter("data");
	if(data.equals("1")){
		outMsg = "1분 코스가 선택되었습니다" ; 
	}else if(data.equals("5")){
		outMsg = "5분 코스가 선택되었습니다" ;
	}else if(data.equals("10")){
		outMsg = "10분 코스가 선택되었습니다" ;
	}else{
		outMsg = "선택해 주십시요" ; 
	}
	out.println(outMsg);
%>