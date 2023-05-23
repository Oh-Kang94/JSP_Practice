<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
request.setCharacterEncoding("utf-8");

String userid = request.getParameter("userid");

String url_mysql = "jdbc:mysql://localhost/eclipse?serverTimezone=UTC&characterEncoding=utf8&useSSL=false";
String id_mysql = "root";
String pw_mysql = "qwer1234";
String id = (String)session.getAttribute("ID");


String result = "";

PreparedStatement ps = null;

try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
	Statement stmt_mysql = conn_mysql.createStatement();

	String sql = "delete from wtest where id = ?";

	ps = conn_mysql.prepareStatement(sql);
	ps.setInt(1, Integer.parseInt(id));
	ps.executeUpdate();

	conn_mysql.close();
	session.setAttribute("USERID", userid);
	result = "success";

} catch (Exception e) {
	e.printStackTrace();
	result = "fail";
}

response.sendRedirect("deleteTest_04.jsp?result=" + result);
%>