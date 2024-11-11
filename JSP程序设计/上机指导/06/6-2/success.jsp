<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>欢迎登录</title>
</head>
<body>
<%String username = (String)request.getAttribute("userName"); 
String usernpass = (String)request.getAttribute("userPass"); 
%>

用户名：<%=username %>
密&nbsp;&nbsp;码：<%=usernpass %>
</body>
</html>