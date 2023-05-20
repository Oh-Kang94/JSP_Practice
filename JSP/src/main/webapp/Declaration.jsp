<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언부</title>
</head>
<body>
	<%
	int num1 = 10;
	int num2 = 20;
	%>
	num1=	<%=num1%><br /> 
	num2=	<%=num2%><br /> 
	sum =   <%=sum(num1,num2) %><br />
</body>
	<%!public int sum(int num1, int num2) {
		return num1 + num2;
	}%>
</html>