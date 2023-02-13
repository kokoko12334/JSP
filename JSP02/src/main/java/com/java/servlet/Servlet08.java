package com.java.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





public class Servlet08 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		ServletConfig config = super.getServletConfig();
		
		//servletConfig 객체는 서블릿이 초기화되는 동안
		//참조해야 할 정보를 전달해주는 역할을 한다.
		//쓰는 이유는 web.xml만 수정해주면 됨(자바 모르는 사람이 괜히 자바파일 건드리면 안되므로 간단히 web.xml를 수정)
		
		String id = config.getInitParameter("id");
		String pw = config.getInitParameter("pwd");
		
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset = UTF-8");
		
		PrintWriter out = response.getWriter();
		
		out.print("<!DOCTYPE html>");
		out.print("<html>");
		
		out.print("<head>");
		out.print("<title>init</title>");
		out.print("</head>");
		
		out.print("<body>");
		out.print("<h2> 초기화 id:" + id);
		out.print("<h2> 초기화 pwd:" + pw);
		out.print("</body>");
		
		out.print("</html>");
		
		
		
		
	}

}
