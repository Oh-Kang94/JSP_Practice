<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사이트명 입</title>
</head>
<body>
	이동하고자 하는 사이트명을 입력하고, 확인 버튼을 누르세요.
	<br/>
	<br/>
	<form action="Response_02.jsp" method="get">
	사이트명 : 	
				<input type="checkbox" name="sitename" value="naver" checked="checked">naver
				<input type="checkbox" name="sitename" value="daum">daum
				<input type="checkbox" name="sitename" value="google" >google
				
				<input type="submit" value="확인">
				(ex : naver, daum, google)
				<!-- <select name="sitename1">
				<option value="naver" >naver</option>
				<option value="daum" >daum</option>
				<option value="google" >googl</option>
				</select>
				<input type="submit" value="확인"> -->
	</form>

</body>
</html>