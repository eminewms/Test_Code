<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
 	String title=request.getParameter("title");				//获取留言标题
	String content=request.getParameter("content");			//获取留言内容
	if(title==null)title="";
	if(content==null)content="";
%>
标题：<%=title%>
<br>
内容：<%=content%>

<p>
<a href="index.jsp">重新输入</a>
