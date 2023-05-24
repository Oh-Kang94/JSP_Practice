<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삭제결과</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");

	String url_mysql = "jdbc:mysql://localhost/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";
	String result = "";

	PreparedStatement ps = null;

	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		Statement stmt_mysql = conn_mysql.createStatement();

		String sql = "delete from purchaserinfo where userid = ?";

		ps = conn_mysql.prepareStatement(sql);
		ps.setString(1, (String) session.getAttribute("USERID"));
		ps.executeUpdate();

		conn_mysql.close();
		result = "success";

	} catch (Exception e) {
		e.printStackTrace();
		result = "fail";
	}
	%>
	<h3>삭제결과</h3>
	사용자 ID :
	<%=session.getAttribute("USERID")%>가 삭제 되었습니다.
	<br />

	<%
	session.invalidate();
	%>
	<form action="purchaserSelect_01.jsp" method="post">
		<input type="submit" value="뒤로가기">
	</form>
</body>
</html>