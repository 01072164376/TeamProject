package com.human.dao;

import java.util.ArrayList;

import com.human.dto.HumanDto;

public interface HumanDao {
	public ArrayList<HumanDto> list() throws Exception;
	public void insert(HumanDto dto) throws Exception;
	public int idcheck(String id) throws Exception;
	public HumanDto login(String id) throws Exception;
	public HumanDto find_id(HumanDto dto) throws Exception;
	public void delete(String id) throws Exception;
}