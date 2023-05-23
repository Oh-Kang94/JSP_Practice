<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%
request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");
session.setAttribute("ID", id);
String name = request.getParameter("name");
session.setAttribute("NAME", name);
String phone = request.getParameter("phone");
session.setAttribute("PHONE", phone);
String address = request.getParameter("address");
session.setAttribute("ADDRESS", address);

String url_mysql = "jdbc:mysql://localhost/customer?serverTimezone=UTC&characterEncoding=utf8&useSSL=false";
String id_mysql = "root";
String pw_mysql = "qwer1234";

String result = "";

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
if (result.equals("success")) {
	response.sendRedirect("purchaserInsert_03.jsp");
} else {
	response.sendRedirect("purchaserInsert_01.jsp");
}
%>