<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ArrDec</title>
</head>
<body>
<%
	int[] iArr= {10,20,30};
	out.print(Arrays.toString(iArr));
%>

</body>
</html>