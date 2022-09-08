<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="ch03.ex05.User" %>
<%
	User user = (User)request.getAttribute("user");
	user.setAge(23);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request</title>
</head>
<body>
	<jsp:forward page="4.requestC.jsp" />
</body>
</html>