<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>점심 메뉴표</h3>
	<ul>
		<c:forEach var="dish" items="${MENU }">
			<li>${dish }</li>
		</c:forEach>
	</ul>
	
	<!-- 이 포맷은 익혀야만 한다. DB에서 불러올때 편함. 엄청 많이쓰는 구문.   -->
</body>
</html>