<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 선호도 출력</title>
</head>
<body>

	<% 
		String nickname = request.getParameter("nickname");	
		String hobby = request.getParameter("hobby");	
		String animal = request.getParameter("animal");	
		String[] foodArray = request.getParameterValues("food");
		String fruit = request.getParameter("fruit");

	%>
	
	<%
			// pizza, puppa
				String result = "";
				for(int i = 0; i < foodArray.length; i++){
					String food = foodArray[i];
					result += food + ",";
				}
				result = result.substring(0,result.length()-1);
			%>

	<table border=1>
		<tr>
			<th>별병</th>
			<td><%=nickname %></td>
		</tr>
		<tr>
			<th>취미</th>
			<td><%=hobby %></td>
		</tr>
		<tr>
			<th>동물</th>
			<td><%=animal %></td>
		</tr>
		<tr>
			<th>음식</th>
			<td>
			<%=result %></td>
		</tr>
		<tr>
			<th>과일</th>
			<td>
			<%=fruit %></td>
		</tr>
	
	</table>

</body>
</html>