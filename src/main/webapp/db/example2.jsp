<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import =  "com.majon.common.MysqlService" %>
<%@ page import = "java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 목록</title>
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>

	<%
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String selectQuery = "SELECT * FROM `bookmark` ORDER BY `id` DESC;";
		ResultSet result = mysqlService.select(selectQuery);
	%>
	
	<table class="table text-center mt-3">
		<thead>
			<tr>
				<th>사이트</th>
				<th>사이트 주소</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<% while(result.next()){ %>
			<tr>
				<td><%=result.getString("name") %></td>
				<td><a href="<%=result.getString("url") %>"><%=result.getString("url") %></a></td>
				<td><a href="/db/example2_delete?id=<%=result.getInt("id") %>">삭제</a></td>
			</tr>
			<% }%>
		</tbody>
	</table>



</body>
</html>