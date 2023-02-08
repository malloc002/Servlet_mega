<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재 날짜, 시간</title>
</head>
<body>

	<%
		//보고싶은 데이터의 형태 전달 받고, 
		//ans = 1 -> 시간
		//ans = 2 -> 날짜
		Date now = new Date();
	
		SimpleDateFormat tsdf = new SimpleDateFormat("현재 시간 '<b>'HH'</b>'시 '<b>'mm'</b>'분 '<b>'ss'</b>'초");
		SimpleDateFormat dsdf = new SimpleDateFormat("오늘 날짜 '<b>'yyyy'</b>'년 '<b>'MM'</b>'월 '<b>'dd'</b>'일");
		
		String ans = request.getParameter("ans");
		

		String fin = null;
		
		if(ans.equals("time"))
		{
			fin = tsdf.format(now);
		}
		else if(ans.equals("date")) {
			fin = dsdf.format(now);
		}
	%>
	
	<!--  <h1 class="font-weight-light"><%= fin %></h1>-->
	<%= fin %>

</body>
</html>