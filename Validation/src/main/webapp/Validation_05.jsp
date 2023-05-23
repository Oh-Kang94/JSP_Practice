<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validation</title>
<script type="text/javascript">
	function checkMember(){
		const regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		const regExpPasswd = /^[0-9]*$/;
		const regExpName = /^[가-힣]*$/;
		const regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/;
		const regExpEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		
		const form = document.member;
		const id = form.id.value;
		const passwd = form.passwd.value;
		const name = form.name.value;
		const phone = form.phone1.value +"-"+form.phone2.value+"-"+form.phone3.value;
		const email = form.email.value;
		
		if(!regExpId.test(id)){
			alert("아이디는 문자로 시작해 주세요.");
			form.id.select();
			return;
		}
		
		if(!regExpPasswd.test(passwd)){
			alert("비밀번호는 숫자만으로 입력해 주세요.");
			form.id.select();
			return;
		}
		
		if(!regExpName.test(name)){
			alert("이름은 한글로만 입력해 주세요.");
			form.id.select();
			return;
		}
		
		if(!regExpPhone.test(phone)){
			alert("연락처 입력을 확인해 주세요.");
			form.id.select();
			return;
		}
		
		if(!regExpEmail.test(email)){
			alert("이메일 입력을 확인해 주세요.")
			form.id.select();
			return;
		}
		
		form.submit();
		
	}

</script>
</head>
<body>
	<h3>회원 가입</h3>
	<form action="Validation_05_Process.jsp" name="member" method="post">
		아이디 : <input type="text" name="id"><br/>
		패스워드 : <input type="password" name="passwd"><br/>
		이름 : <input type="text" name="name"><br/>
		연락처 : <select name="phone1">
				<option value="010">010 </option>
				<option value="011">011 </option>
				<option value="016">016 </option>
				<option value="017">017 </option>
				<option value="019">019 </option>
				</select>
				-
				<input type="text" maxlength="4" size="4" name="phone2">
				-
				<input type="text" maxlength="4" size="4" name="phone3"><br/>
		이메일 : <input type="text" name="email"><br/>
		<input type="button" value="가입하기" onclick="checkMember()">
	
	</form>
</body>
</html>