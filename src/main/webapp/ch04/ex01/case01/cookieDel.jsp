<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookieDel</title>
</head>
<body>
	<a href="main.html">메인</a>
<%
	Cookie cookie = new Cookie("age", "");
	cookie.setMaxAge(0);
	response.addCookie(cookie);
%>
</body>
</html>