<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cart</title>
</head>
<body>
	<a href="main.jsp">메인</a>
	<h3>장바구니</h3>
	
<%
	Object cartObj = session.getAttribute("cart");
	if(cartObj != null) {
		List<String> cart = (List<String>)cartObj;
		
		if(cart.size() > 0) {
%>
			<form action="cartDelProc.jsp" method="post">
				<ul>
<% 
					for(String product: cart) {
%> 
						<li><%= product %><input type="checkbox" name="product" value="<%= product %>"></li>
<%
					}
%>
				</ul>
				<input type="submit" value="삭제">
			</form>
<%
			String msg = request.getParameter("msg");
			if(msg != null) out.println(msg);
		} else out.println("장바구니에 물건이 없습니다.");
	} else out.println("장바구니가 없습니다.");
%>
</body>
</html>