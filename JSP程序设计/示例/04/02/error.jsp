<%@ page contentType="text/html; charset=gbk" language="java" errorPage="" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<title>处理结果</title>
</head>

<body>
<%
out.println("错误提示信息为："+request.getAttribute("error"));
%>
</body>
</html>
