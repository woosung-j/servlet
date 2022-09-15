<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String cart = "";
	Cookie[] cookies = request.getCookies();
	
	for(Cookie cookie: cookies) 
		if(cookie.getName().equals("cart")) 
			cart = cookie.getValue();

	String[] products = request.getParameterValues("product");

	if(products != null && products.length > 0) {
		for(String product: products) 
			cart += product + "/";
		
		Cookie cookie = new Cookie("cart", cart);
		cookie.setMaxAge(60 * 60 * 24 * 7);
		response.addCookie(cookie);
	} else {
%>
		<c:redirect url="main.jsp">
			<c:param name="msg" value="추가할 물건을 선택해주세요." />
		</c:redirect>
<%
	}
%>
<c:redirect url="cartOut.jsp"/>
