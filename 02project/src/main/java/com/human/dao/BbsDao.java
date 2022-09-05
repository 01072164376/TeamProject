package com.human.dao;

import java.util.ArrayList;
import java.util.List;

import com.human.dto.BbsDto;
import com.human.vo.PageMaker;

public interface BbsDao {
	public ArrayList<BbsDto> bbslist() throws Exception;
	public void bbsinsert(BbsDto dto) throws Exception;
	public BbsDto bbsdetail(int bno) throws Exception;
	public void updateClick(BbsDto dto) throws Exception;
	public void bbsupdate(BbsDto dto) throws Exception;
	public void bbsdelete(int bno) throws Exception;
	public void bbsiddelete(String id) throws Exception;
	public void checkit(BbsDto dto) throws Exception;
	public List<BbsDto> listSearch(PageMaker pm)throws Exception;
	public int listSearchCount(PageMaker pm)throws Exception;
}
