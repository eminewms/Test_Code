<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.util.ArrayList" %>
<%
	ArrayList myCar;
	if (session.getAttribute("mycar")!=null){
		myCar = (ArrayList)session.getAttribute("mycar");
	}else{
		myCar =new ArrayList();	
	}
	String action=request.getParameter("action");
	if(action==null)
		action="";	
	if(action.equals("buy")){									//购买商品
		ArrayList goodslist=(ArrayList)session.getAttribute("goodslist");	
		int id=Integer.parseInt(request.getParameter("id"));		
		myCar.add(goodslist.get(id));//添加商品
		session.setAttribute("mycar",myCar);
		response.sendRedirect("show.jsp");		
	}
	else if(action.equals("remove")){							//移除商品
		int name=Integer.parseInt(request.getParameter("id"));		//获取商品名称
		myCar.remove(name);  //移除商品
		session.setAttribute("mycar",myCar);
		response.sendRedirect("shopcar.jsp");		
	}
	else if(action.equals("clear")){							//清空购物车
		session.removeAttribute ("mycar");				//调用ShopCar类中的clearCar()方法清空购物车
		response.sendRedirect("shopcar.jsp");
	}
	else{
		response.sendRedirect("show.jsp");		
	}	
%>