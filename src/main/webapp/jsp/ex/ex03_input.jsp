<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="/jsp/ex/ex03.jsp">
		
		<!-- select는 value 안 추가해도 그 값이 넘어감 -->
		<!-- 근데 다른 것을 넘기고 싶으면 value 설정해주면 됨 -->
		<h3>좋아하는 과일을 선택하세요</h3>
		<select name="fruit">
			<option value="banana">바나나</option>
			<option value="peach">복숭아</option>
			<option>딸기</option>
		</select>
		
		<h3>좋아하는 음식을 모두 고르세요.</h3>
		<label>민트초코<input type="checkbox" name="food" value="민초"></label>
		<label>하와이안 피자<input type="checkbox" name="food" value="피자"></label>
		<label>번데기<input type="checkbox" name="food" value="번데기"></label>
		
		<br>
		<button type="submit">입력</button>
		
	</form>
</body>
</html>