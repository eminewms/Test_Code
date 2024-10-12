<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<script type="text/javascript">
var mydate=new Date();
year = mydate.getFullYear();
month = mydate.getMonth() + 1;
day = mydate.getDate();
date = year+"年"+month+"月"+day+"日";
document.write(date);
</script>
<title>显示当前日期</title>
</head>
<body>
</body>
</html>
