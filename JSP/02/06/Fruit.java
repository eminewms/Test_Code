public class Fruit {
//	定义一个无返回值的成员方法
	public void grow(){
		System.out.println("果树正在生长……");
		// …
	}
//定义一个返回值为String类型的成员方法
	public String harvest(){
		String rtn="水果已经收获……";      //定义一个局部变量
		return rtn;
	}
}
