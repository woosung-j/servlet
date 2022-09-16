<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h3>B</h3>

<c:url var="page" value="4.urlA.jsp?num=1"/>
<a href="${page}">이동</a><br>

<c:url var="page" value="4.urlA.jsp">
	<c:param name="num" value="2"/>
</c:url>
<a href="${page}">이동</a><br>