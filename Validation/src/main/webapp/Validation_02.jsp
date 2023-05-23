<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validation</title>
<script type="text/javascript">
	function checkLogin() {
		const form = document.loginForm
		if(form.id.value == ""){
			alert("아이디를 입력해주세요.")
			form.id.focus()
			return false;
		}else if(form.passwd.value == ""){
			alert("비밀번를 입력해주세요.")
			form.passwd.focus()
			return false;
		}
		form.submit()
	}
</script>
</head>
<body>
	<form action="Validation_02_Process.jsp" method="get" name="loginForm">
		아이디 : <input type="text" name="id"><br/>
		비밀번호 : <input type="password" name="passwd"><br/>
		<input type="button" value="전송" onclick="checkLogin()">
	</form>

</body>
</html>