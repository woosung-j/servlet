<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<ul>
	<c:forEach var="fruit" items="${paramValues.fruit}" varStatus="status">
		<li>${status.count}: ${fruit}, ${status.index}</li>
	</c:forEach>
</ul>