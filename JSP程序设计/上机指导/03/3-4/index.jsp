<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<%!
    int num=0;                      		//声明一个计数变量
    synchronized void add(){     		//该方法实现访问次数的累加操作
       num++;
    }
%>
<% add();                       			//该脚本程序调用实现访问次数累加的方法%>

<meta charset="utf-8">
<title>计数器</title>
</head>
<body>
<%=num%>
</body>
</html>
