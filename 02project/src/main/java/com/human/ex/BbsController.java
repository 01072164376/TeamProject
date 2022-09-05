package com.human.ex;

import java.io.PrintWriter;
import java.lang.ProcessBuilder.Redirect;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.theme.SessionThemeResolver;

import com.human.dao.HumanDao;
import com.human.dto.BbsDto;
import com.human.dto.HumanDto;
import com.human.service.BbsService;
import com.human.service.HumanService;
import com.human.vo.PageMaker;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BbsController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Inject
	private HumanService humanservice;

	@Inject
	private BbsService bbsservice;

	@RequestMapping(value = "/service/service", method = RequestMethod.GET)
	public String service(Model model, PageMaker pm) throws Exception {
//		model.addAttribute("bbslist", bbsservice.bbslist());
		model.addAttribute("bbslist",bbsservice.listSearch(pm));
		pm.setTotalCount(bbsservice.listSearchCount(pm));
		return "/service/service";
	}
	
	@RequestMapping(value = "/checkit", method = RequestMethod.POST)
	public String checkit(int bno, BbsDto dto, Model model) throws Exception {
		bbsservice.checkit(dto);
		return "redirect:/service/service";
	}

	@RequestMapping(value = "/service/servicejoin", method = RequestMethod.GET)
	public String servicejoin() throws Exception {
		return "/service/servicejoin";
	}

	@RequestMapping(value = "/service/servicejoin", method = RequestMethod.POST)
	public String servicejoindb(BbsDto dto, RedirectAttributes rttr) throws Exception {
		bbsservice.bbsinsert(dto);
		rttr.addFlashAttribute("msg", "success");
		return "redirect:/service/service";
	}

	@RequestMapping(value = "/service/servicepage", method = RequestMethod.GET)
	public String servicepage(HttpServletRequest request, int bno, BbsDto dto, Model model) throws Exception {
			request.setAttribute("userId", bbsservice.bbsdetail(bno).getId());
			bbsservice.updateClick(dto);
			model.addAttribute("dto", bbsservice.bbsdetail(bno));
			return "/service/servicepage";			
	}
	
	@RequestMapping(value = "/bbsdelete", method = RequestMethod.GET)
	public String bbsdelete(int bno, RedirectAttributes rttr) throws Exception {
		bbsservice.bbsdelete(bno);
		rttr.addFlashAttribute("msg", "delete");
		return "redirect:/service/service";
	}
	
	@RequestMapping(value = "/service/serviceupdate", method = RequestMethod.GET)
	public String serviceupdate(Model model, int bno) throws Exception {
		model.addAttribute("dto", bbsservice.bbsdetail(bno));
		return "/service/serviceupdate";
	}
	
	@RequestMapping(value = "/service/serviceupdate", method = RequestMethod.POST)
	public String serviceupdatedb(int bno, BbsDto dto, RedirectAttributes rttr) throws Exception {
		bbsservice.bbsupdate(dto);
		rttr.addFlashAttribute("msg","update");
		return "redirect:/service/servicepage?bno="+bno;
	}
	
}
