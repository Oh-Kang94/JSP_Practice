<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validation</title>
</head>
<!-- 일반적으로,자바스크립트는 헤드 안에 적는다. -->
<script type="text/javascript">
	function checkForm() {
		alert("아이디 : "+document.loginForm.id.value+"\n"+"패스워드 :"+document.loginForm.passwd.value)
	}
</script>

<body>
	<form action="" name="loginForm">
		<p> 아이디 : <input type="text" name="id"></p>
		<p> 비밀번호 : <input type="password" name="passwd"></p>
		<p><input type="button" value="전송" onclick="checkForm()"></p>
	</form>	

</body>
</html>