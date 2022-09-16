<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<ul>
	<li>${user}</li>
	<li>${user.userId}</li>
	<li>${pageScope.user.userId}</li>
	<li>${requestScope.user.userId}</li>
	<li>${sessionScope.user.userId}</li>
	<li>${applicationScope.user.userId}</li>
</ul>