package com.human.ex;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.human.service.BbsService;
import com.human.vo.PageMaker;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Inject
	private BbsService bbsservice;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, PageMaker pm) throws Exception {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
//		model.addAttribute("bbslist", bbsservice.bbslist());
		model.addAttribute("bbslist",bbsservice.listSearch(pm));
		pm.setTotalCount(bbsservice.listSearchCount(pm));
	
		return "redirect:/mainpage/main";
	}
	
}
