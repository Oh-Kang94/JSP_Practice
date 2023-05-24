<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력 완료</title>
<script type="text/javascript">
	function checkMember() {
		const regExpId = /^[\w|\d]*$/
		const regExpName = /^[가-힣]*$/
		const regExpPhone = /^\d{3}-\d{4}-\d{4}$/
		const regExpAddress = /^[가-힣|0-9|\s]*$/

		const form = document.member
		const id = form.id.value;
		const name = form.name.value;
		const phone = form.phone.value;
		const address = form.address.value;

		if (!regExpId.test(id)) {
			alert("아이디는 영어로 써주세요.")
			form.id.select()
			return
		}

		if (!regExpName.test(name)) {
			alert("이름은 한글로만 입력해 주세요.")
			form.name.select()
			return

		}

		if (!regExpPhone.test(phone)) {
			alert("연락처 입력을 확인해 주세요.")
			form.phone.select()
			return
		}

		if (!regExpAddress.test(address)) {
			alert("주소 입력을 확인해 주세요.")
			form.address.select()
			return			
		}

		form.submit();

	}
</script>
</head>
<body>
	
	<form action="purchaserSelect_01.jsp" name="member" method="post">
		<table>
			<tr>
				<td style="text-align: right">사용자 ID :</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td style="text-align: right">성명:</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td style="text-align: right">전화번호 :</td>
				<td><input type="text" name="phone"></td>
			</tr>
			<tr>
				<td style="text-align: right">주소 :</td>
				<td><input type="text" name="address"></td>
			</tr>
		</table>
		<br /> <input type="button" value="확인" onclick="checkMember()">
	</form>


</body>
</html>