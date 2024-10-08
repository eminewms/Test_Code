public class Rectangle {
	public float x = 20.0f;
	public float y =0.0f;
	// 定义计算矩形面积的方法
	public float getArea() {
		float area = x*y; // 计算矩形面积并赋值给变量area
		return area; // 返回计算后的矩形面积
	}
	// 定义计算矩形周长的方法
	public float getCircumference(float x,float y) {
		float circumference = 2 * (x+y); // 计算矩形周长并赋值给变量circumference
		return circumference; // 返回计算后的矩形周长
	}
	// 定义主方法测试程序
	public static void main(String[] args) {
		Rectangle rect = new Rectangle();
		rect.y = 10; // 改变成员变量的值
		float y = 20;
		float area = rect.getArea(); // 调用成员方法
		System.out.println("矩形的面积为：" + area);
		float circumference = rect.getCircumference(rect.x,y); // 调用带参数的成员方法
		System.out.println("矩形的周长为：" + circumference);
	}
}
