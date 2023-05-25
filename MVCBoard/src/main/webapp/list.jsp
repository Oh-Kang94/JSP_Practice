<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC 게시판</title>
</head>
<body>
	<h1>MVC 게시판</h1>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>제목</th>
			<th>날짜</th>
		</tr>
		<c:forEach items="${list }" var="dto">
			<tr>
				<td>${dto.bId }</td>
				<td>${dto.bName }</td>
				<td><a href="content_view.do?bId=${dto.bId }">${dto.bTitle }</a></td>
				<td>${dto.bDate }</td>
			</tr>
		</c:forEach>
		<tr>
		
			<td colspan="5" style="text-align: center" ><button onclick="location.href='write_view.do'" >글작성</button></td>
		</tr>
	</table>
</body>
</html>