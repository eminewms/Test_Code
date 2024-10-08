<%@ page contentType="text/html;charset=gb2312" %>
<% session.invalidate();	//清楚在运行use1中实例时保存到session中的数据 %>

<form action="doForm.jsp">
	物品名称：<input type="text" name="name" size="20">
	<br>
	生产地址：<input type="text" name="maker" size="20">
	<br>
	<input type="submit" value="提交">
</form>

<a href="../index.jsp">返回首页</a>
