<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>包含文件</title>
</head>
<body>
<%@ include file="note.txt" %>
<br>————————————————————————————————————————————<br>
<jsp:include page="note.txt"/>
</body>
</html>
