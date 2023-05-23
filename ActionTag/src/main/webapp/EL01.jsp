<%@page import="java.util.ArrayList"%>
<%@page import="javax.servlet.RequestDispatcher"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	ArrayList<String> items = new ArrayList<String>(); // <> : Generic
	items.add("딸기");
	items.add("오렌지");
	items.add("복숭아");

	request.setAttribute("FRUITS", items);
	RequestDispatcher dispatcher = request.getRequestDispatcher("EL02.jsp");
	dispatcher.forward(request, response);
	/* MVC Pattern에서 주로 이렇게 쓴다. */

%>

</body>
</html>