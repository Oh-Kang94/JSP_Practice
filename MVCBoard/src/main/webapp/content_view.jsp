<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 수정 및 삭제</title>
</head>
<body>
	<h2 align="left" >글 수정 및 삭제</h2>
	<form action="modify.do" method="post">
		<input type="hidden" name ="bId" value="${content_view.bId }">
		<table>
			<tr>
				<td>번호<td>
				<td style="text-align: left">${content_view.bId}</td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="bName" value=${content_view.bName }
					size="20"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="bTitle" value=${content_view.bTitle }
					size="50"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="10" cols="50" name="bContent">${content_view.bContent } </textarea></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center"><input type="submit" value="수정">&nbsp;&nbsp;&nbsp;
				 <button onclick="location.href='list.do'">목록보기</button>&nbsp;&nbsp;&nbsp;
				<button onclick="location.href='delete.do?bId=${content_view.bId}'">삭제</button></td>
			</tr>
		</table>
	</form>

</body>
</html>