<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("userName", "최한석");
%>
${userName}<br>
${hello}<br>
${empty hello}<br>
${empty userName ? "무명" : userName}<br>
${!empty userName ? userName : "무명"}<br>