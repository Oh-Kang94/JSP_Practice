<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dec_add</title>
</head>
<body>
2 + 1 = <%= sum(2) %> <br/>
3 + 1 = <%= sum(3) %> <br/>
4 + 1 = <%= sum(4) %> <br/>
5 + 1 = <%= sum(5) %> <br/>

</body>
<%!
/* 나만 쓰는것 인지 확인한 후, 왠만하면 Private으로 선언. */
private int sum(int num){
	
	return num+1;
}
%>

</html>