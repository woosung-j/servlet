<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>out</title>
</head>
<body>
	<%
		for(int i = 0; i < 10; i++) {
			out.print(i + "&nbsp;");
		}
	%>
</body>
</html>