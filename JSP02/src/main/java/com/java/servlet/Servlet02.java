package com.java.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/getpost")
public class Servlet02 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//get으로 서버에 받음
		System.out.println("doget 메소드 입니다.");
		String id = request.getParameter("id");  //name으로 받음 기본 타입은 String 타입
		String pwd = request.getParameter("pwd");
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset = UTF-8");
		
		PrintWriter out = response.getWriter();
		
		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.print("<head>");
		out.print("<title>parameter 받기</title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<p> id :" + id);  //</p>는 자동생성 되는듯 
		out.print("<p> pwd :" + pwd);
		
		out.print("</body>");
		out.print("</html>");
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8"); // post방식은 request의 인코딩을 utf-8로 해주어야 함.
		
		System.out.println("dopost 메소드입니다.");
		
		String id = request.getParameter("id");  //name으로 받음 기본 타입은 String 타입
		String pwd = request.getParameter("pwd");
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset = UTF-8");
		
		PrintWriter out = response.getWriter();
		
		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.print("<head>");
		out.print("<title>parameter 받기</title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<p> id :" + id);  //</p>는 자동생성 되는듯 
		out.print("<p> pwd :" + pwd);
		
		out.print("</body>");
		out.print("</html>");
		//post로 서버에 받음
	}

}
