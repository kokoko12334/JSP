package com.java.servlet;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/form/data03")
public class servlet06 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		
	Enumeration<String> e = request.getParameterNames();	// 넘어오는 파라미터의 이름들의 목록을 enumeration타입으로 반환	
		
	while(e.hasMoreElements()) {
		
		
		String name = e.nextElement();
		String[] values = request.getParameterValues(name); //여러개 선택사항(취미, 체크박스) 존재 때문에 getparameter대신 배열로 받는 values로 씀
		
		for(String v: values) {
			System.out.println(v);
			
		}
		
		
	}
	
	
	
		
	}

}
