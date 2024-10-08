<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>条件运算符</title>
</head>
<body>
<% int store=10;
out.println(store<=2?"库存不足！":"库存量："+store);
store=1;
out.println(store<=2?"<br>库存不足！":"库存量："+store);
%>

</body>
</html>