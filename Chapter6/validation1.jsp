<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String key = request.getParameter("key").trim();
	String value = request.getParameter("value").trim();
	boolean flag = false;
	if(key.equals("zipcode")){
		flag = java.util.regex.Pattern.matches("^\\d{3}-?\\d{3}$", value);
	}else if(key.equals("handphone")){
		flag = java.util.regex.Pattern.matches("^(010|011|016|017|018|019)-\\d{3,4}-\\d{4}$", value);
	}else if(key.equals("email")){
		flag = java.util.regex.Pattern.matches("^[a-zA-Z0-9][-a-zA-Z0-9._]+@[-a-zA-Z0-9]+(\\.[-a-zA-Z0-9]+)*\\.(com|gov|edu|int|mil|net|org|biz|info|name|museum|coop|aero|[a-zA-Z][a-zA-Z])$", value);
	}
	response.setContentType("text/xml");
	response.setHeader("cache-control", "no-cache");
	response.setHeader("pragma", "no-cache");
	response.setDateHeader("Expires", 0);
	String msg = "You have entered a invalid " + key + ".";
	if(flag) msg = "You have entered a valid " + key + ".";
	out.println("<response>");
	out.println("<passed>" + Boolean.toString(flag) + "</passed>");
	out.println("<message>" + msg + "</message>");
	out.println("</response>");
%>