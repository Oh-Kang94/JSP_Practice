<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록 보기</title>
<script type="text/javascript">
	function checkMember() {
		const regExpName = /^[가-힣]*$/
		const regExpPhone = /^\d{3}-\d{4}-\d{4}$/
		const regExpAddress = /^[가-힣|0-9|\s]*$/
		const regExpEmail = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/

		const form = document.member
		const aName = form.aName.value;
		const aPhone = form.aPhone.value;
		const aAddress = form.aAddress.value;
		const aEmail = form.aEmail.value;


		if (!regExpName.test(aName)) {
			alert("이름은 한글로만 입력해 주세요.");
			form.aName.select();
			return;
		}

		if (!regExpPhone.test(aPhone)) {
			alert("연락처 입력을 확인해 주세요.");
			form.aPhone.select();
			return;
		}

		if (!regExpAddress.test(aAddress)) {
			alert("주소 입력을 확인해 주세요.");
			form.aAddress.select();
			return;
		}

		if (!regExpEmail.test(aEmail)) {
			alert("주소 입력을 확인해 주세요.");
			form.aEmail.select();
			return;
		}

		form.submit();

	}
</script>
</head>
<body>
<form action="modify.do" name = 'member' method="post">
		<input type="hidden" name ="aId" value="${content_view.aId }">
		<table>
			<tr>
				<td>번호</td>
				<td><input type="text" name="aId" value="${content_view.aId }" disabled="disabled"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="aName" value="${content_view.aName}"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="aPhone" value="${content_view.aPhone}"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="aAddress" value="${content_view.aAddress}"></td>
			</tr>
			<tr>
				<td>전자우편</td>
				<td><input type="text" name="aEmail" value="${content_view.aEmail}"></td>
			</tr>
			<tr>
				<td>관계</td>
				<td><input type="text" name="aRelation" value="${content_view.aRelation}"></td>
			</tr>
			<tr>
				<td><input type="submit" value="입력"></td>
				<td><input type="submit" formaction="search.do" formmethod="post" value="주소록 목록보기" ></td>
				<td><input type="submit" formaction="delete.do?aId=${content_view.aId }" formmethod="post" value="삭제" ></td>
			</tr>
		</table>
	</form>
</body>
</html>