package com.safe.dao;

import java.util.List;

import com.safe.vo.Notice;



//client(CustomerService.java)Î•? ?úÑ?ïú ?ù∏?Ñ∞?éò?ù¥?ä§
public interface NoticeDao {
	public List<Notice> selectAll();
	public Notice selectOne(String num);
	public void insert(Notice c);

	public void update(String num);
	public void delete(String num);
	public List<Notice> findByTitle(String title);
	public List<Notice> findByName(String name);
}





