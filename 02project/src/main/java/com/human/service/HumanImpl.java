package com.human.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dao.HumanDao;
import com.human.dto.HumanDto;

@Service
public class HumanImpl implements HumanService {

	@Autowired
	private SqlSession sql;
	
	@Override
	public void insert(HumanDto dto) throws Exception {
		HumanDao dao=sql.getMapper(HumanDao.class);
		dao.insert(dto);
	}

	@Override
	public void delete(String id) throws Exception {
		HumanDao dao=sql.getMapper(HumanDao.class);
		dao.delete(id);
	}

	@Override
	public ArrayList<HumanDto> list() throws Exception {
		HumanDao dao=sql.getMapper(HumanDao.class);
		return dao.list();
	}

	@Override
	public HumanDto login(String id) throws Exception {
		HumanDao dao=sql.getMapper(HumanDao.class);
		return dao.login(id);
	}

	@Override
	public HumanDto find_id(HumanDto dto) throws Exception {
		HumanDao dao=sql.getMapper(HumanDao.class);
		return dao.find_id(dto);
	}

	@Override
	public int idcheck(String id) throws Exception {
		HumanDao dao=sql.getMapper(HumanDao.class);
		return dao.idcheck(id);
	}

	
}