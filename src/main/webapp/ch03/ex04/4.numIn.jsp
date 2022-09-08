<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>num input</title>
</head>
<body>
	<form action="4.numOut.jsp" method="post">
		<input type="text" name="num"><br>
		<input type="submit"><br>
	</form>
<%
	String errMsg = request.getParameter("errMsg");
%>
<%= errMsg == null ? "" : errMsg %>
</body>
</html>