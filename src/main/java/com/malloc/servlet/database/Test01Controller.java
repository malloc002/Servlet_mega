package com.malloc.servlet.database;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.malloc.servlet.common.MysqlService;

@WebServlet("/db/test01")
public class Test01Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("text/plain");
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		String query = "INSERT INTO `real_estate`\r\n"
				+ "(`realtorId`, `address`, `area`, `type`, `price`, `rentPrice`, `createdAt`, `updatedAt`)\r\n"
				+ "value\r\n"
				+ "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, NULL, now(), now());";
		
		int count = mysqlService.update(query);
		
		
	}
}
