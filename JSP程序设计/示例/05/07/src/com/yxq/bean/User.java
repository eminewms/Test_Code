package com.yxq.bean;
public class User {
private String userName; // 对应表单中的userName 字段
private String userPass; // 对应表单中的userPass 字段
public String getUserName( ) {
return userName;
}
public void setUserName(String userName) {
this.userName = userName;
}
public String getUserPass( ) {
return userPass;
}
public void setUserPass(String userPass) {
this.userPass = userPass;
}
}