<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품선택</title>
</head>
<body>
	<h2>상품 선택</h2>
	<form action="mart_02" method="get">
		수량:<input type="text" name = "num"><br/><br/>
		크기 : 
		대<input type ="radio" name="size" value ="L" checked="checked">
		중<input type ="radio" name="size" value ="M">
		소<input type ="radio" name="size" value ="S"><br/><br/>
		색상: 
		<select name="color">
			<option>베이지</option>
			<option>브라운</option>
			<option>카키</option>
		</select><br/><br/>
		<input type="submit" value="저장">	
	</form>
</body>
</html>