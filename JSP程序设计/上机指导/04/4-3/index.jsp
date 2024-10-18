<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
	<%@ page import="java.util.ArrayList" %>

<%!
	static ArrayList goodslist=new ArrayList();			//用来存储商品
	static{												//静态代码块
		String[] names={"苹果","香蕉","梨","橘子"};		//商品名称
		for(int i=0;i<4;i++){							//初始化商品信息列表
			goodslist.add(i,names[i]); 					//保存商品到goodslist集合对象中
		}	
	}
%>
<%
	session.setAttribute("goodslist",goodslist); 		//保存商品列表到session中
%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>购物车</title>
</head>
<body>
<%	ArrayList goodslist=(ArrayList)session.getAttribute("goodslist");	%>
<table border="1" width="450" rules="none" cellspacing="0" cellpadding="0">
	<tr height="50"><td colspan="3" align="center">提供商品如下</td></tr>
	<tr align="center" height="30" bgcolor="lightgrey">
		<td></td>
	<td></td>
		<td>购买</td>
	</tr>
	<%  if(goodslist==null||goodslist.size()==0){ %>
	<tr height="100"><td colspan="3" align="center">没有商品可显示！</td></tr>
	<% 
		} 
		else{
			for(int i=0;i<goodslist.size();i++){
	%>
	<tr height="50" align="center">
		<td><%=goodslist.get(i)%></td>
		<td></td>
		<td><a href="docar.jsp?action=buy&id=<%=i%>">购买</a></td>
	</tr>
	<%
			}
		}
	%>
	<tr height="50">
<td align="center" colspan="3"><a href="shopcar.jsp">查看购物车</a></td>
</tr>
</table>
</body>
</html>
