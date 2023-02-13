package com.java.servlet;

import java.io.IOException;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Servlet07")
public class Servlet07 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	public void init(ServletConfig config) throws ServletException {
		//서블릿 초기화 작업수행 시 자동으로 호출되는 메소드	
		//해당 서블릿이 최초 실행될 때 딱 한번 시행
		System.out.println("servlet07시작");
				
		
	}

	
	public void destroy() {
		//서블릿 마무리 작업 수행 시 자동으로 호출되는 메소드
		//서블릿 종료시에 단 한번 시행
		System.out.println("servlet07 끝");
		
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("doget 메소드");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("dopost 메소드");
	
	}
	
	@PostConstruct
	public void postConstruct() {
		System.out.println("선처리 postconstruct 입니다."); //init보다 더 앞서 실행
		
			}

	
	@PreDestroy
	public void preDestroy() {
		System.out.println("후처리 postconstruct"); //destroy보다 늦게 실행
		
	}


}
