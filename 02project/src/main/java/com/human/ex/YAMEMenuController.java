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

import com.human.dto.CrawlingDto;
import com.human.dto.HumanDto;
import com.human.service.MypageService;
import com.human.service.MainAiService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class YAMEMenuController {
	 
	 
	 
	private static final Logger logger = LoggerFactory.getLogger(YAMEMenuController.class);
	@Inject
	private MypageService MypageService;
	
	@Inject
	private MainAiService aiservice;
	
	
	 

//	도서메뉴 / 도서검색
	@RequestMapping(value = "bookmenu/search", method = RequestMethod.GET)
	public String search(CrawlingDto dto,Locale locale, Model model,HttpServletRequest request) throws Exception {

		return "bookmenu/search";
	}
//	도서메뉴 / 도서검색
	@RequestMapping(value = "bookmenu/newbook", method = RequestMethod.GET)
	public String newbook(CrawlingDto dto,Locale locale, Model model,HttpServletRequest request) throws Exception {

		return "bookmenu/newbook";
	}
//	도서메뉴 / 도서검색
	@RequestMapping(value = "bookmenu/bestbook", method = RequestMethod.GET)
	public String bestbook(CrawlingDto dto,Locale locale, Model model,HttpServletRequest request) throws Exception {

		return "bookmenu/bestbook";
	}

	/* ai도서추천 */
	@RequestMapping(value = "recomm/aiBook", method = RequestMethod.GET)
	public String aiBook(CrawlingDto dto,Locale locale, Model model,HttpServletRequest request) throws Exception {

		return "recomm/aiBook";
	}
	
	/* lob */
	
	@RequestMapping(value = "lob/lobook", method = RequestMethod.GET)
	public String lobook(CrawlingDto dto,Locale locale, Model model,HttpServletRequest request) throws Exception {

		return "lob/lobook";
	}
	
	@RequestMapping(value = "lob/relobook", method = RequestMethod.GET)
	public String relobook(CrawlingDto dto,Locale locale, Model model,HttpServletRequest request) throws Exception {

		return "lob/relobook";
	}
	
	/* intro */

	@RequestMapping(value = "intro/FAQ", method = RequestMethod.GET)
	public String FAQ(CrawlingDto dto,Locale locale, Model model,HttpServletRequest request) throws Exception {

		return "intro/FAQ";
	}
	@RequestMapping(value = "intro/libraryevent", method = RequestMethod.GET)
	public String libraryevent(CrawlingDto dto,Locale locale, Model model,HttpServletRequest request) throws Exception {

		return "intro/libraryevent";
	}
	@RequestMapping(value = "intro/notice", method = RequestMethod.GET)
	public String notice(CrawlingDto dto,Locale locale, Model model,HttpServletRequest request) throws Exception {

		return "intro/notice";
	}
	@RequestMapping(value = "intro/requestedit", method = RequestMethod.GET)
	public String requestedit(CrawlingDto dto,Locale locale, Model model,HttpServletRequest request) throws Exception {

		return "intro/requestedit";
	}
	@RequestMapping(value = "intro/requestpage", method = RequestMethod.GET)
	public String requestpage(CrawlingDto dto,Locale locale, Model model,HttpServletRequest request) throws Exception {

		return "intro/requestpage";
	}
	@RequestMapping(value = "intro/requestview", method = RequestMethod.GET)
	public String requestview(CrawlingDto dto,Locale locale, Model model,HttpServletRequest request) throws Exception {

		return "intro/requestview";
	}
	@RequestMapping(value = "intro/requestwrite", method = RequestMethod.GET)
	public String requestwrite(CrawlingDto dto,Locale locale, Model model,HttpServletRequest request) throws Exception {

		return "intro/requestwrite";
	}
}
