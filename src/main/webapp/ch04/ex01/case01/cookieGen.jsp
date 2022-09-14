<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookieGen</title>
</head>
<body>
	<a href="main.html">메인</a>
<%
	Cookie cookie1 = new Cookie("name", "john");
	Cookie cookie2 = new Cookie("age", "12");
	
	response.addCookie(cookie1);
	response.addCookie(cookie2);
%>
</body>
</html>