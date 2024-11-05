<%@ page contentType="text/html;charset=gbk" %>
<jsp:useBean id="user" class="com.yxq.bean.User">
<jsp:setProperty name="user" property="*"/>
</jsp:useBean>
<center>
<b> 用户名：</b><jsp:getProperty name="user" property="userName"/>
<b> 密码：</b><jsp:getProperty name="user" property="userPass"/>
</center>
<a href="index.jsp">重新输入</a>

