package com.malloc.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test10")
public class Test10Controller extends HttpServlet {
	
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "hagulu");
	        put("password", "asdf");
	        put("name", "김인규");
	    }
	};

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		//아이디와 비밀번호를 전달 받고, 그에 따른 처리를 html로 만든다. 
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		out.println("<html><head><title>로그인</title></head> <body>");
		
		//전달 받은 아이디가 맵의 id와 일치하지 않는다면, 경고 문구 출력
		if(!id.equals(userMap.get("id")))
			out.println("id가 일치하지 않습니다.");
		else if(!pw.equals(userMap.get("password")))
			out.println("password가 일치하지 않습니다.");
		else {
			out.println("<h1>" + userMap.get("name") + "님 환영 합니다.</h1>");
		}
		
		out.println("</body></html>");
	}
}
