<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>九九乘法法</title>
</head>
<body>
<%  String st = "";
   for(int i = 1; i <= 9; i++){
     for(int j = 1; j <= i; j++){
       st += j+"×"+i+"="+i*j;
       st += "&nbsp;&nbsp;";
     }
     st += "<br>";
   }
%>
<%=st %>
</body>
</html>
