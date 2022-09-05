package com.human.service;

import java.util.List;

import com.human.dto.ReplyDto;
import com.human.vo.PageMaker;

public interface ReplyService {
		  public void addReply(ReplyDto vo) throws Exception;
		  public List<ReplyDto> listReply(Integer bno) throws Exception;
		  public void modifyReply(ReplyDto vo) throws Exception;
		  public void removeReply(Integer rno) throws Exception;
		  public List<ReplyDto> listReplyPage(Integer bno, PageMaker pm) throws Exception;
		  public int count(Integer bno) throws Exception;

}
