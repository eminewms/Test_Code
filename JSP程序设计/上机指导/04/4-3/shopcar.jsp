<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.util.ArrayList" %>
<!-- 通过动作标识，获取ShopCar类实例 -->
<% ArrayList myCar=(ArrayList)session.getAttribute("mycar");	%>

<table border="1" width="450" rules="none" cellspacing="0" cellpadding="0">
	<tr height="50"><td colspan="5" align="center">购买的商品如下</td></tr>
	<tr align="center" height="30" bgcolor="lightgrey">
		<td width="25%">名称</td>
		<td></td>
		<td></td>
		<td></td>
		<td>移除</td>
	</tr>
	<%	if(myCar==null||myCar.size()==0){ %>
	<tr height="100"><td colspan="5" align="center">您的购物车为空！</td></tr>
	<% 
		}
		else{
			for(int i=0;i<myCar.size();i++){
	%>
	<tr align="center" height="50">
		<td><%=myCar.get(i)%></td>
		<td></td>
		<td></td>
		<td></td>
		<td>
<a href="docar.jsp?action=remove&id=<%=i%>">移除</a>
</td>
	</tr>
	<%							
			}
		}
	%>
	<tr height="50" align="center">
		<td colspan="2"><a href="show.jsp">继续购物</a></td>
		<td colspan="3"><a href="docar.jsp?action=clear">清空购物车</a></td>
	</tr>				
</table>