package com.safe.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.safe.dao.IMember;
import com.safe.dao.MemberDAO;
import com.safe.vo.Eat;
import com.safe.vo.FoodInfo;
import com.safe.vo.Member;

@Service
public class MemberImpl implements MemberService {
	
	@Autowired
	IMember mdao;
	
	public boolean checkLogin(String id, String pass) {
		return mdao.checkLogin(id, pass);
	}

	public void insert(Member m) {
		mdao.insert(m);
	}


	public String selectEmail(String id) {
		return mdao.selectEmail(id);
	}

	public boolean updateInfo(String id, String pass, String name, String email, String allergy) {
		return mdao.updateInfo(id, pass, name, email, allergy);
		
		
	}

	public boolean delete(String id) {
		return mdao.delete(id);
	}

	public HashMap<String, Integer> allergyPriority() {
		return mdao.allergyPriority();
	}

	public Member findbyEmail(String email) {
		
		return mdao.findbyEmail(email);
	}

	public String checktype(String id) {
		System.out.println("여긴 서비스"+id);
		return mdao.checktype(id);
	}

	public String selectAllergy(String id) {
		return mdao.selectAllergy(id);
	}

	public List<Eat> listEat(String id) {
		
		return mdao.listEat(id);
	}

	public Eat findname(String code) {
		
		return mdao.findname(code);
	}

	public void resetEat(String id) {
		mdao.resetEat(id);
		
	}

	public List<FoodInfo> getPlsit(String id) {
		
		return mdao.getPlist(id);
	}

}
