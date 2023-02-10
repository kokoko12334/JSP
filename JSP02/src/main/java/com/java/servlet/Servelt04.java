package com.java.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/form/data02")
public class Servelt04 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		
		
		String[] free = request.getParameterValues("free");
		
		String area =  request.getParameter("area"); //option의 value값을 받음
		
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset = UTF-8");
		
		PrintWriter out = response.getWriter();
		
		out.print("<!DOCTYPE html>");
		out.print("<html>");
		
		out.print("<head>");
		out.print("<title>회원가입 정보</title>");
		out.print("</head>");
		
		out.print("<body>");
		out.print("<h2> id :" + id);  //</p>는 자동생성 되는듯 
		out.print("<h2> pwd :" + pwd);
		out.print("<h2> name :" + name);
		out.print("<h2> tel :" + tel);
		out.print("<h2> free :" + Arrays.toString(free));
		out.print("<h2> area :" + area);
		
		out.print("</body>");
		out.print("</html>");
		
		
		
		
	}

}
