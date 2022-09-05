package com.human.service;

import java.util.ArrayList;
import java.util.List;

import com.human.dto.HumanDto;
import com.human.dto.CrawlingDto;

//import org.zerock.domain.Criteria;
//import org.zerock.domain.SearchCriteria;

public interface MypageService {


	  public void update(HumanDto dto) throws Exception;
	  public void delete(String id) throws Exception;
	  public void updatePassword(HumanDto dto);
	  public HumanDto readId(String id) throws Exception;
	

}
