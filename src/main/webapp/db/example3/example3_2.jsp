<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.majon.common.MysqlService" %>
<%@ page import ="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>물건 올리기</title>
<link rel="stylesheet" href="/db/example3/style.css"/>
<script type="text/javascript" src="myscript.js"></script>
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="wrap-submit container mt-3">
		<jsp:include page="header-nav.jsp"/>
		<div class="container m-4">
			<h1>물건 올리기</h1>
			<form method="post" action="/db/example3_insert" onsubmit="return validate();">
				<div class="top-form d-flex mt-5">
					<select class="form-control col-2 mr-2" name="nickname" id="nickname">
						<option value="none">-아이디 선택-</option>
						<% MysqlService mysqlService = MysqlService.getInstance(); 
						   mysqlService.connect();
						   
						   String selectQuery = "SELECT * FROM `seller` ";
						   
						   ResultSet result = mysqlService.select(selectQuery);
						   while(result.next()){
						%>
						<option value=<%=result.getInt("id")%>><%=result.getString("nickname") %></option>
						<%} %>
					</select>
					<input type="text" class="form-control col-6" name="title" placeholder="제목" id="title">
					<div class="input-group col-3">
			        	<input type="text" class="form-control" name= "price" placeholder="가격" id="price">
			        	<div class="input-group-append">
			          		<div class="input-group-text">원</div>
			        	</div>
			      	</div>
			      </div>
			      <div class="middle-form mt-3">
			      	<textarea class="form-control" rows="7" name="description"></textarea>
			      </div>
			      <div class="bottom-form mt-3">
			      	<div class="input-group">
			      		<div class="input-group-prepend">
			      			<div class="input-group-text">이미지 url</div>
			      		</div>
			      		<input type="text" class="form-control" name="picture">
			      	</div>
			      </div>
			      <button class="btn btn-light mt-3 w-100 mb-5" type="submit">저장</button>
			</form>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>

</body>
</html>