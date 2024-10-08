<%@ page contentType="text/html;charset=gb2312" %>

<jsp:useBean id="car" class="com.bean.ShopCar" scope="session"/>
<jsp:setProperty name="car" property="*"/>


<!-- 显示输入的信息 -->
物品名称：<%=car.getName()%>
<br>
生产地址：<%=car.getMaker() %>
<br>
<a href="form.jsp">继续输入</a>
