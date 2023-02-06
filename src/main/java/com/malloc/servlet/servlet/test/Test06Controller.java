package com.malloc.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test06")
public class Test06Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		String aString = request.getParameter("a");
		int a = Integer.parseInt(aString);
		String bString = request.getParameter("b");
		int b = Integer.parseInt(bString);
		
		int addition = a + b;
		int subtraction = a - b;
		int multiplication = a * b;
		int division = a / b;
		
		//{"addition": a, "subtraction": b, "muliplication": c, "division": d}
		out.println("{\"addition\": " + addition + ", \"subtraction\": " + subtraction + ", \"multiplication\": " + multiplication + ", \"division\": " + division + "}");
		
	}
}
