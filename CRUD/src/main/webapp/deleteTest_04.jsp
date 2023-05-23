<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삭제결과</title>
</head>
<body>
	<h3>삭제결과</h3>
	사용자 ID : <%=session.getAttribute("USERID") %>가 삭제 되었습니다. <br/>
	
	<%
	session.invalidate();
	%>
</body>
</html>