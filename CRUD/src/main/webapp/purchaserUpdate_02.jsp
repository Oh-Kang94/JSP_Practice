<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*"%>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function checkMember() {
		const regExpUserid = /^[a-z|A-Z]*$/
		const regExpName = /^[가-힣]*$/
		const regExpPhone = /^\d{3}-\d{4}-\d{4}$/
		const regExpAddress = /^[가-힣|0-9|\s]*$/

		const form = document.member
		const userid = form.userid.value;
		const name = form.name.value;
		const phone = form.phone.value;
		const address = form.address.value;

		if (!regExpUserid.test(userid)) {
			alert("아이디는 영어로 써주세요.")
			form.userid.select()
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
<%
	request.setCharacterEncoding("utf-8");
	String userid = (String)request.getParameter("userid");

	String url_mysql = "jdbc:mysql://localhost/customer?serverTimezone=UTC&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";

	String strName = "";
	String strPhone = "";
	String strAddress = "";

	String query = "select name,tel,address from purchaserinfo where userid = '" + userid+"'";
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		Statement stmt_mysql = conn_mysql.createStatement();

		ResultSet rs = stmt_mysql.executeQuery(query);

		while (rs.next()) {
			strName = rs.getString(1);
			strPhone = rs.getString(2);
			strAddress = rs.getString(3);
		}

		conn_mysql.close();
		
		session.setAttribute("USERID", userid);
		session.setAttribute("OLDNAME", strName);
		session.setAttribute("OLDPHONE", strPhone);
		session.setAttribute("OLDADDRESS", strAddress);
		

	} catch (Exception e) {
		e.printStackTrace();
	}
	%>
	<h3>수정 후 확인 버튼을 누르세요.</h3>
	<form action="purchaserUpdate_03.jsp" name = "member" method="get">
		<table>
		<tr>
		<td style="text-align: right">사용자 ID :</td>
		<td><input type="text" name="userid" size="10" readonly="readonly"
			value="<%=userid%>"></td>
		</tr>
		<tr>
		<td style="text-align: right">성명 :</td>
		<td><input type="text" name="name" value="<%=session.getAttribute("OLDNAME")%>"></td>
		</tr>
		<tr>
		<td style="text-align: right">전화번호 :</td>
		<td><input type="text" name="phone" value="<%=session.getAttribute("OLDPHONE")%>"></td>
		</tr>
		<tr>
		<td style="text-align: right">주소 :</td>
		<td><input type="text" name="address" value="<%=session.getAttribute("OLDADDRESS")%>"></td>
		</tr>
		</table>
		  <input type="button" value="확인" onclick="checkMember()">
	</form>
</body>
</html>