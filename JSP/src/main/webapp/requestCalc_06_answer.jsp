<%@page import="java.util.Arrays"%>
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
	String result = "";
	String str = Arrays.toString(request.getParameterValues("mod"));
	double num1 = (double)Integer.parseInt(request.getParameter("num1"));
	double num2 = (double)Integer.parseInt(request.getParameter("num2"));
	
	result += str + "<br/>";
	
	if(str.contains("덧셈")){
		result +="덧셈결과는" + String.format("%.1f",num1+num2)+"입니다.<br/>";
	}
	if(str.contains("뺄셈")){
		result +="뺄셈결과는" +  String.format("%.1f",num1-num2) +"입니다.<br/>";
	}
	if(str.contains("곱셈")){
		result +="곱셈결과는" + String.format("%.1f",num1*num2)+"입니다.<br/>";
	}
	if(str.contains("나눗셈")){
		result +="나눗셈결과는" +  String.format("%.1f",num1/num2) +"입니다.<br/>";
	}
			

%>

</body>
</html>