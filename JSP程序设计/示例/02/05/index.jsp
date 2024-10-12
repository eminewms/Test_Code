<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
  	String str1=new String("有一条路走过了总会想起");
  	String str2="有一条路走过了总会想起";
  	out.println("str1："+str1+"<br>str2："+str2);
  	if(str1==str2)	//通过==判断str1与str2是否相等
  		out.println("<br>判断1：str1与str2相等");
  	if(!str1.equals(str2))	//通过equals()方法判断str1与str2是否相等
  		out.println("<br>判断2：str1与str2不相等");
  	if(str1.startsWith("有"))	//通过startsWith()判断是否以指定字符串开头
  		out.println("<br>判断3：str1是以'有'开头");
  	if(str2.endsWith("起"))	//通过endsWith()判断是否以指定字符串结尾
  		out.println("<br>判断4：str2是以'起'结尾");
  	out.println("<br>str1的长度为："+str1.length());	//输入str1的长度
  	//输出str1中从第4个位置到第9个位置的字符串
  	out.println("<br>str1中从第4个位置到第9个位置的字符串为："+str1.substring(4,9));
%>

</body>
</html>