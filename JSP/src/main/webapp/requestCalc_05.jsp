<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
</head>
<body>
계산을 위한 숫자를 입력하세요.<br/>
<form action="requestCalc_06.jsp" method="get">
숫자 1 : <select name="num1">
<%
for(int i=1;i<=100;i++){
	out.print("<option value ="+i+">"+i+"</option>");
}
%>
</select><br/>
숫자 2 : <select name="num2">
<%
for(int i=1;i<=100;i++){
	out.print("<option>"+i+"</option>");
}
%>
</select><br/>
계산방법 :<br/>
<input type="checkbox" name= "mod" value="덧셈" checked="checked">덧셈<br/>
<input type="checkbox" name= "mod" value="뺄셈">뺄셈 <br/>
<input type="checkbox"name= "mod" value="곱셈">곱셈<br/>
<input type="checkbox" name= "mod" value="나눗셈">나눗셈 <br/>
<input type="submit" value= "계산"> 

</form>
</body>
</html>