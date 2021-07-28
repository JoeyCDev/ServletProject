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

<% Date now = new Date();
SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
String formattedDate = formatter.format(now);
int currentYear = Integer.parseInt(formattedDate.substring(0,4));
int currentMonth = Integer.parseInt(formattedDate.substring(5,7));
int currentDay = Integer.parseInt(formattedDate.substring(8,10));
int currentHour = Integer.parseInt(formattedDate.substring(11,13));
int currentMinute = Integer.parseInt(formattedDate.substring(14,16));
int currentSecond = Integer.parseInt(formattedDate.substring(17,19));

%>

<% if((request.getParameter("text")=="time")){%>
	현재 시간 <b><%=currentHour %></b>시 <b><%=currentMinute %></b>분 <b><%=currentSecond %></b>초
<% }%>

<% if((request.getParameter("text")=="date")){%>
	오늘 날짜 <b><%=currentYear %></b>년 <b><%=currentMonth %></b>월 <b><%=currentDay %></b>일
<% }%>
	


</body>
</html>