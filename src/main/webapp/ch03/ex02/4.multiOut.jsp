<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] letters = request.getParameterValues("letter");
	String gender = request.getParameter("gender");
	String[] jobs = request.getParameterValues("job");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>multiOut</title>
</head>
<body>
	letter:
<%	
	if(letters != null) {
		for(String letter : letters) { 
%>
			<%= letter %>
<%  
		} 
	}
%><br>
	gender: <%= gender %><br>
	job: 
<%	
	if(jobs != null) {
		for(String job : jobs) { 
%>
			<%= job %>
<%	
		} 
	}
%><br>
</body>
</html>
    
	