<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>이 달의 인기 과일 목록</h3>
	1위 : ${FRUITS[0] } <br/> <!--${} : EL(Expression Language)이라고 부른다.   -->
	2위 : ${FRUITS[1] } <br/>
	3위 : ${FRUITS[2] }
</body>
</html>