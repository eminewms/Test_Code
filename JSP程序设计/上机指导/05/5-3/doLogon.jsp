<%@ page contentType="text/html;charset=gb2312" %>
<jsp:useBean id="user" class="com.mr.User">
	<jsp:setProperty name="user" property="*"/>
</jsp:useBean>

<%
if(user.getUserName().equals("admin") && user.getUserPass().equals("000")){
	response.sendRedirect("success.jsp");
}else{
	response.sendRedirect("fault.jsp");
	
}
%>
