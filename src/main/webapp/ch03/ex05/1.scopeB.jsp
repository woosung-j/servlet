<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scope - getAttribute</title>
</head>
<body>
	<ul>
		<li><%=pageContext.getAttribute("one") %></li>
		<li><%=request.getAttribute("two") %></li>
		<li><%=session.getAttribute("three") %></li>
		<li><%=application.getAttribute("four") %></li>
	</ul>
</body>
</html>