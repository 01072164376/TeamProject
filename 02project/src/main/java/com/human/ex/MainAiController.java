package com.human.ex;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.human.dto.BbsDto;
import com.human.dto.CrawlingDto;
import com.human.dto.HumanDto;
import com.human.dto.PagingDto;
import com.human.service.MypageService;
import com.human.vo.PageMaker;
import com.human.service.HumanService;
import com.human.service.MainAiService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainAiController {

	private static final Logger logger = LoggerFactory.getLogger(MainAiController.class);
	@Inject
	private MainAiService aiservice;

	@Inject
	private HumanService humanservice;

//	크롤링
	@RequestMapping(value = "/crawling", method = RequestMethod.GET)
	public String crawling() throws Exception {
		
		aiservice.deleteKids();
		aiservice.deleteNovel();
		aiservice.deleteSelfImprove();
		
		
		String KyoboKids = "http://www.kyobobook.co.kr/bestSellerNew/bestseller.laf?mallGb=KOR&linkClass=G&range=1&kind=0&orderClick=DAb";
		aiservice.insertKyoboKids(KyoboKids);

		String AladinKids  = "https://www.aladin.co.kr/shop/common/wbest.aspx?BestType=Bestseller&BranchType=1&CID=1108";
		aiservice.insertAladinKids(AladinKids );

		String Yes24Kids  = "http://www.yes24.com/24/category/bestseller?CategoryNumber=001001016&sumgb=08";
		aiservice.insertYes24Kids(Yes24Kids );

		
		String KyoboNovel= "http://www.kyobobook.co.kr/bestSellerNew/bestseller.laf?mallGb=KOR&linkClass=B&range=1&kind=0&orderClick=DAb";
		aiservice.insertKyoboNovel(KyoboNovel);

		String AladinNovel= "https://www.aladin.co.kr/shop/common/wbest.aspx?BestType=Bestseller&BranchType=1&CID=1";
		aiservice.insertAladinNovel(AladinNovel);

		String Yes24Novel= "http://www.yes24.com/24/category/bestseller?CategoryNumber=001001046&sumgb=08";
		aiservice.insertYes24Novel(Yes24Novel);

		
		String KyoboSelfImprove= "http://www.kyobobook.co.kr/bestSellerNew/bestseller.laf?mallGb=KOR&linkClass=c&range=1&kind=0&orderClick=DAb";
		aiservice.insertKyoboSelfImprove(KyoboSelfImprove);

		String AladinSelfImprove= "https://www.aladin.co.kr/shop/common/wbest.aspx?BestType=Bestseller&BranchType=1&CID=336";
		aiservice.insertAladinSelfImprove(AladinSelfImprove);

		String Yes24SelfImprove= "http://www.yes24.com/24/category/bestseller?CategoryNumber=001001026&sumgb=08";
		aiservice.insertYes24SelfImprove(Yes24SelfImprove);
		
		
	

		return "redirect:mainpage/main";
	}
	
	
	
//	공지사항
	
	@RequestMapping(value = "mainpage/notice", method = RequestMethod.GET)
	public String list(Model model,PagingDto dto,
			@RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage,HttpServletRequest request) throws Exception {
		model.addAttribute("dtoNotice", aiservice.listAll());
		HttpSession session = request.getSession();
		String id=(String) session.getAttribute("id");
		
		
		int total = aiservice.countBoard();
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = "5";
		}
		dto = new PagingDto(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		model.addAttribute("paging", dto);
		model.addAttribute("viewAll", aiservice.selectBoard(dto));
		
		
		return "mainpage/notice";
	}
	

	@RequestMapping(value = "mainpage/readNotice", method = RequestMethod.GET)
	public String readNotice(Model model,CrawlingDto dto,@RequestParam("bno")int bno) throws Exception {
		model.addAttribute("readNotice", aiservice.detail(bno));
		aiservice.viewCount(bno);
		return "mainpage/readNotice";
	}
	
	@RequestMapping(value = "mainpage/modifyNotice", method = RequestMethod.GET)
	public String modifyNotice(Model model,CrawlingDto dto,@RequestParam("bno")int bno) throws Exception {
		model.addAttribute("readNotice", aiservice.detail(bno));
		
		return "mainpage/modifyNotice";
	}
	
	@RequestMapping(value = "mainpage/modifyNotice", method = RequestMethod.POST)
	public String modifyNotice2(Model model,CrawlingDto dto) throws Exception {
		aiservice.updateNotice(dto);
		
		return "redirect:/mainpage/notice";
	}

	@RequestMapping(value = "mainpage/deleteNotice", method = RequestMethod.GET)
	public String deleteNotice(Model model,CrawlingDto dto,@RequestParam("bno")int bno) throws Exception {
		aiservice.deleteNotice(bno);
		
		return "redirect:/mainpage/notice";
	}

	@RequestMapping(value = "mainpage/insertNotice", method = RequestMethod.GET)
	public String insertNotice(Model model,CrawlingDto dto) throws Exception {
		
		return "mainpage/insertNotice";
	}

	@RequestMapping(value = "mainpage/insertNotice", method = RequestMethod.POST)
	public String insertNotice2(Model model,CrawlingDto dto) throws Exception {
		aiservice.insert(dto);
		
		return "redirect:/mainpage/notice";
	}
	
	
	
	
	
	
	

}
