<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="ch05.service.EmployeeService, ch05.service.EmployeeServiceImpl" %>
<%@ page import="ch05.domain.Employee" %>
<%
	EmployeeService empService = new EmployeeServiceImpl();
%>
<%= empService.getEmployee(100) %>
