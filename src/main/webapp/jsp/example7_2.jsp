<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색결과</title>
<!-- bootstrap CDN link -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
</head>
<body>
	<%
	List<Map<String, Object>> list = new ArrayList<>();
	Map<String, Object> map = new HashMap<String, Object>() {
		{
			put("name", "버거킹");
			put("menu", "햄버거");
			put("point", 4.3);
		}
	};
	list.add(map);
	map = new HashMap<String, Object>() {
		{
			put("name", "BBQ");
			put("menu", "치킨");
			put("point", 3.8);
		}
	};
	list.add(map);
	map = new HashMap<String, Object>() {
		{
			put("name", "교촌치킨");
			put("menu", "치킨");
			put("point", 4.1);
		}
	};
	list.add(map);
	map = new HashMap<String, Object>() {
		{
			put("name", "도미노피자");
			put("menu", "피자");
			put("point", 4.5);
		}
	};
	list.add(map);
	map = new HashMap<String, Object>() {
		{
			put("name", "맥도날드");
			put("menu", "햄버거");
			put("point", 3.8);
		}
	};
	list.add(map);
	map = new HashMap<String, Object>() {
		{
			put("name", "BHC");
			put("menu", "치킨");
			put("point", 4.2);
		}
	};
	list.add(map);
	map = new HashMap<String, Object>() {
		{
			put("name", "반올림피자");
			put("menu", "피자");
			put("point", 4.3);
		}
	};
	list.add(map);
	%>

	<%
	String menuSearch = request.getParameter("menu");
	String optionSelected = request.getParameter("filter");
	%>

	<div class="container text-center">
		<h1>검색 결과</h1>
		<table class="table">
			<tr>
				<th>메뉴</th>
				<th>상호</th>
				<th>별점</th>
			</tr>
			<%
			for(Map element : list){
		       
					if (element.get("menu").equals(menuSearch)) {
						
					
		
			
					if(optionSelected==null||(optionSelected.equals("on")&&(Double)element.get("point")>=4.0)){
						String storeName = (String)element.get("name");
						double point = (double)element.get("point");	
	
						%>
						<tr>
							<td><%=menuSearch%></td>
							<td><%=storeName%></td>
							<td><%=point %></td>
				
						</tr>
		
					
			<% } } }
			%>
		
			 <!-- 출력 안되는 방법
			 
			 <%
			 for(int i=0; i<list.size();i++){
					if (map.get("menu").equals(menuSearch) &&(optionSelected==null)) {
						String storeName = (String)map.get("name");
						double point = (double)map.get("point");	
					
			%>
			<tr>
				<td><%=menuSearch%></td>
				<td><%=storeName%></td>
				<td><%=point %></td>
				
			</tr>
			<%
			
					} 
					else if(map.get("menu").equals(menuSearch)&&(optionSelected.equals("on"))){
						if((double)(map.get("point"))>=4.0){
						String storeName = (String)map.get("name");
						double point = (double)map.get("point");	
	
						%>
						<tr>
							<td><%=menuSearch%></td>
							<td><%=storeName%></td>
							<td><%=point %></td>
				
						</tr>
		
					
			<% } } } 
			%>		
			-->
		</table>
	</div>
</body>
</html>