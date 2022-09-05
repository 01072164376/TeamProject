package com.human.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dao.BbsDao;
import com.human.dto.BbsDto;
import com.human.vo.PageMaker;

@Service
public class BbsImpl implements BbsService {

	@Autowired
	private SqlSession sql;
	
	@Override
	public ArrayList<BbsDto> bbslist() throws Exception {
		BbsDao dao=sql.getMapper(BbsDao.class);
		return dao.bbslist();
	}
	
	@Override
	public void bbsinsert(BbsDto dto) throws Exception {
		BbsDao dao=sql.getMapper(BbsDao.class);
		dao.bbsinsert(dto);
	}

	@Override
	public BbsDto bbsdetail(int bno) throws Exception {
		BbsDao dao=sql.getMapper(BbsDao.class);
		return dao.bbsdetail(bno);
	}

	@Override
	public void updateClick(BbsDto dto) throws Exception {
		BbsDao dao=sql.getMapper(BbsDao.class);
		dao.updateClick(dto);
	}

	@Override
	public void bbsupdate(BbsDto dto) throws Exception {
		BbsDao dao=sql.getMapper(BbsDao.class);
		dao.bbsupdate(dto);
	}
	
	@Override
	public void bbsdelete(int bno) throws Exception {
		BbsDao dao=sql.getMapper(BbsDao.class);
		dao.bbsdelete(bno);
	}
	
	@Override
	public void checkit(BbsDto dto) throws Exception {
		BbsDao dao=sql.getMapper(BbsDao.class);
		dao.checkit(dto);
	}

	@Override
	public List<BbsDto> listSearch(PageMaker pm) throws Exception {
		BbsDao dao=sql.getMapper(BbsDao.class);
		return dao.listSearch(pm);
	}
	
	@Override
	public int listSearchCount(PageMaker pm) throws Exception {
		BbsDao dao=sql.getMapper(BbsDao.class);
		return dao.listSearchCount(pm);
	}

	@Override
	public void bbsiddelete(String id) throws Exception {
		BbsDao dao=sql.getMapper(BbsDao.class);
		dao.bbsiddelete(id);
		
	}
	
	
}