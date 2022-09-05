package com.human.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dto.CrawlingDto;
import com.human.dto.HumanDto;
import com.human.dto.PagingDto;
import com.human.dao.BbsDao;
import com.human.dao.MainAiDao;
import com.human.dao.MypageDao;
//import org.zerock.domain.Criteria;
//import org.zerock.domain.SearchCriteria;

@Service
public class MainAiServiceImpl implements MainAiService {
	@Autowired
	private SqlSession sql;
	
	

	

	@Override
	public void insertKyoboKids(String url) throws Exception {
		Document doc=null;
		List<CrawlingDto> list=new ArrayList<CrawlingDto>();
		try {
			doc = Jsoup.connect(url).get();
			
		}catch(IOException e) {
			e.printStackTrace();
		}
		
//		ul.class="list" 태그 내부의 모든 내용이 담김
		Elements element = doc.select(".detail");
		
		
//		element가 갖고있는 내용중 P class="title" 인 내용을 모두 가져옴
		Iterator<Element> elements= element.select(".title Strong").iterator();
		MainAiDao dao=sql.getMapper(MainAiDao.class);
		int i=20;
		while(elements.hasNext()) {
			CrawlingDto book=new CrawlingDto();
			String name=elements.next().text();
		
			book.setName(name);
			book.setScore(i);
			book.setImg("");
			
			dao.insertKids(book);
			i--;
			if(i==0) {
				break;
			}
			
		}
	}

	@Override
	public void insertAladinKids(String url) throws Exception {
		// TODO Auto-generated method stub
		Document doc=null;
		List<CrawlingDto> list=new ArrayList<CrawlingDto>();
		try {
			doc = Jsoup.connect(url).get();
			
		}catch(IOException e) {
			e.printStackTrace();
		}
		
//		ul.class="list" 태그 내부의 모든 내용이 담김
		Elements element = doc.select(".ss_book_list");
		
		
//		element가 갖고있는 내용중 P class="title" 인 내용을 모두 가져옴
		Iterator<Element> elements= element.select(".bo3 b").iterator();
		MainAiDao dao=sql.getMapper(MainAiDao.class);
		int i=20;
		while(elements.hasNext()) {
			CrawlingDto book=new CrawlingDto();
			String name=elements.next().text();
		
			book.setName(name);
			book.setScore(i);
			book.setImg("");
			
			dao.insertKids(book);
			i--;
			if(i==0) {
				break;
			}
			
		}
	}

	@Override
	public void insertYes24Kids(String url) throws Exception {
		// TODO Auto-generated method stub
		Document doc=null;
		List<CrawlingDto> list=new ArrayList<CrawlingDto>();
		try {
			doc = Jsoup.connect(url).get();
			
		}catch(IOException e) {
			e.printStackTrace();
		}
		
//		ul.class="list" 태그 내부의 모든 내용이 담김
		Elements element = doc.select(".goodsTxtInfo>p:first-child");
		Elements element2 = doc.select(".goodsImgW");
		
		
//		element가 갖고있는 내용중 P class="title" 인 내용을 모두 가져옴
		Iterator<Element> elements= element.select("p>a:first-child").iterator();
		Iterator<Element> elements2= element2.select("a:first-child img").iterator();
		
		MainAiDao dao=sql.getMapper(MainAiDao.class);
		int i=20;
		while(elements.hasNext()) {
			CrawlingDto book=new CrawlingDto();
			String name=elements.next().text();
			String img=elements2.next().absUrl("src");
			
			book.setName(name);
			book.setImg(img);
			
			book.setScore(i);
			dao.insertKids(book);
			i--;
			if(i==0) {
				break;
			}
			
		}
	}

	@Override
	public ArrayList<CrawlingDto> BestKids() throws Exception {
		// TODO Auto-generated method stub
		MainAiDao dao=sql.getMapper(MainAiDao.class);
		return dao.BestKids();
	
	}

