<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cart</title>
</head>
<body>
	<form action="cartAddProc.jsp" method="post">
		<ul>
			<li>노트북<input type="checkbox" name="product" value="노트북"></li>
			<li>모니터<input type="checkbox" name="product" value="모니터"></li>
			<li>마우스<input type="checkbox" name="product" value="마우스"></li>
		</ul>
		<button type="submit">담기</button>
		<button type="submit" formaction="cartOut.jsp">보기</button>
	</form>
<%
	String msg = request.getParameter("msg");
	if(msg != null) {
%>
		<p><%=msg %></p>
<%
	}
%>
</body>
</html>