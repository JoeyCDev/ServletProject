<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.*" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar 클래스 활용 2</title>
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>

<% Calendar cal = Calendar.getInstance(); 
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/d");
	int nowYear = cal.get(Calendar.YEAR);
	int nowMonth = cal.get(Calendar.MONTH);
	//오늘을 이번 달 1일로 세팅
	cal.set(Calendar.DATE,1);
	// 1일로 세팅된 요일을 숫자로 저장 -> 일(1),월(2) ...
	int dayToNumber = cal.get(Calendar.DAY_OF_WEEK);
	// 이번 달 마지막 날 날짜 구하기
	int endDate = cal.getActualMaximum(Calendar.DATE);
%>
<div class="container mt-3">
<h1 class="text-center"><%=nowYear %>-<%=nowMonth+1 %></h1>
<table class="table">
	<thead class="text-center">
		<tr>
			<th class="text-danger">일</th>
			<th>월</th>
			<th>화</th>
			<th>수</th>
			<th>목</th>
			<th>금</th>
			<th>토</th>
		</tr>
	</thead>
	<tbody class="text-center">
		<tr>
	<% 
		// 1일 시작 전 공백표시
		for(int i = 1; i<dayToNumber;i++){
			
		 %>
			<td>&nbsp</td>
		<%}
	
	%>	
		
		<% // 1일 부터 달의 마지막 일까지 출력하기
		for(int i=1;i<endDate;i++){
			dayToNumber++;
			// 줄 바꿈 위한세팅 (</tr>닫기 밑 새로운 <tr>열기)
			if(dayToNumber%7==2){
			%>
			</tr>	
			<tr>
			<% 
			}
			%>
			
			<td><%=i %></td>
			
				
		<%  } 
		 %>
		 </tr>
		
	</tbody>
</table>
</div>
</body>
</html>