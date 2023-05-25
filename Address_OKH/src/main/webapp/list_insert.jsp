<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록 작성</title>
</head>
<body>
	<h3>주소록 작성</h3>
	<form action="insert.do" method="post">
		<table>
			<tr>
				<td>이름</td>
				<td><input type="text" name="aName"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="aPhone"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="aAddress"></td>
			</tr>
			<tr>
				<td>전자우편</td>
				<td><input type="text" name="aEmail"></td>
			</tr>
			<tr>
				<td>관계</td>
				<td><input type="text" name="aRelation"></td>
			</tr>
			<tr>
				<td><input type="submit" value="입력"></td>
				<td><button onclick="location.href='list.do'" >주소록 목록보기</button></td>
			</tr>
		</table>
	</form>
</body>
</html>