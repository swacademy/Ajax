<%@ page contentType="text/xml; charset=utf-8" %>
<jsp:useBean id="dc" class="kr.co.javaexpert.libs.controller.DeleteController" />

<%
	int id = Integer.parseInt(request.getParameter("id"));
	dc.delete(id);
%>
<result>
	<code>success</code>
	<id><%= id %></id>
</result>