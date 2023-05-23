<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
request.setCharacterEncoding("utf-8");



String url_mysql = "jdbc:mysql://localhost/customer?serverTimezone=UTC&characterEncoding=utf8&useSSL=false";
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
	ps.setString(1, (String)session.getAttribute("USERID"));
	ps.executeUpdate();

	conn_mysql.close();
	result = "success";

} catch (Exception e) {
	e.printStackTrace();
	result = "fail";
}
if(result.equals("success")){
response.sendRedirect("purchaserDelete_04.jsp");
}else{
	response.sendRedirect("purchaserDelete_01.jsp");
}
%>