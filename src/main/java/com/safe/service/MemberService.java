package com.safe.service;

import java.util.HashMap;
import java.util.List;

import com.safe.vo.Eat;
import com.safe.vo.FoodInfo;
import com.safe.vo.Member;

public interface MemberService {

public boolean checkLogin(String id, String pass);
public void insert(Member m);
public String selectEmail(String id);
public boolean updateInfo(String id, String pass, String name, String email, String allergy);
public boolean delete(String id);
public HashMap<String, Integer> allergyPriority();
public Member findbyEmail(String email);
public String checktype(String id);
public String selectAllergy(String id);
public List<Eat> listEat(String id);
public Eat findname(String code);
public void resetEat(String id);
public List<FoodInfo> getPlsit(String id);
}
