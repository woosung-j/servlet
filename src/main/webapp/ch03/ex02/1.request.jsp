<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request</title>
</head>
<body>
	<ul>
		<li><%= request.getRequestURL() %></li>
		<li><%= request.getProtocol() %></li>
		<li><%= request.getServerName() %></li>
		<li><%= request.getContextPath() %></li>
		<li><%= request.getRequestURI() %></li>
		<li><%= request.getQueryString() %></li>
		<li><%= request.getMethod() %></li>
	</ul>
</body>
</html>