<%@ page language="java" pageEncoding="GBK"%>
<html>
  <head>
    <title>循环语句测试</title>
  </head>
  
  <body>
<%
/*****应用for语句********************
int sum=0;
for(int i=1;i<=100;i++){
	sum+=i;
}
System.out.println("1到100之间所有整数的和是："+sum);
*****************************/
/*****应用for语句********************
int sum=0;
int i=1;
while (i<=100){
	sum+=i;	i++;
}
System.out.println("1到100之间所有整数的和是："+sum);
*****************************/
/*****应用for语句********************/
int sum=0;
int i=1;
do{	
	sum+=i;
	i++;
} while (i<=100);
out.println("1到100之间所有整数的和是："+sum);
/*****************************/
%>

  </body>
</html>
