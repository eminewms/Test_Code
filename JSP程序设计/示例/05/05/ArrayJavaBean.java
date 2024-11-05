public class ArrayJavaBean implements java.io.Serializable{	//继承serializable接口
  	public ArrayJavaBean(){}						  		//创建无参构造函数
	private String[] select={"A","B","C","D"}; // 定义一个类型为字符串数组的索引属性
	public void setSelect(String[] mySelect){ // 为select 数组赋值的set×××( ) 方法
	this.select=mySelect;
	}
	public String[] getSelect( ){ // 获取select 数组的get×××( ) 方法
	return this.select;
	}
	public void setSelect(int index,String single){ // 为数组中索引为index 的元素赋值的方法
	this.select[index]=single;
	}
	public String getSelect(int index){ // 获取数组中索引为index 的元素
	return this.select[index];
	}
  }
