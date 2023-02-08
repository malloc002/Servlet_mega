<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재 날짜, 시간</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

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
	
	<h1 class="font-weight-light"><%= fin %></h1>
	<%= fin %>

</body>
</html>