<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
session.setAttribute("information","向session中保存数据");
response.sendRedirect("forward.jsp");
%>
