<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="ch05.service.TodayService, ch05.service.TodayServiceImpl" %>
<%
	TodayService todayService = new TodayServiceImpl();
%>
<%= todayService.getToday() %>