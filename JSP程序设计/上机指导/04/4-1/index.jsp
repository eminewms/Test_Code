<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>留言本</title>
</head>
<body>
<form action="doWord.jsp" method="post">
	<h2>用户留言</h2>
	标题：<input type="text" name="title" size="26">
	<br>
	内容：<textarea name="content" rows="5" cols="25"></textarea>
	<br><br>
	<input type="submit" value="留言">
	<input type="reset" value="重置">
</form>
</body>
</html>
