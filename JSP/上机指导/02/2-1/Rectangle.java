package com.mr;
public class Rectangle {
  	// 定义计算圆的面积的方法
  	public double getArea(float r) {
  		double area = Math.PI*r*r; 	// 计算圆的面积并赋值给变量area
  		return area; 			// 返回计算后的面积
  	}
  	// 定义计算圆的周长的方法
  	public double getCircumference(float r) {
  		double circumference = 2 * Math.PI*r; // 计算圆的周长并赋值给变量circumference
  		return circumference; // 返回计算后的圆的周长
  	}
  	// 定义主方法测试程序
  	public static void main(String[] args) {
  		Rectangle rect = new Rectangle();
  		float r = 20.0f;
  		double area = rect.getArea(r); // 调用成员方法
  		System.out.println("圆的面积为：" + area);
  		double circumference = rect.getCircumference(r);
  		System.out.println("圆的周长为：" + circumference);
  	}
}
