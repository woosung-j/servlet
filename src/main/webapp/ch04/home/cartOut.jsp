<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.ArrayList" %>
<%@ page import="java.util.StringTokenizer" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cart</title>
</head>
<body>
	<a href="main.jsp">메인</a>
<%
	String cart = "";
	Cookie[] cookies = request.getCookies();
	
	for(Cookie cookie: cookies) {
		if(cookie.getName().equals("cart")) {
			cart = cookie.getValue();
		}
	}

	if(cart != "") {
		StringTokenizer products = new StringTokenizer(cart, "/");
%>
		<form action="cartDelProc.jsp" method="post">
			<ul>
<%
				String product = "";
				while(products.hasMoreTokens()) {
					product = products.nextToken();
%> 
					<li><%=product %><input type="checkbox" name="product" value="<%=product%>"></li>
<%
				}
%>
			</ul>
			<input type="submit" value="빼기">
		</form>
<%
		String msg = request.getParameter("msg");
		if(msg != null) 
			out.println(msg);
	} else out.println("물건이 없습니다.");
%>
</body>
</html>
