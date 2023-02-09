<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
	<h1 class="ml-2">길이 변환</h1>
	<form method="post" action="/jsp/test/test05.jsp">
		<div class="d-flex align-items-end">
			<input type="text" name="cm" class="form-control col-2 mr-2 mb-2 ml-2">cm
			<br>
		</div>
		
		<label class="ml-2">인치<input type="checkbox" name="unit" class="mr-2" value="inch"></label>
		<label>야드<input type="checkbox" name="unit" class="mr-2" value="yard"></label>
		<label>피트<input type="checkbox" name="unit" class="mr-2" value="feet"></label>
		<label>미터<input type="checkbox" name="unit" class="mr-2" value="meter"></label>
		<br>
		<button type="submit" class="btn text-white bg-success ml-2">변환</button>
	</form>
	
</body>
</html>