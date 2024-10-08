<%@ page contentType="text/html;charset=gb2312" %>

<%@ page import="com.bean.ShopCar"%>	<!-- 导入ShopCar类 -->
<% 
   ShopCar car=new ShopCar();			//创建一个实例
   session.setAttribute("car",car);   	//将创建的JavaBean实例存在session范围内
%>
<jsp:setProperty name="car" property="*"/>


<!-- 显示输入的信息 -->
物品名称：<%=car.getName()%>
<br>
生产地址：<%=car.getMaker() %>
<br>
<a href="form.jsp">继续输入</a>
