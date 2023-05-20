<%@page import="java.util.ArrayList"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
	BufferedReader reader =null;
	try{
		String filePath = application.getRealPath("Cart.txt");
		reader = new BufferedReader(new FileReader(filePath));
		while(true){
			String str = reader.readLine();
			
			if(str==null) break;
			out.print(str + "<br/>");
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			reader.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}

%>
</body>
</html> 

<%-- <%
BufferedReader reader = null;
String result = request.getParameter("result");
String tmp = "";
try {
	String filePath = application.getRealPath("Cart.txt");
	reader = new BufferedReader(new FileReader(filePath));
	while (true) {
		String str = reader.readLine();
		if (str == null) break;
		tmp += str;
	
	}
} catch (Exception e) {
	e.printStackTrace();
} finally {
	try {
		reader.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
}
response.sendRedirect("Cart_05.jsp?result=" + result + "&stra=" + tmp );
%> --%>