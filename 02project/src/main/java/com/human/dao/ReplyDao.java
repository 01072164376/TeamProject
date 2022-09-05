package com.human.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.human.dto.ReplyDto;
import com.human.vo.PageMaker;

public interface ReplyDao {
	public void deleteBno(Integer bno) throws Exception;
	public List<ReplyDto> list(Integer bno) throws Exception;
	public void insert(ReplyDto vo) throws Exception;
	public void update(ReplyDto vo) throws Exception;
	public void delete(Integer rno) throws Exception;
	public List<ReplyDto> listPage(@Param("bno") Integer bno, @Param("pm") PageMaker pm) throws Exception;
	public int count(Integer bno) throws Exception;
	
}
