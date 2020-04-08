<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% 
	request.setCharacterEncoding("utf-8");
	String address = request.getParameter("address");
	String order = request.getParameter("order");
%>
<!DOCTYPE html">
<html lang="en">
<head>
<meta charset="utf-8">
<title>Break Neck Pizza Delivery</title>
<link rel="stylesheet" type="text/css" href="css/breakneck.css" />
</head>
<body>
  <p>
   <img src="images/breakneck-logo.gif" alt="Break Neck Pizza" />
  </p>
   <p>Your order will be delivered to:</p>
   <p class="customer-data">
<%
   out.println(address + "<br />");
%>
   </p>
   <p>We have your order down as:</p>
   <p class="customer-data">
<%
   out.println(order + "<br />");
%>
   </p>
 </body>
</html>