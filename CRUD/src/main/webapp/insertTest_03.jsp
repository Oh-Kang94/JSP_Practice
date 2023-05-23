<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h3>입력결과</h3>
		<%
			String result = request.getParameter("result");
			if(result.equals("success")){
				out.print("Completed!");
			}else{
				out.print("문제가 발생했습니다.");
			}
		%>
	</body>
</html>