<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
	
	
		String BMI(double h, double w){
			//BMI =  몸무게 / ((키 / 100.0) * (키 / 100.0));
			double bmi = w/((h/100.0)*(h/100.0));
			
			if(bmi <= 20)
			{
				return "저체중";
			}
			else if(bmi <= 25)
			{
				return "정상";
			}
			else if(bmi <= 30)
			{
				return "과체중";
			}
			else{
				return "비만";
			}
		}
	%>
	
	<%
		double height = Double.parseDouble(request.getParameter("height"));
		double weight = Double.parseDouble(request.getParameter("weight"));
	%>
	
	<h3>BMI 측정 결과</h3>
	<h1>당신은 <%= BMI(height, weight) %>입니다. </h1>
	
</body>
</html>