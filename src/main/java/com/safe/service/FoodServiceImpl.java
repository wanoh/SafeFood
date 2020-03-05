package com.safe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.safe.dao.ISafeFood;
import com.safe.dao.SafeFoodDAO;
import com.safe.vo.FoodInfo;
import com.safe.vo.link;


@Service
public class FoodServiceImpl implements FoodService {

	@Autowired
	ISafeFood dao;
	
	public List<FoodInfo> selectAll() {
		
		return dao.selectAll();
	}

	public FoodInfo selectOne(String code, String id) {
		FoodInfo food =dao.selectOne(code);//성공하면
		dao.countUp(code, id);
		return food;
	}

	public List<FoodInfo> selectAll2(String condition, String word) {
		
		return dao.selectAll2(condition, word);
	}

	

	public List<FoodInfo> bestPro() {
		return dao.bestPro();
	}

	public void insert(FoodInfo food) {
		dao.insertfood(food);
		
	}

	public FoodInfo findlastinserted() {
		FoodInfo food=dao.findlastinserted();
		return food;
	}

	public void insertml(String id ,String code) {
		dao.insertml(id, code);
		
	}

	public void insertlink(String link, String code) {
		dao.insertlink(link, code);
		
	}

	public void updatefood(String code) {
		dao.updatefood(code);
		
	}

	public void deletelink(String code) {
		dao.deletelink( code);
		
	}

	public void updatefoodfalse(String code) {
		dao.updatefoodfalse(code);
		
	}

	public link getlinkone(String code) {
		
		return dao.getlinkone(code);
	}

	public List<FoodInfo> mbestPro(String id) {
		return dao.mbestPro(id);
	}

	public String howcount(String id) {
		return dao.howcount(id);
	}

	public String chowcount() {
		return dao.chowcount();
	}

	public boolean checkEat(String code, String id) {
		
		return dao.checkEat(code,id);
	}

	

}
