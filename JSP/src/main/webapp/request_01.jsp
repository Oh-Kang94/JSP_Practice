<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>이름입력</title>
	</head>
	<body>
		이름을 입력하고, 확인 버튼을 누르세요.
		<br/><br/>
		<form action="request_02.jsp"method="get">
			이름 : <input type="text" name="yourname"><br/><br/>
			별명 : <input type="text" name="yoursurname"><br/><br/>
				<input type="submit" value="확인">
		</form>
		<a href = "http://localhost:8080/JSP/request_02.jsp?yourname=Cathy&yoursurname=Cat">Test</a>
		<%
		String name = "Crystal";
		String surname = "Cats";
		%>
		<a href = "http://localhost:8080/JSP/request_02.jsp?yourname=<%=name%>&yoursurname=<%=surname %>">Test2</a>
		<!--띄어쓰기는 금지이다. http의 프로토콜을 적을 때 -->
	</body>
</html>