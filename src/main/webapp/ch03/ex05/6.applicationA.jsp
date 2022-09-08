<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="ch03.ex05.User" %>
<%
	application.setAttribute("user", new User("최한석", 22));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application</title>
</head>
<body>
	<a href="6.applicationB.jsp">view</a>
</body>
</html>