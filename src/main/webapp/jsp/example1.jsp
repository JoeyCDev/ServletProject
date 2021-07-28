<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 스크립트요소</title>
</head>
<body>
<!-- 1. 점수들의 평균 구하기 -->
<%
int sum=0;
int avg=0;

int[] scores = {80, 90, 100, 95, 80};

for(int i=0;i<scores.length;i++){
	 sum += scores[i];
	 avg = sum/scores.length;
}
%>

<strong>점수 평균은 <%=avg %> 입니다.</strong>
<br>

<!-- 2. 채점 결과 -->
<% 
double sum2=0;
int score=0;
List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
Iterator<String>iter = scoreList.iterator();
while(iter.hasNext()){
	if(iter.next().equals("O")){
		sum2+=1;
	}
}
score=(int)(sum2/scoreList.size()*100);

%>

<strong>체점 결과는 <%=score %>점 입니다.</strong>
<br>

<!-- 3. 1부터 n까지의 합계를 구하는 함수 -->
<%!
	int N = 50;
%>
<%!
	public int calcSum(int N){
		int sum=0;
		for(int i=1;i<=N;i++){
			sum+=i;
		}
		return sum;
}
%>

<strong>1에서 <%=N %>까지의 합은 <%=calcSum(50) %></strong>
<br>

<!-- 4. 나이 구하기 -->
<%
String birthDay = "20010820";
int birthYear = Integer.parseInt(birthDay.substring(0, 4));
Date now = new Date();
SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
String formattedDate = formatter.format(now);
int nowYear = Integer.parseInt(formattedDate.substring(0, 4));
int age = nowYear - birthYear + 1;
%>

<strong><%=birthDay%> 의 나이는 <%=age %>살 입니다.</strong>


</body>
</html>