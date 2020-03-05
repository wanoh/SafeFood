package com.safe.dao;


import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.safe.vo.Eat;
import com.safe.vo.FoodInfo;
import com.safe.vo.Member;

@Repository
public class MemberDAO implements IMember {
	
	@Autowired
	SqlSession session;
	
	public boolean checkLogin(String id, String pass) {
		boolean find = false;
		Member m = session.selectOne("mem.checkLogin",id);
		if(m.getPass().equals(pass))
			find = true;
		return find;
	}

	public void insert(Member m) {
		session.insert("mem.insert",m);
		
	}

	public String selectEmail(String id) {
		Member m = session.selectOne("mem.selectEmail",id);
		return m.getEmail();
	}

	public boolean updateInfo(String id, String pass, String name, String email, String allergy) {
		Member m = new Member(id, pass, name, email, allergy);
		int change = 0;
		change = session.update("mem.updateInfo", m);
		if(change==0)
		return false;
		else
		return true;
		
	}

	public boolean delete(String id) {
		int change = 0;
		change = session.delete("mem.delete",id);
		if(change==0)
		return false;
		else
		return true;

		
	}

	public HashMap<String, Integer> allergyPriority() {
		// TODO Auto-generated method stub
		return null;
	}

	public Member findbyEmail(String email) {
		
		return session.selectOne("findbyEmail" ,email);
	}

	public String checktype(String id) {
		Member m = session.selectOne("mem.checktype",id);
		return m.type;
	}

	public String selectAllergy(String id) {
		String allergy = session.selectOne("mem.selectAllergy",id);
		return allergy;
	}

	public List<Eat> listEat(String id) {
		
		return session.selectList("listEat" ,id);
	}

	public Eat findname(String code) {
		Eat eat = session.selectOne("findname", code);
		System.out.println("ccccccc:"+eat.getCalory());
		return eat;
	}

	public void resetEat(String id) {
		session.delete("resetEat",id);
		
	}

	public List<FoodInfo> getPlist(String id) {
		
		List<FoodInfo> list=session.selectList("getPlist", id);
		for(int i=0; i<list.size(); i++) {
			
			FoodInfo food=session.selectOne("fone",list.get(i).getCode());
			list.get(i).setImg(food.getImg());
			list.get(i).setName(food.getName());
			list.get(i).setCount(food.getCount());
			list.get(i).setAverage(food.getAverage());
			System.out.println("ddd:"+list.get(i).getAverage());
		}
		
		return list;
	}
	
}