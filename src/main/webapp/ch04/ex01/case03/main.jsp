<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	Object user = session.getAttribute("userId");

	if(user == null) {
		String userId = "";
		Cookie[] cookies = request.getCookies();
		
		if(cookies != null) {
			for(Cookie cookie: cookies) 
				if(cookie.getName().equals("userId"))
					userId = cookie.getValue();
		}
%>
		<form action="loginProc.jsp" method="post">
			ID: <input type="text" name="userId" value="<%= userId %>"/><br>
			PW: <input type="password" name="pw"/><br>
			<input type="checkbox" name="isStoreId" value="true"/> ID 저장<br>
			<input type="submit" value="로그인"/>
		</form>
<%
	} else {
%>
		<%= user %>님, 환영합니다. &nbsp;
		<a href="logout.jsp">로그아웃</a>
<%
	}
%>