	@Override
	public void insertKyoboNovel(String url) throws Exception {
		// TODO Auto-generated method stub
		Document doc=null;
		List<CrawlingDto> list=new ArrayList<CrawlingDto>();
		try {
			doc = Jsoup.connect(url).get();
			
		}catch(IOException e) {
			e.printStackTrace();
		}
		
//		ul.class="list" 태그 내부의 모든 내용이 담김
		Elements element = doc.select(".detail");
		
		
//		element가 갖고있는 내용중 P class="title" 인 내용을 모두 가져옴
		Iterator<Element> elements= element.select(".title Strong").iterator();
		MainAiDao dao=sql.getMapper(MainAiDao.class);
		int i=20;
		while(elements.hasNext()) {
			CrawlingDto book=new CrawlingDto();
			String name=elements.next().text();
		
			book.setName(name);
			book.setScore(i);
			book.setImg("");
			
			dao.insertNovel(book);
			i--;
			if(i==0) {
				break;
			}
			
		}
	}
	

	@Override
	public void insertAladinNovel(String url) throws Exception {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		Document doc=null;
		List<CrawlingDto> list=new ArrayList<CrawlingDto>();
		try {
			doc = Jsoup.connect(url).get();
			
		}catch(IOException e) {
			e.printStackTrace();
		}
		
//		ul.class="list" 태그 내부의 모든 내용이 담김
		Elements element = doc.select(".ss_book_list");
		
		
//		element가 갖고있는 내용중 P class="title" 인 내용을 모두 가져옴
		Iterator<Element> elements= element.select(".bo3 b").iterator();
		MainAiDao dao=sql.getMapper(MainAiDao.class);
		int i=20;
		while(elements.hasNext()) {
			CrawlingDto book=new CrawlingDto();
			String name=elements.next().text();
		
			book.setName(name);
			book.setScore(i);
			book.setImg("");
			
			dao.insertNovel(book);
			i--;
			if(i==0) {
				break;
			}
			
		}
	}
	

	@Override
	public void insertYes24Novel(String url) throws Exception {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		Document doc=null;
		List<CrawlingDto> list=new ArrayList<CrawlingDto>();
		try {
			doc = Jsoup.connect(url).get();
			
		}catch(IOException e) {
			e.printStackTrace();
		}
		
//		ul.class="list" 태그 내부의 모든 내용이 담김
		Elements element = doc.select(".goodsTxtInfo>p:first-child");
		Elements element2 = doc.select(".goodsImgW");
		
		
//		element가 갖고있는 내용중 P class="title" 인 내용을 모두 가져옴
		Iterator<Element> elements= element.select("p>a:first-child").iterator();
		Iterator<Element> elements2= element2.select("a:first-child img").iterator();
		
		MainAiDao dao=sql.getMapper(MainAiDao.class);
		int i=20;
		while(elements.hasNext()) {
			CrawlingDto book=new CrawlingDto();
			String name=elements.next().text();
			String img=elements2.next().absUrl("src");
			
			book.setName(name);
			book.setImg(img);
			
			book.setScore(i);
			dao.insertNovel(book);
			i--;
			if(i==0) {
				break;
			}
			
		}
	}

	@Override
	public ArrayList<CrawlingDto> BestNovel() throws Exception {
		// TODO Auto-generated method stub
				MainAiDao dao=sql.getMapper(MainAiDao.class);
				return dao.BestNovel();
	}

	@Override
	public void insertKyoboSelfImprove(String url) throws Exception {
		// TODO Auto-generated method stub
		Document doc=null;
		List<CrawlingDto> list=new ArrayList<CrawlingDto>();
		try {
			doc = Jsoup.connect(url).get();
			
		}catch(IOException e) {
			e.printStackTrace();
		}
		
//		ul.class="list" 태그 내부의 모든 내용이 담김
		Elements element = doc.select(".detail");
		
		
//		element가 갖고있는 내용중 P class="title" 인 내용을 모두 가져옴
		Iterator<Element> elements= element.select(".title Strong").iterator();
		MainAiDao dao=sql.getMapper(MainAiDao.class);
		int i=20;
		while(elements.hasNext()) {
			CrawlingDto book=new CrawlingDto();
			String name=elements.next().text();
		
			book.setName(name);
			book.setScore(i);
			book.setImg("");
			
			dao.insertSelfImprove(book);
			i--;
			if(i==0) {
				break;
			}
			
		}
	}
	

