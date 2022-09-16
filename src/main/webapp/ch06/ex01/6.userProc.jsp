<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="ch06.ex01.User" %>
<%@ page import="java.time.LocalDate" %>
<%
	pageContext.setAttribute("user", new User(1, "최한석", LocalDate.of(2022, 9, 16)));
	request.setAttribute("user", new User(2, "최한석", LocalDate.of(2022, 9, 17)));
	session.setAttribute("user", new User(3, "최한석", LocalDate.of(2022, 9, 18)));
	application.setAttribute("user", new User(4, "최한석", LocalDate.of(2022, 9, 19)));
%>
<jsp:forward page="6.userOut.jsp"/>