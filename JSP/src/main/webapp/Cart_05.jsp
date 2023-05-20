<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출력</title>
</head>
<body>
123
<%
	request.setCharacterEncoding("utf-8");
	String str= request.getParameter("stra") ;

	
		out.print(str);
	
%>
</body>
</html>