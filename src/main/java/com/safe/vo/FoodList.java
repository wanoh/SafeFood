package com.safe.vo;

public class FoodList {
	private String num;
	private String id;
	private String code;
	
	public FoodList(String num, String id, String code) {
		this.num = num;
		this.id = id;
		this.code = code;
	}
	
	public FoodList() {}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

}
