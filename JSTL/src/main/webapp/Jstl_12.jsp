<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숫자 포맷</title>
</head>
<body>
	첫번째 수 : <fmt:formatNumber value="1234500" groupingUsed="true"></fmt:formatNumber><br/>
	두번째 수 : <fmt:formatNumber value="3.14159" pattern="#.##"></fmt:formatNumber><br/>
	세번째 수 : <fmt:formatNumber value="10.5" pattern="#.00"></fmt:formatNumber><br/>
</body>
</html>