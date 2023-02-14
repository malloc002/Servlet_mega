<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘부터 1일</title>
</head>
<body>
	<%
		Calendar today = Calendar.getInstance();
	
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 M월 d일");
	%>
	
	<h3>오늘부터 1일</h3>
	<%	for(int i = 0; i < 10; i++){ 
			
			today.add(Calendar.DATE, 100);
			String dateString = sdf.format(today.getTime());
	%>
	<h1><%= i + 1 %>00일: <%= dateString %></h1>
	<%	} %>
</body>
</html>