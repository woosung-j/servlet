<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String[] products = request.getParameterValues("product");
	Object cartObj = session.getAttribute("cart");
	
	if(cartObj != null) {
		List<String> cart = (List<String>) cartObj;
	
		if(products != null) {
			for(String product: products) {
				cart.remove(product);
			}
		} else {
%>
			<c:set var="msg" value="장바구니에서 삭제할 물건을 선택하세요."/>
<%
		}
	} else {
%>
		<c:set var="msg" value="장바구니가 없습니다."/>
<%		
	}
%>
<c:redirect url="cartOut.jsp">
	<c:param name="msg" value="${msg}"/>
</c:redirect>