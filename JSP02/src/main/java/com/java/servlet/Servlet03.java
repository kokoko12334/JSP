package com.java.servlet;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/form/data01")
public class Servlet03 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 request.setCharacterEncoding("UTF-8");
		
	 String id = request.getParameter("studentID");
	 String name = request.getParameter("name");
	 String age = request.getParameter("age");
	 String major = request.getParameter("major");
	 
		
	 String[] circle = request.getParameterValues("circle");
		
	 String area =  request.getParameter("area");
		
	 System.out.println("학번: "+ id);
	 System.out.println("이름: "+ name);
	 System.out.println("나이: "+ age);
	 System.out.println("전공: "+ major);
	 System.out.println("동아리: " + Arrays.toString(circle));
	 System.out.println("사는지역: "+ area);
	 
		
		
	}

}
