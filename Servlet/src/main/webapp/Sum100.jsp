<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	1부터 100까지의 합은  <%=request.getAttribute("result") %> <br/>
	1부터 100까지의 합은  ${result} <br/>
	<!-- front에서 쓰는 방법 ${} -->
</body>
</html>