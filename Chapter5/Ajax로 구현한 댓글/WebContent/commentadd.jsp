<%@ page contentType="text/xml; charset=utf-8" %>
<jsp:directive.page import="kr.co.javaexpert.libs.model.CommentBean" />
<jsp:useBean id="sc" class="kr.co.javaexpert.libs.controller.SelectController" />
<jsp:useBean id="ic" class="kr.co.javaexpert.libs.controller.InsertController" />

<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String content = request.getParameter("content");

	CommentBean cb = new CommentBean();
	cb.setName(name);
	cb.setContent(content);
		
	int nextId = ic.insert(cb);
%>
<result>
	<code>success</code>
	<data>
	{
		id: <%= nextId %>,
		name: '<%= name %>',
		content: '<%= content %>'
	}
	</data>
</result>