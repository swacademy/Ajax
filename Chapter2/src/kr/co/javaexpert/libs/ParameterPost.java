package kr.co.javaexpert.libs;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class ParameterPostServlet extends HttpServlet{
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
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();

		String name = request.getParameter("name"); 
		String age = request.getParameter("age"); 
		String mobilePhone = request.getParameter("mobilePhone");
		String email = request.getParameter("email");

		String str = "<b>" + name + "</b>님의 나이는 " + age + "입니다. <br/>";
		str += "휴대폰 번호는 " + mobilePhone + " 이고, 이메일은 " + email + " 입니다.";
		out.println(str); 
		out.close(); 
	}
}