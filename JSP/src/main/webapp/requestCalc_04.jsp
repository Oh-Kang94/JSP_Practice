<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String mode = request.getParameter("mod");
double num1 = (double)Integer.parseInt(request.getParameter("num1"));
double num2 = (double)Integer.parseInt(request.getParameter("num2"));
%>
두 수의 <%= mode %>은 <%=String.format("%.1f", calc(mode, num1, num2)) %>입니다. 

</body>
<%!
private double calc(String mode, double num1, double num2){	
switch(mode){
	case "덧셈":
		return num1+num2;
	case "뺄셈":
		return num1-num2;
	case "곱셈":
		return num1*num2;
	case "나눗셈":
		return num1/num2;
	default:
		return 0;
		
	}
} 
%>
</body>
</html>