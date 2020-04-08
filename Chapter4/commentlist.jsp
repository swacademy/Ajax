<%@ page contentType="text/xml; charset=utf-8" %>
<jsp:directive.page import="java.sql.Connection" />
<jsp:directive.page import = "java.sql.Statement" />
<jsp:directive.page import = "java.sql.ResultSet" />
<jsp:directive.page import = "java.sql.SQLException" />
<jsp:directive.page import = "util.Util" />
<jsp:directive.page import = "util.DB" />
<%
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	try {
		conn = DB.getConnection();
		stmt = conn.createStatement();
		rs = stmt.executeQuery("SELECT * FROM AJAX_COMMENT ORDER BY ID");
%>
<result>
	<code>success</code>
	<data>
<%
		if (rs.next()) {
			do {
				if (rs.getRow() > 1) { %>
		,
<%
				}
%>
		{
			id: <%= rs.getInt("ID") %>,
			name: '<%= Util.toJS(rs.getString("NAME")) %>',
			content: '<%= Util.toJS(rs.getString("CONTENT")) %>'
		}
<%
			} while(rs.next());
		}
%>
	</data>
</result>
<%	} catch(Throwable e) {
		out.clearBuffer();
 %>
<result>
	<code>error</code>
	<message><%= e.getMessage() %></message>
</result>
<%	} finally {
		if (rs != null) try { rs.close(); } catch(SQLException ex) {}
		if (stmt != null) try { stmt.close(); } catch(SQLException ex) {}
		if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	}
%>
