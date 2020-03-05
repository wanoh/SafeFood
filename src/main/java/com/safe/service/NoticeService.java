package com.safe.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.safe.vo.Notice;


//client(BoardApp.java)Î•? ?úÑ?ïú ?ù∏?Ñ∞?éò?ù¥?ä§
public interface NoticeService {
	public List<Notice> selectAll();
	public Notice selectOne(String num);
	public void insert(Notice c);
	@Transactional
	public void insert2(Notice c) throws Exception;
	public void delete(String num);
	public void update(String num);
	public List<Notice> findByTitle(String title);
	public List<Notice> findByName(String name);
	
}
