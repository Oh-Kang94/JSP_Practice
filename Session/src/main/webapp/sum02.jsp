<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="DataError.jsp"%> <!--JSP에서만 가능한 기능. Errorpage면 어디로 가라는게 가능.  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <%
	int num1=0; int num2=0; int result=0;
	try{
	num1 = Integer.parseInt(request.getParameter("num01"));
    num2 = Integer.parseInt(request.getParameter("num02"));
	result = num1+num2;
	}catch(Exception e){
		response.sendRedirect("DataError.jsp");
	}

%>
	<%=num1 %> + <%=num2 %> = <%=result %> --%>
<%
	int num1=0; int num2=0; int result=0;
	num1 = Integer.parseInt(request.getParameter("num01"));
    num2 = Integer.parseInt(request.getParameter("num02"));
	result = num1+num2;

%>
	<%=num1 %> + <%=num2 %> = <%=result %>

</body>
</html>