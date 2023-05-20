<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sum of 1 to 100</title>
</head>
<body>
	<%
	int sum = 0;  
	
	for(int i =1; i<=100;i++){
		sum +=i;	
	}
	%>
	1부터 100까지의 합 = <%=sum%> <br/>
	<% 
	for(int i =101; i<=200;i++){
		sum +=i;	
	}
	%>
	1부터 200까지의 합 = <%=sum%>
	
	
</body>
</html>