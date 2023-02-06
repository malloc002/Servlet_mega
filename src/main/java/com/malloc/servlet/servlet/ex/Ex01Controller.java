package com.malloc.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex01Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// response header 셋팅
		// header: 정보     내가 만들 response가 어떤 것인지 알려주는 것
		
		//캐릭터 셋
		response.setCharacterEncoding("utf-8");
		//데이터 타입(MIME)
		response.setContentType("text/plain");
		//html이면 text/html로 하면됨 
		
		//날짜 표현하기
		//현재 날짜 시간을 2023-02-01 17:31:12
		
		Date now = new Date();
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		//대문자 H는 24시간 기준
		//M은 월 m은 분
		String dateTimeString = formatter.format(now);
		
		//response에 값 채우기
		PrintWriter out = response.getWriter();
		out.println(now);
		out.println(dateTimeString);
	}
}
