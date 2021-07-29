<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과 페이지</title>
</head>
<body>

<% 
	String text = request.getParameter("text");
	Date now = new Date();
	String string = null;
	if(text.equals("date")){
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 M월 d일");
		String formattedDate = formatter.format(now);
		string = "오늘 날짜 " + formattedDate;
	}else{
		SimpleDateFormat formatterTime = new SimpleDateFormat("H시 m분 s초");
		String formattedTime = formatterTime.format(now);
		string = "현재 시간 " + formattedTime;

	}

	
%>

<div>
	<h1><%=string %></h1>
</div>


	


</body>
</html>