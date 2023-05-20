<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반갑습니다.</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("yourname");
	String surname = request.getParameter("yoursurname");
%>

	안녕하세요, <%=name %>님! <br/>
	<%=surname %>이란 별명이 참 예쁘네요! <br/>
</body>


</html>