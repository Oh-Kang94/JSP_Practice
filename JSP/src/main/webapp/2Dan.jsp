<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 2단</title>
</head>
<body>
<%
for(int i =1; i<10;i++){
	out.print("2*"+i+"="+(2*i)+"<br/>");
	out.print("============="+"<br/>"+"<p></p>");
}
%>
<%
int i=0;
while(true){
	i++;
	out.print("2*"+i+"="+(2*i));
	%>
	<br/>
	=================<br/>
<%
	if(i>=9){
	break;
	}
}
%>

</body>
</html>