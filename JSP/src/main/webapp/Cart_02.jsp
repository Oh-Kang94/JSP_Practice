<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String qty = request.getParameter("qty");
String size = request.getParameter("size");
String color = request.getParameter("color");

String filename = "Cart.txt";
String result;

PrintWriter writer = null;
try {
	String filepath = application.getRealPath(filename);
	writer = new PrintWriter(filepath);
	writer.println("수량:" + qty);
	writer.println("크기:" + size);
	writer.println("색상:" + color);

	result = "success";
} catch (Exception e) {
	result ="fail";
	e.printStackTrace();
} finally {
	try {
		writer.close();
	} catch (Exception e) {
		result ="fail";
		e.printStackTrace();
	}
}

response.sendRedirect("Cart_03.jsp?result=" +result);
%>