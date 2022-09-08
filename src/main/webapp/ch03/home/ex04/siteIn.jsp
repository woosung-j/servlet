<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>site input</title>
</head>
<body>
	<form action="siteProc.jsp" method="post">
		<input type="radio" name="site" value="daum">다음<br>
		<input type="radio" name="site" value="naver">네이버<br>
		<input type="submit">
	</form>
	<%
		String msg = request.getParameter("errMsg");
	%>
	<%= msg != null ? msg : "" %>
</body>
</html>