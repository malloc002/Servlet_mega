package com.malloc.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test09")
public class Test09Controller extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		//이름과 자기소개서를 전달 받고, html 화면 구성
		String name = request.getParameter("name");
		String text = request.getParameter("text");
		
		out.println("<html><head><title>지원 완료</title></head> <body>");
		
		out.println("<h2>" + name + "님 지원이 완료 되었습니다.</h2><hr>");
		out.println("지원 내용<br>");
		out.println(text);
		
		out.println("</body></html>");
		
	}
}
