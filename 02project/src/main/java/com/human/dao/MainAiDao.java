package com.human.dao;

import java.util.ArrayList;
import java.util.List;

import com.human.dto.CrawlingDto;
import com.human.dto.CrawlingDto;
import com.human.vo.PageMaker;

//import org.zerock.domain.Criteria;
//import org.zerock.domain.SearchCriteria;

public interface MainAiDao {



  public void insertKids(CrawlingDto book) throws Exception;
  public ArrayList<CrawlingDto> BestKids() throws Exception;

  public void insertNovel(CrawlingDto book) throws Exception;
  public ArrayList<CrawlingDto> BestNovel() throws Exception;

  public void insertSelfImprove(CrawlingDto book) throws Exception;
  public ArrayList<CrawlingDto> BestSelfImprove() throws Exception;

  
  public void deleteKids() throws Exception;
  public void deleteNovel() throws Exception;
  public void deleteSelfImprove() throws Exception;
  

  
  
  
  
  
  
}
