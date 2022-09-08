<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="ch03.ex05.User" %>
<%
	pageContext.setAttribute("user", new User("최한석", 22));
	User user = new User("한아름", 23);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageContext</title>
</head>
<body>
	<%=pageContext.getAttribute("user") %><br>
	<%=user %>
</body>
</html>