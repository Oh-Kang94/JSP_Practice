<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 선택 저장 결과</title>
</head>
<body>
<h2>상품 선택 저장 결과</h2>
<%
	String str = request.getParameter("result");
	if(str.equals("success")){
		out.println("저장되었습니다.");
	}else{
		out.println("파일에 데이터를 쓸 수 없습니다..");	
	}
%>

	<br/><br/><br/>
	<form action="mart_04">
		<input type="submit" value="저장 결과 불러오기">	
	</form>
	
</body>
</html>