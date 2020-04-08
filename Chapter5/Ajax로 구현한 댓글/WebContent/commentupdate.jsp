<%@ page contentType="text/xml; charset=utf-8" %>
<jsp:useBean id="uc" class="kr.co.javaexpert.libs.controller.UpdateController" />
<jsp:useBean id="sc" class="kr.co.javaexpert.libs.controller.SelectController" />
<jsp:directive.page import="kr.co.javaexpert.libs.model.CommentBean" />

<%
	request.setCharacterEncoding("utf-8");
	int id = Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	String content = request.getParameter("content");
	
	CommentBean cb = new CommentBean();
	cb.setId(id);
	cb.setName(name);
	cb.setContent(content);
	uc.update(cb); 
	
	CommentBean cb1 = sc.select(id);
%>
<result>
	<code>success</code>
	<data>
	{
		id: <%= id %>,
		name: '<%= cb1.getName() %>',
		content: '<%= cb1.getContent() %>'
	}
	</data>
</result>