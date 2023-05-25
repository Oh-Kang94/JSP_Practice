<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록 명단 리스트</title>
</head>
<body>
<%!
	int cnt = 0;
%>
	<h2>주소록 명단 리스트</h2>
	<form action="search.do">
		검색 선택 : <select name="query">
			<option value="aName">이름</option>
			<option value="aPhone">전화번호</option>
			<option value="aAddress" selected="selected">주소</option>
			<option value="aRelation" selected="selected">관계</option>
		</select> <input type="text" name="content" size="30"> <input
			type="submit" value="검색">
	</form>
	<hr>
	<table border="1">
		<tr>
			<th>Seq</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>주소</th>
			<th>전자우편</th>
			<th>관계</th>
		</tr>

		<c:forEach items="${list }" var="dto">
			<tr>
				<td><a href="list_content.do?aId=${dto.aId }">${dto.aId }</a></td>
				<td>${dto.aName }</td>
				<td>${dto.aPhone }</td>
				<td>${dto.aAddress }</td>
				<td>${dto.aEmail }</td>
				<td>${dto.aRelation }</td>
			</tr>
			<%cnt++; %>
		</c:forEach>
	</table>
	<form action="list_insert.jsp">
		<input type="submit" value="입력">
	</form>
	<hr>
	<br /> 
	총 인원은 <%=cnt %> 명 입니다.
	<%
	cnt=0;
	%>
	<!-- table 명수 구해야한다. -->


</body>
</html>