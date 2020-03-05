package com.safe.vo;

public class Eat {
	  String num ;
	  String id ;
	  String code ;
	  String eat_date ;
	  String N ;
	  String name;
	  String maker;
	  int calory;
	  String img;
	  
	public Eat() {}
	public Eat(String num, String id, String code, String eat_date, String n) {
		this.num = num;
		this.id = id;
		this.code = code;
		this.eat_date = eat_date;
		this.N = n;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
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
	public String getEat_date() {
		return eat_date;
	}
	public void setEat_date(String eat_date) {
		this.eat_date = eat_date;
	}
	public String getN() {
		return N;
	}
	public void setN(String n) {
		N = n;
	}
	public String getMaker() {
		return maker;
	}
	public void setMaker(String maker) {
		this.maker = maker;
	}
	public int getCalory() {
		return calory;
	}
	public void setCalory(int calory) {
		this.calory = calory;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	  
	  
}
