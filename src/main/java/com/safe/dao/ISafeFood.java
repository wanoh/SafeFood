package com.safe.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.safe.vo.FoodInfo;
import com.safe.vo.link;

public interface ISafeFood {
	public List<FoodInfo> selectAll();
	public FoodInfo selectOne(String code);
	public List<FoodInfo> selectAll2(String condition, String word);
	public void countUp(String num, String id);
	public List<FoodInfo> bestPro();
	public void insertfood(FoodInfo food);
	public FoodInfo findlastinserted();
	public void insertml(String id, String code);
	public void insertlink(String link, String code);
	public void updatefood(String code);
	public void deletelink(String code);
	public void updatefoodfalse(String code);
	public link getlinkone(String code);
	public List<FoodInfo> mbestPro(String id);
	public String howcount(String id);
	public String chowcount();
	public boolean checkEat(String code, String id);
}
