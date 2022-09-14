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
	<a href="main.html">메인</a>
<%
	List<String> cart = new ArrayList<>();
	StringTokenizer st = null;
	Cookie[] cookies = request.getCookies();
	
	for(Cookie cookie: cookies) {
		if(cookie.getName().equals("cart")) {
			String tmp = cookie.getValue();
			st = new StringTokenizer(tmp, "/");
			while(st.hasMoreTokens())
				cart.add(st.nextToken());
		}
	}
	if(cart.size() > 0) {
%>
	<ul>
<%
		for(String product: cart) {
%> 
			<li><%=product %></li>
<%
		}
%>
	</ul>
<%
	} else out.println("물건이 없습니다.");
%>
</body>
</html>