<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<body>
<!-- 实例化Book 对象 -->
<jsp:useBean id="book" class="com.lyq.Book"></jsp:useBean>
<!-- 对Book 对象赋值 -->
<jsp:setProperty name="book" property="bookName" value="《Java 程序设计标准教程》"/>
<jsp:setProperty name="book" property="author" value=" 明日科技"/>
<jsp:setProperty name="book" property="category" value="Java 图书"/>
<jsp:setProperty name="book" property="price" value="59.00"/>
<table align="center" border="1" cellpadding="1" width="350" height="100" bordercolor="green">
<tr>
<td align="right"> 图书名称：</td>
<td><jsp:getProperty name="book" property="bookName"/> </td>
</tr>
<tr>
<td align="right"> 作 者：</td>
<td><jsp:getProperty name="book" property="author"/> </td>
</tr>
<tr>
<td align="right"> 所属类别：</td>
<td><jsp:getProperty name="book" property="category"/> </td>
</tr>
<tr>
<td align="right"> 价 格：</td>
<td><jsp:getProperty name="book" property="price"/> </td>
</tr>
</table>
</body>
</body>
</html>