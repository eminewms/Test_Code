<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>处理结果</title>
</head>

<body>
<%
request.setCharacterEncoding("GBK");
String username=request.getParameter("username");
String pwd=request.getParameter("pwd");
out.println("用户名为："+username);
out.println("密码为："+pwd);
%>
</body>
</html>
