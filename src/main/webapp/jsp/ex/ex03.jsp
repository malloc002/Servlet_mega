<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String fruit = request.getParameter("fruit");
	
		String[] foodArray = request.getParameterValues("food");
		
		String foodString = "";
		for(int i = 0; i < foodArray.length; i++)
		{
			foodString += foodArray[i] + " ";
		}
	%>
	
	<h4><%= fruit %></h4>
	<h4><%= foodString %></h4>
</body>
</html>