<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>num out</title>
</head>
<body>
<%
	String numStr = request.getParameter("num");
	
	try {
		int num = Integer.parseInt(numStr);
%>
		<%= num * 2 %><br>
		<a href="4.numIn.jsp">뒤로가기</a>
<%
	} catch (NumberFormatException e) {
%>
		<c:redirect url="4.numIn.jsp?errMsg=Number Invalid."/>
<% 
	}
%>
	
</body>
</html>