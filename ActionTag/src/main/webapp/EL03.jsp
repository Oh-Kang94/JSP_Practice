<%@page import="com.javalec.base.Bean01"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Bean01 product = new Bean01();
	product.setName("바나나");
	product.setValue(2000);
	
	request.setAttribute("PRODUCT", product);
	RequestDispatcher dispatcher = request.getRequestDispatcher("EL04.jsp");
	dispatcher.forward(request, response);
%>

</body>
</html>