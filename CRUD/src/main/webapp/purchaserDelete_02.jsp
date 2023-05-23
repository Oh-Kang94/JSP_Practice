<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String userid = request.getParameter("userid");

	String url_mysql = "jdbc:mysql://localhost/customer?serverTimezone=UTC&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";

	String strUserid = "";

	String query = "select userid from purchaserinfo where userid = '" + userid+"'";
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		Statement stmt_mysql = conn_mysql.createStatement();

		ResultSet rs = stmt_mysql.executeQuery(query);

		while (rs.next()) {
			strUserid = rs.getString(1);
		}

		conn_mysql.close();
		session.setAttribute("USERID", userid);

	} catch (Exception e) {
		e.printStackTrace();
	}
	%>
	<h3>삭제하려면 확인 버튼을 누르세요.</h3>
	<form action="purchaserDelete_03.jsp" method="get">
		사용자 ID : <input type="text" name="userid" size="10"
			value="<%= strUserid%>" readonly="readonly"> <input type="submit" value="확인">
	</form>

</body>
</html>