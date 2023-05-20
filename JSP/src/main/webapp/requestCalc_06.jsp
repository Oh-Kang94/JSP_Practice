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
request.setCharacterEncoding("utf-8");
String []mode = request.getParameterValues("mod");
double num1 = (double)Integer.parseInt(request.getParameter("num1"));
double num2 = (double)Integer.parseInt(request.getParameter("num2"));
%>
<%= Arrays.toString(mode) %><br/>
<%for(int i =0; i< mode.length;i++){
	out.print(mode[i]+" 결과는" + String.format("%.1f",calc(mode[i],num1,num2))+"입니다.<br/>");
}
%>
 

</body>
<%!private double calc(String mod, double num1, double num2){	
switch(mod){
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
</html>