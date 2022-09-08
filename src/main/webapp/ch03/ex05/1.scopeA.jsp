<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	//attribute (name, value)
	pageContext.setAttribute("one", "페이지"); // 현재 page가 실행되는 동안 사용한다.
	request.setAttribute("two", "리퀘스트"); // client로 response를 보내기 전까지 사용한다.
	session.setAttribute("three", "세션"); // 접속이 끊어지기 전까지 사용한다.
	application.setAttribute("four", "애플리케이션"); // tomcat이 종료될때까지 사용한다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scope - setAttribute</title>
</head>
<body>
	<c:redirect url="1.scopeB.jsp" />
</body>
</html>