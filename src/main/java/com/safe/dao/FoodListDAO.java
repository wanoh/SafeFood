package com.safe.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.safe.vo.FoodInfo;

@Repository
public class FoodListDAO implements IFoodList{
	@Autowired
	SqlSession session;
	
	public List<FoodInfo> SelectAll(String id) {
		return session.selectList("foodl.selectAll",id);
	}

	public void insert(String id, String code) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("code", code);
		session.insert("foodl.insert",map);
	}

	public void delete(String id, String code) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("code", code);
		session.delete("foodl.delete",map);
	}

	public void insertml(String id, String code) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("code", code);
		session.insert("foodl.insertml",map);
		
	}

	public List<FoodInfo> SelectAllp(String id) {
		
		return session.selectList("foodl.selectAllp",id);
	}

	public void deleteaddfood(String id, String code) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("code",code);
		session.delete("foodl.addfooddelete1",map);
		session.delete("foodl.addfooddelete2",code);
	}
	
	
}
