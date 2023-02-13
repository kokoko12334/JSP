package com.java.servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Servlet09")
public class Servlet09 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//쓰는 이유는 함수처럼 web.xml만 수정해주면 됨 또한 여러 서블릿이 공유하므로 다른 서블릿에서도 사용 가능
		ServletContext application = super.getServletContext();
		
		
		String name = application.getInitParameter("name");
		String age = application.getInitParameter("age");
		
		System.out.println("이름: "+ name);
		System.out.println("나이: "+ age);
		
		
	}

}
