package com.mr;

public class DoString {
   	public String change(String source){
   		source=source.replace("<","&lt;");
   		source=source.replace(">","&gt;");
   		return source;
   	}
}
