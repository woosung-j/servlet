<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	public int add(int num1, int num2) {
		return num1 + num2;
	}
	int num1 = 1;
%>
<%
	int num2 = 2;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=num1 %> + <%=num2 %> = <%=add(num1, num2) %>
</body>
</html>