	@Override
	public void insertAladinSelfImprove(String url) throws Exception {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		Document doc=null;
		List<CrawlingDto> list=new ArrayList<CrawlingDto>();
		try {
			doc = Jsoup.connect(url).get();
			
		}catch(IOException e) {
			e.printStackTrace();
		}
		
//		ul.class="list" 태그 내부의 모든 내용이 담김
		Elements element = doc.select(".ss_book_list");
		
		
//		element가 갖고있는 내용중 P class="title" 인 내용을 모두 가져옴
		Iterator<Element> elements= element.select(".bo3 b").iterator();
		MainAiDao dao=sql.getMapper(MainAiDao.class);
		int i=20;
		while(elements.hasNext()) {
			CrawlingDto book=new CrawlingDto();
			String name=elements.next().text();
		
			book.setName(name);
			book.setScore(i);
			book.setImg("");
			
			dao.insertSelfImprove(book);
			i--;
			if(i==0) {
				break;
			}
			
		}
	}
	

	@Override
	public void insertYes24SelfImprove(String url) throws Exception {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		Document doc=null;
		List<CrawlingDto> list=new ArrayList<CrawlingDto>();
		try {
			doc = Jsoup.connect(url).get();
			
		}catch(IOException e) {
			e.printStackTrace();
		}
		
//		ul.class="list" 태그 내부의 모든 내용이 담김
		Elements element = doc.select(".goodsTxtInfo>p:first-child");
		Elements element2 = doc.select(".goodsImgW");
		
		
//		element가 갖고있는 내용중 P class="title" 인 내용을 모두 가져옴
		Iterator<Element> elements= element.select("p>a:first-child").iterator();
		Iterator<Element> elements2= element2.select("a:first-child img").iterator();
		
		MainAiDao dao=sql.getMapper(MainAiDao.class);
		int i=20;
		while(elements.hasNext()) {
			CrawlingDto book=new CrawlingDto();
			String name=elements.next().text();
			String img=elements2.next().absUrl("src");
			
			book.setName(name);
			book.setImg(img);
			
			book.setScore(i);
			dao.insertSelfImprove(book);
			i--;
			if(i==0) {
				break;
			}
			
		}
	}

	@Override
	public ArrayList<CrawlingDto> BestSelfImprove() throws Exception {
		// TODO Auto-generated method stub
				MainAiDao dao=sql.getMapper(MainAiDao.class);
				return dao.BestSelfImprove();
	}

	
	@Override
	public void deleteKids() throws Exception {
		// TODO Auto-generated method stub
		MainAiDao dao=sql.getMapper(MainAiDao.class);
		dao.deleteKids();
	}

	@Override
	public void deleteNovel() throws Exception {
		// TODO Auto-generated method stub
		MainAiDao dao=sql.getMapper(MainAiDao.class);
		dao.deleteNovel();
	}

	@Override
	public void deleteSelfImprove() throws Exception {
		// TODO Auto-generated method stub
		MainAiDao dao=sql.getMapper(MainAiDao.class);
		dao.deleteSelfImprove();
	}

	
	
	
	
	
	
//	공지사항
	
	
	@Override
	public ArrayList<CrawlingDto> listAll() throws Exception {
		MypageDao dao=sql.getMapper(MypageDao.class);
		return dao.listAll();
	}

	@Override
	public void insert(CrawlingDto dto) throws Exception {
		MypageDao dao=sql.getMapper(MypageDao.class);
		dao.insertNotice(dto);
	}

	@Override
	public CrawlingDto detail(int bno) throws Exception {
		MypageDao dao=sql.getMapper(MypageDao.class);
		return dao.detailNotice(bno);
	}

	@Override
	public void updateNotice(CrawlingDto dto) throws Exception {
		// TODO Auto-generated method stub
		MypageDao dao=sql.getMapper(MypageDao.class);
		dao.updateNotice(dto);
	}

	@Override
	public void deleteNotice(int bno) throws Exception {
		// TODO Auto-generated method stub
		MypageDao dao=sql.getMapper(MypageDao.class);
		dao.deleteNotice(bno);
	}

	@Override
	public void viewCount(int bno) {
		// TODO Auto-generated method stub
		MypageDao dao=sql.getMapper(MypageDao.class);
		dao.viewCount(bno);
	}

	@Override
	public int countBoard() {
		MypageDao dao=sql.getMapper(MypageDao.class);
		return dao.countBoard();
	}

	@Override
	public ArrayList<CrawlingDto> selectBoard(PagingDto dto) {
		// TODO Auto-generated method stub
		MypageDao dao=sql.getMapper(MypageDao.class);
		return dao.selectBoard(dto);
	}

	@Override
	public ArrayList<CrawlingDto> noticeHome() throws Exception {
		MypageDao dao=sql.getMapper(MypageDao.class);
		return dao.noticeHome();
	}

	




}
