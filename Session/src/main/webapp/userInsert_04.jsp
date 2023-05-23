<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 결과</title>
</head>
<body>
<h2>회원 가입 결과</h2>
가입 되었습니다.<br/>
<h2>가입내용</h2>
아이디 :  <%=session.getAttribute("ID") %><br/>
패스워드 :  <%=session.getAttribute("PW") %><br/>
성명 :  <%=session.getAttribute("NAME") %><br/>

<%
session.invalidate();
%>

</body>
</html>