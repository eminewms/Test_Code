<%@ page contentType="text/html; charset=gbk" language="java" errorPage="" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<title></title>
</head>

<body>
<%
Cookie[] cookies=request.getCookies();//从request中获得Cookies集
//初始化Cookie对象为空
Cookie cookie_response=null;
if(cookies!=null){  
  	  cookie_response=cookies[1];
  	}
//Tomcat 8.5开始，Cookie值中不能有空格
String atime = new java.util.Date().toLocaleString().replaceAll(" ", "的");
out.println("本次访问时间："+atime+"<br>");
if(cookie_response!=null){
 //输出上一次访问的时间，并设置cookie_response对象为最新时间
   out.println("上一次访问时间："+cookie_response.getValue());
   atime = new java.util.Date().toLocaleString().replaceAll(" ", "的");
   cookie_response.setValue(atime);
 }
//如果Cookies集为空，创建cookie，并加入到response中
if(cookies==null){
   cookie_response=new Cookie("AccessTime","");
   atime = new java.util.Date().toLocaleString().replaceAll(" ", "的");
   cookie_response.setValue(atime);
   response.addCookie(cookie_response);
 }
%>

</body>
</html>
