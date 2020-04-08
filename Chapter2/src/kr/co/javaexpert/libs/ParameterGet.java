package kr.co.javaexpert.libs;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class ParameterGetServlet extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException{
		requestProcess(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException{
		requestProcess(request, response);
	}

	public void requestProcess(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();

		String name = request.getParameter("name");
		name = entoutf(name);
		String age = request.getParameter("age"); 
		String mobilePhone = request.getParameter("mobilePhone");

		String str = "<b>" + name + "</b>님의 나이는 " + age + "이고, 휴대폰 번호는 " + mobilePhone + " 입니다.";
		out.println(str); 
		out.close(); 
	}
	private String entoutf(String en){
		String utf8 = null;
		try{
			utf8 = new String(en.getBytes("ISO8859_1"), "utf-8");
		}catch(java.io.UnsupportedEncodingException e){}
		return utf8;
	}
}