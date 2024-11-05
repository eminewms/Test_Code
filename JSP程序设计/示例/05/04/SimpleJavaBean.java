public class SimpleJavaBean implements java.io.Serializable{	//继承serializable接口
  	public SimpleJavaBean(){}						  		//创建无参构造函数
	String name; // 定义一个string 型简单属性
	boolean marrid=false; // 定义一个boolean 型简单属性
	public void setName(String name){ //name 属性的set×××( ) 方法
		this.name=name;
	}
	public String getName( ){ //name 属性的get×××( ) 方法
		return this.name;
	}
	public void setMarrid(boolean marrid){ //marrid 属性的set×××( ) 方法
		this.marrid=marrid;
	}
	public Boolean isMarrid( ){ //marrid 属性的is×××( ) 方法
		return this.marrid;
	}
  }
