<%@ page contentType="text/html;charset=gb2312" %>

<jsp:useBean id="car" class="com.bean.ShopCar" scope="session"/>
<%@ page import="com.bean.ShopCar"%>
<% 
   ShopCar r_car=new ShopCar();
   request.setAttribute("car",r_car);
%>
<jsp:setProperty name="car" property="*"/>



<!-- 显示输入的信息 -->
Request范围内：<br>
物品名称：<%=r_car.getName()%><br>
生产地址：<%=r_car.getMaker()%><br>
<br>
Session范围内：<br>
物品名称：<%=car.getName()%><br>
生产地址：<%=car.getMaker()%><br>

<p>
<a href="form.jsp">继续输入</a>

