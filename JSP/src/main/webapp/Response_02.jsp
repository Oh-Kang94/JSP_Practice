<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>move</title>
</head>
<body>
<%
	String []site = request.getParameterValues("sitename");
	String str = Arrays.toString(site);
	/* out.print(site); */
	/* DB가 꽉차서 터질때를 대비해서 만든건다. */
	if(str.contains("naver")){
		response.sendRedirect("https://www.naver.com");
	}
	else if(str.contains("daum")){
		response.sendRedirect("https://www.daum.net");
	}else if(str.contains("google")){
		response.sendRedirect("https://www.google.com");
	}else{
		response.sendRedirect("https://www.yahoo.com");
	}
	
	
	
%>


</body>
</html>