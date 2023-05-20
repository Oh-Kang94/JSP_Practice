<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 정보 입력</title>
</head>
<body>
	<form action="requestResult.jsp" method = "get">
	이름 : <input type ="text" name="name" size="10"> <br/>
	아이디 : <input type ="text" name="id" size="10"> <br/>
	패스워드 : <input type ="password" name="pw" size="10"> <br/>
	취미 : <br/>
	<input type ="checkbox" name="hobby" value ="독서" checked = "checked" size="10">독서 <br/>
	<input type ="checkbox" name="hobby" value ="요리" size="10">요리 <br/>
	<input type ="checkbox" name="hobby" value ="조깅" size="10">조깅 <br/>
	<input type ="checkbox" name="hobby" value ="수영" size="10">수영 <br/>
	전공 : <br/>
	<input type ="radio" name="major" value ="국어" checked = "checked" size="10">국어 <br/>
	<input type ="radio" name="major" value ="수학" size="10">수학 <br/>
	<input type ="radio" name="major" value ="영어" size="10">영어 <br/>
	
	Protocol : 
	<select name = "protocol">
	<option value = "http">http</option>
	<option value = "ftp">ftp</option>
	<option value = "smtp" selected="selected">smtp</option>
	<option value = "pop3">pop3</option>
	</select>
	
	<br/>
	<input type="submit" value="전송">
	<input type="reset" value="취소">
	</form>

</body>
</html>