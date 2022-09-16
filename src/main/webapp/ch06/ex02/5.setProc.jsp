<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="fruit" value="사과"/>
<c:set var="fruit">부사</c:set>
${fruit}

<c:set var="fruit" scope="page">사과</c:set>
<c:set var="fruit" scope="request">딸기</c:set>
<c:set var="fruit" scope="session">머루</c:set>
<c:set var="fruit" scope="application">포도</c:set>

<jsp:forward page="5.setOut.jsp"/>