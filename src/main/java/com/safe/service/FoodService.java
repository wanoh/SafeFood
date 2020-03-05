package com.safe.service;

import java.util.List;

import com.safe.vo.FoodInfo;
import com.safe.vo.link;

public interface FoodService {
	public List<FoodInfo> selectAll();
	public FoodInfo selectOne(String code, String id);
	public List<FoodInfo> selectAll2(String condition, String word);
	public List<FoodInfo> bestPro();
	public void insert(FoodInfo food);
	public FoodInfo findlastinserted();
	public void insertml(String id, String i);
	public void insertlink(String link, String code);
	public void updatefood(String valueOf);
	public void deletelink(String valueOf);
	public void updatefoodfalse(String valueOf);
	public link getlinkone(String code);
	public List<FoodInfo> mbestPro(String id);
	public String howcount(String id);
	public String chowcount();
	public boolean checkEat(String code, String id);
}
