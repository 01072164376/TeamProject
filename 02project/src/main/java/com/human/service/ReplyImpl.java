package com.human.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dao.ReplyDao;
import com.human.dto.ReplyDto;
import com.human.vo.PageMaker;

@Service
public class ReplyImpl implements ReplyService {
	@Autowired
	private SqlSession sqlSession;
	
  @Override
  public void addReply(ReplyDto vo) throws Exception {
	  ReplyDao dao=sqlSession.getMapper(ReplyDao.class);
	  dao.insert(vo);
  }

  @Override
  public List<ReplyDto> listReply(Integer bno) throws Exception {
	  ReplyDao dao=sqlSession.getMapper(ReplyDao.class);
    return dao.list(bno);
  }

  @Override
  public void modifyReply(ReplyDto vo) throws Exception {
	  ReplyDao dao=sqlSession.getMapper(ReplyDao.class);
	  dao.update(vo);
  }

  @Override
  public void removeReply(Integer rno) throws Exception {
	  ReplyDao dao=sqlSession.getMapper(ReplyDao.class);
	  dao.delete(rno);
  }
  @Override
  public List<ReplyDto> listReplyPage(Integer bno, PageMaker cri) throws Exception {
	  ReplyDao dao=sqlSession.getMapper(ReplyDao.class);
    return dao.listPage(bno, cri);
  }
  @Override
  public int count(Integer bno) throws Exception {
	  ReplyDao dao=sqlSession.getMapper(ReplyDao.class);
    return dao.count(bno);
  }
}
