<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일저장결과</title>
</head>
<body>
	<h2>상품 선택 저장 결과</h2>
	<%
	request.setCharacterEncoding("utf-8");
	String str = request.getParameter("result");
	if (str.equals("success")) {
		out.print("저장되었습니다.");
	} else {
		out.print("파일에 데이터를 쓸 수 없습니다.");
	}
	%>
	<form action="Cart_04.jsp" method="get">
		<input type="hidden" name = "result" value ="success">
		<br/><input type="submit" value="저장 결과 불러오기">
	</form>

</body>
</html>