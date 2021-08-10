<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.majon.common.MysqlService" %>
<%@ page import ="java.sql.ResultSet" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마켓</title>
<link rel="stylesheet" href="/db/example3/style.css">
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>

	<div class="wrap-main container mt-3">
		<jsp:include page="header-nav.jsp"/>
		<section class="main-section mt-3">
			<div class="grid">
				<%
					MysqlService mysqlService = MysqlService.getInstance();
					mysqlService.connect();
					
					String selectQuery = "SELECT *  FROM `seller` JOIN `used_goods`ON seller.id = used_goods.sellerId ORDER BY seller.id DESC;";
					
					ResultSet result = mysqlService.select(selectQuery);
					
					while(result.next()){ %>
					
				
				<div class="grid-item">
					<div class="img-container">
					<img src=<%= result.getString("used_goods.picture")%>>
					</div>
					<div class="text-container">
						<div class="title display-5"><b><%= result.getString("used_goods.title")%></b></div>
						<div class="price text-secondary"><%= result.getInt("used_goods.price")%></div>
						<div class="seller-name color-orange"><%= result.getString("seller.nickname")%></div>
					</div>
				</div>
				<%}%>
				
				
			</div>		
		</section>
		<jsp:include page="footer.jsp"/>
	</div>

</body>
</html>