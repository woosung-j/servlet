<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	pageContext.setAttribute("one", "페이지2"); 
	request.setAttribute("two", "리퀘스트2"); 
	session.setAttribute("three", "세션2"); 
	application.setAttribute("four", "애플리케이션2");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scope - setAttribute</title>
</head>
<body>
	<c:redirect url="1.scopeB.jsp" />
</body>
</html>