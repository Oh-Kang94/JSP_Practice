<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sum</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
int num1 = Integer.parseInt(request.getParameter("number1")) ;
int num2 = Integer.parseInt(request.getParameter("number2")) ;
%>
두 수<%=num1 %>, <%=num2 %> 의 합은 <%=sum(num1,num2) %> 입니다.

</body>
<%!
private int sum(int num01, int num02){
	return num01+num02;
}
%>
</html>