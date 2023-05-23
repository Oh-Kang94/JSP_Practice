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
		if(form.id.value.length<4 || form.id.value.length>12){
			alert("아이디는 4~12자 이내로 입력 가능합니다.")
			form.id.select()
			return false;
		}else if(form.passwd.value.length<4){
			alert("비밀번호는 4자 이내로 입력해야 합니다.")
			form.passwd.select()
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