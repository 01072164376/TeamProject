package com.human.service;

import java.util.ArrayList;
import java.util.List;

import com.human.dto.HumanDto;
import com.human.dto.PagingDto;
import com.human.dto.CrawlingDto;

//import org.zerock.domain.Criteria;
//import org.zerock.domain.SearchCriteria;

public interface MainAiService {

	  public void insertKyoboKids(String url) throws Exception;
	  public void insertAladinKids(String url) throws Exception;
	  public void insertYes24Kids(String url) throws Exception;
	  public ArrayList<CrawlingDto> BestKids() throws Exception;

	  public void insertKyoboNovel(String url) throws Exception;
	  public void insertAladinNovel(String url) throws Exception;
	  public void insertYes24Novel(String url) throws Exception;
	  public ArrayList<CrawlingDto> BestNovel() throws Exception;

	  public void insertKyoboSelfImprove(String url) throws Exception;
	  public void insertAladinSelfImprove(String url) throws Exception;
	  public void insertYes24SelfImprove(String url) throws Exception;
	  public ArrayList<CrawlingDto> BestSelfImprove() throws Exception;
	  public void deleteKids() throws Exception;
	  public void deleteNovel() throws Exception;
	  public void deleteSelfImprove() throws Exception;
	  
	  
//	  공지사항
	  public ArrayList<CrawlingDto> listAll() throws Exception;
		public void insert(CrawlingDto dto) throws Exception;
		public CrawlingDto detail(int bno) throws Exception;
		public void updateNotice(CrawlingDto dto) throws Exception;
		public void deleteNotice(int bno) throws Exception;
		public void viewCount(int bno);
		// 게시물 총 갯수
		public int countBoard();

		// 페이징 처리 게시글 조회
		public ArrayList<CrawlingDto> selectBoard(PagingDto dto);

	  
		public ArrayList<CrawlingDto> noticeHome() throws Exception;
		
	  
//  public List<BoardVO> listCriteria(Criteria cri) throws Exception;
//
//  public int listCountCriteria(Criteria cri) throws Exception;
//
//  public List<BoardVO> listSearchCriteria(SearchCriteria cri) 
//      throws Exception;
//
//  public int listSearchCount(SearchCriteria cri) throws Exception;

}
