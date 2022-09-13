<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if(id.equals("java") && pw.equals("java")) {
		session.setAttribute("userId", id);
%>
		<c:redirect url="main.jsp" />
<%
	} else {
%>
		<c:redirect url="login.jsp">
			<c:param name="errMsg" value="아이디 또는 비밀번호가 틀렸습니다." />
		</c:redirect>
<% 
	}
%>