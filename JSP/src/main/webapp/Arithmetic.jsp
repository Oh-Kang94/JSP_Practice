<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	int a = 30;
	int b = 20;
	int addition = a + b;
	int subtraction = a - b;
	int multiplication = a * b;
	int divide = a / b;
	int rest = a % b;
	out.println(a + "+" + b + "=" + addition + "<br/>");
	out.println(a + "-" + b + "=" + subtraction + "<br/>");
	out.println(a + "*" + b + "=" + multiplication + "<br/>");
	out.println(a + "/" + b + "=" + divide + "<br/>");
	out.println(a + "%" + b + "=" + rest + "<br/>" + "<br/>");
%>
