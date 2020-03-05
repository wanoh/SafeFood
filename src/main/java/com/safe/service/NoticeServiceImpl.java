package com.safe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.safe.dao.NoticeDao;
import com.safe.vo.Notice;

@Component("cus")
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	NoticeDao bao; // type Í∏∞Ï??úºÎ°? Ï£ºÏûÖ, CustomeDaoImpl?ù¥ ?ã§?†úÎ°? Ï£ºÏûÖ?êú?ã§. interface ???ûÖ?ù¥?ã§.
	
	
	public List<Notice> selectAll() {
		// TODO Auto-generated method stub
		return bao.selectAll();
	}

	public Notice selectOne(String num) {
		// TODO Auto-generated method stub
		//bao.update(num);	
		return bao.selectOne(num);
	}
	
	
	public void insert(Notice c) {
		// TODO Auto-generated method stub
		bao.insert(c);
	}
	
	
	public void insert2(Notice c) throws Exception{
		// TODO Auto-generated method stub
		
			bao.insert(c);
			bao.insert(c);
		
	}
	public void delete(String num) {
		// TODO Auto-generated method stub
		bao.delete(num);
	}

	public List<Notice> findByTitle(String title) {
		// TODO Auto-generated method stub
		return bao.findByTitle(title);
	}

	public List<Notice> findByName(String name) {
		// TODO Auto-generated method stub
		return bao.findByName(name);
	}

	public void update(String num) {
		// TODO Auto-generated method stub
		bao.update(num);
	}

	

}
