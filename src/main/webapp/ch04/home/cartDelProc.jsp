<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List, java.util.ArrayList" %>
<%@ page import="java.util.StringTokenizer" %>
<%
	String cart = "";
	Cookie[] cookies = request.getCookies();
	
	for(Cookie cookie: cookies) 
		if(cookie.getName().equals("cart"))
			cart = cookie.getValue();


	String[] products = request.getParameterValues("product");

	if(products != null && products.length > 0) {
		for(String product: products)
			cart = cart.replaceFirst(product, "");
		
		Cookie cookie = new Cookie("cart", cart);
		cookie.setMaxAge(60 * 60 * 24 * 7);
		response.addCookie(cookie);
	
	} else {
%>
	<c:redirect url="cartOut.jsp">
		<c:param name="msg" value="뺄 물건을 선택해주세요." />
	</c:redirect>
<%
	}
%>	
<c:redirect url="cartOut.jsp"/>