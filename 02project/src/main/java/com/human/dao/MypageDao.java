package com.human.dao;

import java.util.ArrayList;
import java.util.List;

import com.human.dto.CrawlingDto;
import com.human.dto.HumanDto;
import com.human.dto.PagingDto;

//import org.zerock.domain.Criteria;
//import org.zerock.domain.SearchCriteria;

public interface MypageDao {



  public void update(HumanDto dto) throws Exception;
  public void delete(String id) throws Exception;
  public void updatePassword(HumanDto dto);
  public HumanDto readId(String id) throws Exception;

  
//  공지
//공지사항
	public ArrayList<CrawlingDto> listAll() throws Exception;
	public void insertNotice(CrawlingDto dto) throws Exception;
	public CrawlingDto detailNotice(int bno) throws Exception;
	public void updateNotice(CrawlingDto dto) throws Exception;
	public void deleteNotice(int bno) throws Exception;
	public void viewCount(int bno);
	public ArrayList<CrawlingDto> noticeHome() throws Exception;
	
	// 게시물 총 갯수
	public int countBoard();

	// 페이징 처리 게시글 조회
	public ArrayList<CrawlingDto> selectBoard(PagingDto dto);
}
