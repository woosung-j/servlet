<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="ch03.ex05.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>
<%
	String userId = (String)session.getAttribute("userId");
	
	if(userId != null){
%>
		<%=userId %>님 환영합니다.
		<a href="logout.jsp">로그아웃</a>
<%
	} else {
%>
		<a href="login.jsp">로그인</a><br>
<%
	}
%>
</body>
</html>

<!-- 
	main에서 로그인 링크를 누르면 로그인 폼으로 이동한다.
	로그인 폼에서 아이디/암호를 입력하고 로그인 폼을 제출한다.
	이때 아이디/암호는 java/java 이다.
	
	로그인 성공 시 메인에 'java님 환영합니다.' 를 출력한다.
	위 환영 메세지 옆에 로그아웃 링크를 출력한다.
	위 로그아웃 링크를 누르면 로그아웃 후 메인으로 이동한다.
	
	로그인 실패 시 로그인 폼으로 이동한다.
	위 폼 아래에 에러메세지를 출력한다. 
 -->