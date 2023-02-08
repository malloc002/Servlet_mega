<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Arrays"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 스크립트 요소</title>
</head>
<body>

	<!-- 1번 -->
	<%
		int[] scores = {80, 90, 100, 95, 80};
		int sum = 0;
		double avg = 0;
		
		for(int i = 0; i < scores.length; i++)
		{
			sum += scores[i];
		}
		avg = (double)sum / scores.length;
	%>
	<h2>점수 평균은 <%= avg %>입니다.</h2>
	
	<!-- 2번 -->
	
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	
		int score = 0;
		
		for(String ans:scoreList)
		{
			if(ans == "O")
				score += 10;
		}
	
	%>
	
	<h2>채점 결과는 <%= score %>점입니다.</h2>
	
	<!-- 3. 1부터 n까지의 합계를 구하는 함수 -->
	
	<%!
		int sum(int n){
			int result = 0;
			
			for(int i = 1; i <= n; i++)
			{
				result += i;
			}
			
			return result;
		}
	%>
	
	<% int n = 50; %>
	
	<h2>1부터 <%= n %>까지의 합은 <%= sum(n) %></h2>
	
	<!-- 4. 나이 구하기 -->
	
	<%
		String birthDay = "20010820";
		String yearString = birthDay.substring(0,4);
		int year = Integer.parseInt(yearString);
		
		int age = 2023 - year + 1;
	%>
	
	<h2><%= birthDay %>의 나이는 <%= age %>살입니다.</h2>

</body>
</html>