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
	<table>
	<tr>
	<td style="text-align: right">사용자 ID : </td>
	<td><%=session.getAttribute("ID") %></td>
	</tr>
	<tr>
	<td style="text-align: right">성명 : </td>
	<td><%=session.getAttribute("NAME") %></td>
	</tr>
	<tr>
	<td style="text-align: right">전화번호 : </td>
	<td> <%=session.getAttribute("PHONE") %></td>
	</tr>
	<tr>
	<td style="text-align: right">주소 : </td>
	<td> <%=session.getAttribute("ADDRESS") %></td>
	</tr>
	</table>
	<br/>
 	상기의 정보로 입력되었습니다. 감사합니다.
 	
 	<%
 	session.invalidate();
 	%>
 	
</body>
</html>