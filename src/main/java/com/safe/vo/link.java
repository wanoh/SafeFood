package com.safe.vo;

public class link {
	
	String link;
	int code;
	public link(){}
	public link( String link, int code) {
		
		this.link = link;
		this.code = code;
	}

	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	
}
