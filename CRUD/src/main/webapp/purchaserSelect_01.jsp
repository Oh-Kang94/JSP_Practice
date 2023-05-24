<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객 명단 리스트</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");	
	/* get Parameter */
	String queryName = request.getParameter("query");
	String queryContent = request.getParameter("content");
	
	if(queryName ==null){/*첫 화면인 경우  */
		queryName ="address";
		queryContent ="";
	}
	
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	
	String result = "";
	
	String url_mysql = "jdbc:mysql://localhost/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";
	
	PreparedStatement ps = null;

	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		Statement stmt_mysql = conn_mysql.createStatement();

		String sql = "insert into customer.purchaserinfo (userid,name,tel,address,insertdate) values (?,?,?,?,now())";

		ps = conn_mysql.prepareStatement(sql);
		ps.setString(1, id);
		ps.setString(2, name);
		ps.setString(3, phone);
		ps.setString(4, address);
		ps.executeUpdate();

		conn_mysql.close();
		result = "success";

	} catch (Exception e) {
		e.printStackTrace();
		result = "fail";
	}
	

	int cnt = 0; // 총 인원
%>
	<h3>고객 명단 리스트</h3>
	
	<form action="purchaserSelect_01.jsp">
		검색 선택 :
		<select name="query">
			<option value="name">이름</option>
			<option value="tel">전화번호</option>
			<option value="address" selected="selected">주소</option>
		</select>
		<input type="text" name="content" size ="30">
		<input type="submit" value="검색">
	</form>
<hr style="border: dotted;">
	<table border="1">
		<tr style="background-color: yellow">
			<th style="text-align: center">순번</th>
			<th style="text-align: center">UserID</th>
			<th style="text-align: center">이름</th>
			<th style="text-align: center">전화번호</th>
			<th style="text-align: center">주소</th>
			<th style="text-align: center">입력일자</th>
		</tr>

<%
		String query = "select * from purchaserinfo";
		String query2 = " where "+ queryName + " LIKE '%" + queryContent + "%'";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
			Statement stmt_mysql = conn_mysql.createStatement();

			ResultSet rs = stmt_mysql.executeQuery(query+query2);
			while (rs.next()) {
				cnt++;
%>
		<tr>
			<td style="text-align: center"><%=cnt%></td>
			<td style="text-align: center"><a
				href="purchaserSelect_02.jsp?userid=<%=rs.getString(1)%>"><%=rs.getString(1)%></a></td>
			<td style="text-align: center"><%=rs.getString(2)%></td>
			<td style="text-align: center"><%=rs.getString(3)%></td>
			<td style="text-align: center"><%=rs.getString(4)%></td>
			<td style="text-align: center"><%=rs.getDate(5)%></td>
		</tr>

<%
		}

		conn_mysql.close();

		} catch (Exception e) {
		e.printStackTrace();
		}
%>

	</table>
	<br />
	<br /> 총 인원은
	<%=cnt%>명 입니다.
	<br />
	<hr>
	<form action="purchaserSelect_05.jsp" method="post">
	<input type="submit" value="입력">
	</form>
	
	
</body>
</html>