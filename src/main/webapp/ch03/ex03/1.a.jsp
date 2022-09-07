<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dispatcher</title>
</head>
<body>
	A
	<%
		RequestDispatcher dispatcher = request.getRequestDispatcher("1.b.jsp");
		dispatcher.forward(request, response);
	%>
</body>
</html>