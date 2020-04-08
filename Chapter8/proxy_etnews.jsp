<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ page import = "org.apache.commons.httpclient.HttpClient" %> 
<%@ page import = "org.apache.commons.httpclient.methods.GetMethod" %>
<%@ page import = "org.apache.commons.httpclient.HttpStatus" %>
<%
	String url = "http://rss.etnews.com/Section901.xml";
	
	HttpClient client = new HttpClient();
	GetMethod method = new GetMethod(url);
	
	try {
		int statusCode = client.executeMethod(method);
		out.clearBuffer();
		response.reset();		
		response.setStatus(statusCode);
		
		if (statusCode == HttpStatus.SC_OK) {
			String result = method.getResponseBodyAsString();
			response.setContentType("text/xml; charset=utf-8");
			out.println(new String(result.getBytes("ISO8859_1"), "utf-8"));
		}
	} finally {
		if (method != null) method.releaseConnection();
	}
%>