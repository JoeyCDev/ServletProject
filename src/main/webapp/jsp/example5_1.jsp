<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post Method 2</title>
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	
	<div class="container mt-3">
		<h1>길이 변환</h1>
		<form method="post" action="/jsp/example5_2.jsp">
		<div class="d-flex align-items-center">
		<input type="text" name="length" class="form-control w-25 mr-2"> 
		<small>cm</small>
		</div>
		<div class="mt-3">
		<label">인치<input type="checkbox" class="ml-1 mr-2" name="conversion" value="inch"></label>
		<label>야드<input type="checkbox" class="ml-1 mr-2" name="conversion" value="yard"></label>
		<label>피트<input type="checkbox" class="ml-1 mr-2" name="conversion" value="feet"></label>
		<label>미터<input type="checkbox" class="ml-1 mr-2" name="conversion" value="meter"></label><br>
		</div>
		<button type="submit" class="btn btn-success">변환</button>
		</form>
	</div>
	
</body>
</html>