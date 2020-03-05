package com.safe.dao;

import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.safe.vo.Eat;
import com.safe.vo.FoodInfo;
import com.safe.vo.Member;
import com.safe.vo.link;


@Repository
public class SafeFoodDAO implements ISafeFood {

	@Autowired
	SqlSession session;
	
	public List<FoodInfo> selectAll() {
		List<FoodInfo> list = session.selectList("sql.pms.selectAll");
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getAllergy().equals("true")) {
				int code =list.get(i).getCode();
				List<link> llist= session.selectList("foodl.selectlink", code);
				String str="";
				for(int j=0; j<llist.size(); j++) {
					str+=llist.get(j).getLink()+",";
				}
				list.get(i).setLink(str);
			}
		}
		
		return list;
	}

	public List<FoodInfo> selectAll2(String condition, String word) {
		System.out.println(condition);
		System.out.println(word);
		List<FoodInfo> list=null;
		if(condition.equals("name")) {
			list =session.selectList("sql.pms.selectAllbyname",word);
			return list;
		}else if(condition.equals("material")) {
			list=session.selectList("selectAllbymaterial",word);
					
			return list;
		}
		System.out.println(list.get(0).getName());
		return list;
	}
	
	
	public FoodInfo selectOne(String code) {
		
		return session.selectOne("sql.pms.selectOne",code);
	}


	public void countUp(String code,String id) {
		session.update("sql.pms.countUp", code);
		
		Member m = session.selectOne("sql.pms.getage",id);
		System.out.println("sdfasdf:"+m.age);
		String age= m.getAge();
		System.out.println(code);
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("age", age);
		map.put("code", code);
		session.update("updateaver", map);
	}

	public List<FoodInfo> bestPro() {
		
		return session.selectList("sql.pms.bestPro");
	}

	public void insertfood(FoodInfo food) {
		session.insert("sql.pms.insertFood", food);
		
	}

	public FoodInfo findlastinserted() {
		
		return session.selectOne("sql.pms.findlastinserted");
	}

	public void insertml(String id, String code) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("code", code);
		session.insert("foodl.insertml",map);
		
	}

	public void insertlink(String link, String code) {
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("link", link);
		map.put("code", code);
		session.insert("foodl.insertlink",map);
	}

	public void updatefood(String code) {
		session.update("foodl.updatefood" ,code);
		
	}

	public void deletelink(String code) {
		session.delete("foodl.deletelink",code);
		
	}

	public void updatefoodfalse(String code) {
		session.update("foodl.updatefoodflase" ,code);
		
	}
	public link getlinkone(String code) {
		
		return session.selectOne("foodl.getlinkone",code);
	}

	public List<FoodInfo> mbestPro(String id) {
		return session.selectList("sql.pms.mbestPro",id);
	}

	public String howcount(String id) {
		List<FoodInfo> list = session.selectList("mhowcount",id);
		int cnt = 0;
		for(int i=0;i<list.size();i++) {
			cnt += list.get(i).getCount();
		}
		return Integer.toString(cnt);
	}

	public String chowcount() {
		List<FoodInfo> list = session.selectList("chowcount");
		int cnt = 0;
		for(int i=0;i<list.size();i++) {
			cnt += list.get(i).getCount();
		}
		return Integer.toString(cnt);
	}

	public boolean checkEat(String code, String id) {
		List<Eat> eatlist = session.selectList("selectbyid", id);
		for(int i=0; i<eatlist.size(); i++) {
			if(eatlist.get(i).getCode().equals(code)) {
				session.update("updateEat",eatlist.get(i).getNum());
				session.update("updatedateEat",eatlist.get(i).getNum());
				return false;
			}
		}
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("code", code);
		session.insert("insertEat", map);
		return false;
	}
}
