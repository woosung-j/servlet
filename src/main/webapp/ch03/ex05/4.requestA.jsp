<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="ch03.ex05.User" %>
<%
	request.setAttribute("user", new User("최한석", 22));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request</title>
</head>
<body>
	<jsp:forward page="4.requestB.jsp" />
</body>
</html>