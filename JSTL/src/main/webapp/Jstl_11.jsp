<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="date" value="<%=new Date() %>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	[오늘날짜] <fmt:formatDate value="${date }"/><br/>
	[현재시간] <fmt:formatDate value="${date }" type="time"/><br/>
	--------------------<br/>
	[short] <fmt:formatDate value="${date }" type="both"
					dateStyle="short" timeStyle="short"/><br/>
	[medium] <fmt:formatDate value="${date }" type="both"
					dateStyle="medium" timeStyle="medium"/><br/>
	[long] <fmt:formatDate value="${date }" type="both"
					dateStyle="long" timeStyle="long"/><br/>
	[full] <fmt:formatDate value="${date }" type="both"
					dateStyle="full" timeStyle="full"/><br/>
					--------------------<br/>
	[오늘날짜]<fmt:formatDate value="${date }" type="date" pattern ="yyyy-MM-dd"/><br/>
	[현재시간] <fmt:formatDate value="${date }" type="time" pattern ="(a) hh:mm:ss"/><br/>

</body>
</html>