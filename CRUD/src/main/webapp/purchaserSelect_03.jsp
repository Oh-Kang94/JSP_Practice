<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정 확인</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");

	String url_mysql = "jdbc:mysql://localhost/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";

	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");

	String result = "";

	PreparedStatement ps = null;

	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		Statement stmt_mysql = conn_mysql.createStatement();

		String sql = "update purchaserinfo set name = ?, tel = ?,address = ?  where userid = ?";

		ps = conn_mysql.prepareStatement(sql);
		ps.setString(1, name);
		ps.setString(2, phone);
		ps.setString(3, address);
		ps.setString(4, (String) session.getAttribute("USERID"));

		ps.executeUpdate();

		conn_mysql.close();
		result = "success";

	} catch (Exception e) {
		e.printStackTrace();
		result = "fail";
	}
	%>
	<h3>수정결과</h3>
	<table>
		<tr>
			<td style="text-align: right">사용자 ID :</td>
			<td><%=session.getAttribute("USERID")%></td>
		</tr>
		<tr>
			<td style="text-align: right">성명 :</td>
			<td><%=name%></td>
		</tr>
		<tr>
			<td style="text-align: right">전화번호 :</td>
			<td><%=phone%></td>
		</tr>
		<tr>
			<td style="text-align: right">주소 :</td>
			<td><%=address %></td>
		</tr>
	</table>
	<br /> 상기의 정보로 수정되었습니다. 감사합니다.

	<%
	session.invalidate();
	%>
	<form action="purchaserSelect_01.jsp" method="post">
		<input type="submit" value="뒤로가기">
	</form>

</body>
</html>