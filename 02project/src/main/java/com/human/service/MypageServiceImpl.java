package com.human.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dao.MypageDao;
import com.human.dto.CrawlingDto;
import com.human.dto.HumanDto;
//import org.zerock.domain.Criteria;
//import org.zerock.domain.SearchCriteria;

@Service
public class MypageServiceImpl implements MypageService {
	@Autowired
	private SqlSession sql;
	
	


	@Override
	public void update(HumanDto dto) throws Exception {
		MypageDao dao=sql.getMapper(MypageDao.class);
		dao.update(dto);
		
	}

	@Override
	public void delete(String id) throws Exception {
		MypageDao dao=sql.getMapper(MypageDao.class);
		dao.delete(id);
	}



	@Override
	public void updatePassword(HumanDto dto) {
		// TODO Auto-generated method stub
		MypageDao dao=sql.getMapper(MypageDao.class);
		dao.updatePassword(dto);
		
	}

	@Override
	public HumanDto readId(String id) throws Exception {
		// TODO Auto-generated method stub
		MypageDao dao=sql.getMapper(MypageDao.class);
		return dao.readId(id);
		
	}



	




}
