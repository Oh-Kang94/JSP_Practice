<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 졍보 입력 결과</title>
</head>
<body> 
<%
request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String[] hobby = request.getParameterValues("hooby");
String[] majors = request.getParameterValues("major");
String protocol = request.getParameter("protocol");
%>

	이름 : <%=name %> <br/>
	아이디 : <%=id %> <br/>
	패스워드 : <%=pw %> <br/>
	취미 : <%=Arrays.toString(hobby)%> <br/> 
	취미 : <%=Arrays.toString(majors)%> <br/> 
	취미 : <%=protocol%> <br/> 
	

</body>
</html>