<%@ page language="java" pageEncoding="GBK"%>
<html>
  <head>
    <title>switch语句测试</title>
  </head>
  
  <body>
<%
int inWeek=1;
switch(inWeek){
	case 1:out.println("新的一周开始了，努力学习吧！");
		break;
	case 2:out.println("继续努力学习吧!");
		break;
	case 3:out.println("继续努力学习!");
		break;
	case 4:out.println("继续努力学习!");
		break;
	case 5:out.println("继续努力学习!");
		break;
	default:out.println("休息了！");
}
%>

  </body>
</html>
