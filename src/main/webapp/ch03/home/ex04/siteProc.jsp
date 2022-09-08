<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.net.URLEncoder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>site process</title>
</head>
<body>
<%
	String site= request.getParameter("site");
	if(site == null) site = "";
	
	switch(site) {
	case "daum":
%>
		<c:redirect url="http://www.daum.net" />
<%
	case "naver":
%>
		<c:redirect url="http://www.naver.com" />
<%
	default:
%>		
		<c:redirect url="siteIn.jsp?errMsg=error" />
<%
	}
%>
</body>
</html>