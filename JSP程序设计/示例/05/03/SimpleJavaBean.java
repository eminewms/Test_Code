public class SimpleJavaBean implements java.io.Serializable{	//继承serializable接口
  	public SimpleJavaBean(){}						  		//创建无参构造函数
  	private String name;									//定义name属性
  	private String password;								//定义password属性
  	public String getName() {						    //name属性的getXxx()方法
  		return name;
  	}
  	public void setName(String name) {				    //name属性的setXxx()方法
  		this.name = name;
  	}
  	public String getPassword() {					    //password属性的getXxx()方法
  		return password;
  	}
  	public void setPassword(String password) {		    //password属性的setXxx()方法
  		this.password = password;
  	}
  }
