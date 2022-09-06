<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userName = request.getParameter("userName");
	String age = request.getParameter("age");
	String birthday = request.getParameter("birthday");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userOut</title>
</head>
<body>
	<h3>사용자</h3>
	<ul>
		<li>이름: <%= userName %></li>
		<li>나이: <%= age %></li>
		<li>생일: <%= birthday %></li>
	</ul>
</body>
</html>