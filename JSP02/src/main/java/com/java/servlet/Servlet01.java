package com.java.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@는 어노테이션 : 메타 데이터
@WebServlet("/hell") //웹주소의 경로 지정, 최상단(default값으로 프로젝트이름인 JSP02/hell) 다음 경로 //패키지경로 달라도 됨 단 클래스이름이 같으면 안됨
public class Servlet01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Servlet01() {
        super();
        // TODO Auto-generated constructor stub
    }

	
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");
		//현재 문서를 웹브라우저에 utf-8로 인코딩해서 보냄
		
		response.setContentType("text/html; charset = UTF-8");
		//웹브라우저에게 html 문서를 utf-8로 해석하라는 뜻
	
		PrintWriter out = response.getWriter();
		// 웹브라우저에게 출력하기 위한 출력스트림 얻기
	
		
		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.print("<head>");
		out.print("<title> first servlet </title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<h2> 서블릿 시작합니다. </h2>");
		out.print("</body>");
		out.print("</html>");
	
		out.close();
	}


	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
