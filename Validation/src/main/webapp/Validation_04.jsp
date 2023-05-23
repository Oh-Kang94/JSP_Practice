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
		
		for(i=0; i<form.id.value.length;i++){
			let ch = form.id.value.charAt(i);
			if((ch<'a'||ch>'z')&&(ch<'A'||ch>'Z')&&(ch>'0'||ch<'9')){
				alert("아이디는 영문 소문자로만 입력 가능 합니다.")
			 	form.id.select()
			 	return
			}
		}
		
		for(i=0;i<form.passwd.value.length; i++){
			let ch = form.passwd.value.charAt(i);
			if((ch<'a'||ch>'z')&&(ch<'A'||ch>'Z')&&(ch>'0'||ch<'9')){
				alert("비밀번호는 영문 소문자로만 입력 가능 합니다.")
			 	form.passwd.select()
			 	return
			}
		}
		
		form.submit()
	}
</script>
</head>
<body>
	<form action="Validation_02_Process.jsp" method="get" name="loginForm">
		아이디 : <input type="text" name="id"><br /> 비밀번호 : <input
			type="password" name="passwd"><br /> <input type="button"
			value="전송" onclick="checkLogin()">
	</form>

</body>
</html>