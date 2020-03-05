package com.safe.dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.safe.vo.Notice;

@Component("bdao")
public class NoticeDaoImpl implements NoticeDao{

	@Autowired
	SqlSession session; //sqlSession 만들?��진거 ?��?�� ?��?��줘라. 
	
	public List<Notice> selectAll() {
		// TODO Auto-generated method stub
		return session.selectList("notice.selectAll");
	}

	public Notice selectOne(String num) {
		session.update("notice.update",num);
		return session.selectOne("notice.selectOne", num);
	}

	public void insert(Notice c) {
		// TODO Auto-generated method stub
		session.insert("notice.insert", c);
	}

	public void delete(String num) {
		// TODO Auto-generated method stub
		session.delete("notice.delete", num);
	}
	
	public List<Notice> findByTitle(String title) {
		// TODO Auto-generated method stub
		return session.selectList("notice.findByTitle",title);
	}

	public List<Notice> findByName(String name) {
		// TODO Auto-generated method stub
		return session.selectList("notice.findByName",name);
	}

	public void update(String num) {
		// TODO Auto-generated method stub
		session.update("notice.update", num);
		
	}


	
	
}
