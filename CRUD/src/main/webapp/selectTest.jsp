<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SelectTest</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");

	String url_mysql = "jdbc:mysql://localhost/eclipse?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";
	
	int cnt =0; // 총 인원
%>
	<table border="1">
		<tr>
			<th>일련번호</th>
			<th>id</th>
			<th>User id</th>
		</tr>

<%
		String query = "select * from wtest";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
			Statement stmt_mysql = conn_mysql.createStatement();

			ResultSet rs = stmt_mysql.executeQuery(query);
			while (rs.next()) {
			cnt++;
%>
		<tr>
			<td style="text-align: center"><%=cnt %></td>
			<td><%=rs.getInt(1) %> </td>
			<td><%=rs.getString(2) %></td>
		</tr>

<%
		}

			conn_mysql.close();
	
			} catch (Exception e) {
		e.printStackTrace();
		}
%>

	</table>
	<br/><br/>
	총 인원은 <%=cnt %>입니다. <br/>
</body>
</html>