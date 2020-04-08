<%@ page contentType="text/xml; charset=utf-8" %>
<jsp:directive.page import="java.util.Vector" />
<jsp:directive.page import="kr.co.javaexpert.libs.model.CommentBean" />
<jsp:useBean id="sc" class="kr.co.javaexpert.libs.controller.SelectController" />

<%
	Vector<CommentBean> vector = sc.select_all();
%>
<result>
	<code>success</code>
	<data>
	{
		"comments" : [
	<%
		if (vector != null) {
			for(int i = 0 ; i < vector.size() ; i++){ 
				CommentBean cb = vector.get(i);
	%>
<% 		if(i > 0) { //두번째 레코드 일때부터 , 추가 %>
		,
<%  } %>
		{
			id: <%= cb.getId() %>,
			name: '<%= cb.getName() %>',
			content: '<%= cb.getContent() %>'
		}
		<%
			}
		}
	%>
		]
	}
	</data>
</result>