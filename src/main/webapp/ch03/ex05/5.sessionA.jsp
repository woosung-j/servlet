<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="ch03.ex05.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session</title>
</head>
<body>
	<a href="5.main.jsp">main</a>
<%
	session.setAttribute("user", new User("최한석", 22));
%>
	<p><%=session.getAttribute("user") %></p>
</body>
</html>