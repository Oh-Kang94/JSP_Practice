<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>곱셈</title>
</head>
<body>
<%
	int num1 = Integer.parseInt(request.getParameter("num1")) ;
	int num2 = Integer.parseInt(request.getParameter("num2")) ;
	
	out.print("첫번째 수:"+num1 +"<br/>");
	out.print("두번째 수:"+num2 +"<br/>");
%>

<%= num1%>/<%=num2 %>= <%=String.format("%.2f",(double)num1/num2 )%>
<form action="Forward_01.jsp" method="post">
<input type="hidden" name="num1" value="<%= num1%>">
<input type="hidden" name="num2" value="<%= num2%>">
<input type="submit" value="초기화면">
</form>


</body>
</html>