<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String title, result;
int age = Integer.parseInt(request.getParameter("age"));
if (age <= 20) {
	title = URLEncoder.encode("성인", "utf-8");
	result = URLEncoder.encode("가능", "utf-8");
} else {

	title = URLEncoder.encode("미성년자", "utf-8");
	result = URLEncoder.encode("불가능", "utf-8");
}

response.sendRedirect("ResponseAge_05.jsp?age="+age+"&title="+title+"&result"+result);
%> 


<%-- <%
int age = Integer.parseInt(request.getParameter("age")) ;
choose(age);

%>
<%! void choose(int age){
	
	if(age<=20){
	response.sendRedirect("http://localhost:8080/JSP/ResponseAge_03.jsp?age="+age);
	
	}else{
		response.sendRedirect("http://localhost:8080/JSP/ResponseAge_04.jsp?age"+age);
	}
}
%> --%>