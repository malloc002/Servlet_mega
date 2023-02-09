<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변환 결과</title>
</head>
<body>
	<% 
		double cm = Double.parseDouble(request.getParameter("cm"));
		String[] unitArray = request.getParameterValues("unit");
		
		String result="";
		for(int i = 0; i < unitArray.length; i++)
		{
			if(unitArray[i].equals("inch"))
			{
				result = result + cm / 2.54 + "in<br>";
			}
			else if(unitArray[i].equals("yard"))
			{
				result = result + cm / 91.44 + "yd<br>";
			}
			else if(unitArray[i].equals("feet"))
			{
				result = result + cm / 30.48 + "ft<br>";
			}
			else if(unitArray[i].equals("meter")){
				result = result + cm / 100 + "m<br>";
			}
		}
	%>
	<h1>변환 결과</h1>
	<h2><%= (int)cm %>cm</h2>
	<hr>
	<h2><%= result %></h2>

</body>
</html>