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
public class MainController {
	 
	 
	 
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	@Inject
	private MypageService MypageService;
	
	@Inject
	private MainAiService aiservice;
	
	
	 

//	메인페이지
	@RequestMapping(value = "mainpage/main", method = RequestMethod.GET)
	public String main(CrawlingDto dto,Locale locale, Model model,HttpServletRequest request) throws Exception {

		HttpSession session = request.getSession();
		String id=(String) session.getAttribute("id");
		
		model.addAttribute("dtokids",aiservice.BestKids());
		model.addAttribute("dtonovel",aiservice.BestNovel());
		model.addAttribute("dtoself",aiservice.BestSelfImprove());
		model.addAttribute("dtoNotice",aiservice.noticeHome());
		
		
		return "mainpage/main";
	}
	
//  마이페이지
	@RequestMapping(value = "mainpage/mypage", method = RequestMethod.GET)
	public void readId( Model model,HttpServletRequest request) throws Exception {
		//DB에있는 모든 데이터를 화면에 보여주기 작업을 보여주기 위해 
		
		
		HttpSession session = request.getSession();
		String id=(String) session.getAttribute("id");
		
		model.addAttribute("dto",MypageService.readId(id));
	
	}
	
	@RequestMapping(value = "mainpage/mypage", method = RequestMethod.POST)
	public String update(HumanDto dto,RedirectAttributes rttr, Model model) throws Exception {
		MypageService.update(dto);
		rttr.addFlashAttribute("msg","success");
		return "redirect:main";
		
	}
	
//	비밀번호 변경
	@RequestMapping(value = "mainpage/password", method = RequestMethod.GET)
	public void password( Model model,HttpServletRequest request) throws Exception {
		//DB에있는 모든 데이터를 화면에 보여주기 작업을 보여주기 위해 
		HttpSession session = request.getSession();
		String id=(String) session.getAttribute("id");
		
		//DB에있는 모든데이터를 읽어다주는 service를 만들어서 모델의 list에 담는다
		model.addAttribute("dto",MypageService.readId(id));
		
	}
	
	@RequestMapping(value = "mainpage/password", method = RequestMethod.POST)
	public String updatePassword(HumanDto dto,RedirectAttributes rttr, Model model) throws Exception {
		MypageService.updatePassword(dto);
		rttr.addFlashAttribute("msg","success");
		return "redirect:main";
		
	}

//	회원탈퇴
	@RequestMapping(value = "mainpage/deleteAccountPage", method = RequestMethod.GET)
	public void deleteAccountPage( Model model,HttpServletRequest request) throws Exception {
		//DB에있는 모든 데이터를 화면에 보여주기 작업을 보여주기 위해 
		HttpSession session = request.getSession();
		String id=(String) session.getAttribute("id");
		
		//DB에있는 모든데이터를 읽어다주는 service를 만들어서 모델의 list에 담는다
		model.addAttribute("dto",MypageService.readId(id));
		
	}
	
	@RequestMapping(value = "mainpage/deleteAccountPage", method = RequestMethod.POST)
	public String deleteAccount(@RequestParam("id")String id, Model model,HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		session.invalidate();// 모두 삭제
		
		MypageService.delete(id);
		
		return "redirect:main";
		
	}
	
	@RequestMapping(value = "/mainpage/introduce", method = RequestMethod.GET)
	public void introduce() throws Exception {
		
	}
	
	@RequestMapping(value = "/mainpage/way", method = RequestMethod.GET)
	public void way() throws Exception {
		
	}
	
	

		
}
