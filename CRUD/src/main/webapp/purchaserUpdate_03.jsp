<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
request.setCharacterEncoding("utf-8");



String url_mysql = "jdbc:mysql://localhost/customer?serverTimezone=UTC&characterEncoding=utf8&useSSL=false";
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
	ps.setString(4, (String)session.getAttribute("USERID"));
	
	session.setAttribute("NEWNAME", name);
	session.setAttribute("NEWPHONE", phone);
	session.setAttribute("NEWADDRESS", address);
	
	ps.executeUpdate();

	conn_mysql.close();
	result = "success";

} catch (Exception e) {
	e.printStackTrace();
	result = "fail";
}
if(result.equals("success")){
response.sendRedirect("purchaserUpdate_04.jsp");
}else{
	response.sendRedirect("purchaserUpdate_01.jsp");
}
%>