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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.theme.SessionThemeResolver;

import com.human.dao.HumanDao;
import com.human.dto.HumanDto;
import com.human.service.BbsService;
import com.human.service.HumanService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HumanController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Inject
	private HumanService humanservice;
	
	@Inject
	private BbsService bbsservice;

	@RequestMapping(value = "/login/insert", method = RequestMethod.GET)
	public String insert() throws Exception {
		return "/login/insert";
	}

	@RequestMapping(value = "/login/insert", method = RequestMethod.POST)
	public String insertDB(HumanDto humanDto, RedirectAttributes rttr) throws Exception {
		try {
			String id = humanDto.getId(); // text 입력 아이디
			String pw = humanDto.getPw(); // text 입력 비번
			String pwcheck = humanDto.getPwcheck(); // text 입력 비번확인
			HumanDto dto1 = humanservice.login(id); // db 아이디
			String userid = "";

			if (dto1 != null) {
				userid = dto1.getId();
			}
			if (!id.equals(userid)) {
				if (pw.equals(pwcheck)) {
					humanservice.insert(humanDto);
					rttr.addFlashAttribute("msg", "insert");
					return "redirect:/list";
				} else {
					rttr.addFlashAttribute("msg", "otherpw");
					return "redirect:/login/insert";
				}
			} else {
				rttr.addFlashAttribute("msg", "sameid");
				return "redirect:/login/insert";
			}
		} catch (Exception e) {
			System.out.println(e);
			rttr.addFlashAttribute("msg", "data");
			return "redirect:/login/insert";
		}
	}
	
	@RequestMapping(value = "/idcheck", method = RequestMethod.GET)
	@ResponseBody 
	public int idcheck(String id) throws Exception {
		int result = humanservice.idcheck(id);
		return result;
	}

	@RequestMapping(value = "/login/login", method = RequestMethod.GET)
	public String login(HumanDto dto) throws Exception {
		return "/login/login";
	}

	@RequestMapping(value = "/login/login", method = RequestMethod.POST)
	public String logindb(HumanDto dto, RedirectAttributes rttr, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		try {
			HttpSession session = request.getSession();
			String inputid = dto.getId(); // 입력받은 아이디
			String inputpw = dto.getPw(); // 입력받은 비번
			HumanDto dto1 = humanservice.login(inputid); // dbDtoId.getId = db에서 받은 아이디
			String userid = dto1.getId(); // dbDto 에서 받은 아이디
			String userpw = dto1.getPw(); // dbDto 에서 받은 비번
			String name = dto1.getName(); // dbDto 에서 받은 이름
			String gender = dto1.getGender(); // dbDto 에서 받은 성별
//			session.setMaxInactiveInterval(600); // 600초 
			if (inputid.equals(userid)) {
				if (inputpw.equals(userpw)) {
					session.setAttribute("id", userid); // 세선에 데이터 추가
					session.setAttribute("name", name); // 세선에 데이터 추가
					session.setAttribute("gender", gender); // 세선에 데이터 추가
					rttr.addFlashAttribute("msg", "success");
					return "redirect:/mainpage/main";
				} else {
					rttr.addFlashAttribute("msg", "nopw");
					return "redirect:/login/login";
				}
			}
		} catch (Exception e) {
			System.out.println(e);
			rttr.addFlashAttribute("msg", "noid");
			return "redirect:/login/login";
		}
		return "/login/login";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(RedirectAttributes rttr, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		HttpSession session = request.getSession();
		session.invalidate();// 모두 삭제
		// session.removeAttribute("id"); //특정 키 값 삭제
		rttr.addFlashAttribute("msg", "logout");
		return "redirect:/login/login";
	}

	@RequestMapping(value = "/login/find_id", method = RequestMethod.GET)
	public String find_id() throws Exception {
		return "/login/find_id";
	}

	@RequestMapping(value = "/login/find_id", method = RequestMethod.POST)
	public String find_id(HumanDto dto, RedirectAttributes rttr) throws Exception {
		try {
			String inputname = dto.getName(); // 입력받은 이름
			String inputphone = dto.getPhone(); // 입력받은 전화번호
			String inputemail = dto.getEmail(); // 입력받은 이메일
			HumanDto dto1 = humanservice.find_id(dto);
			String id = dto1.getId();
			String dbname = dto1.getName();
			String dbphone = dto1.getPhone();
			String dbeamail = dto1.getEmail();
			if (inputname.equals(dbname) && inputphone.equals(dbphone) && inputemail.equals(dbeamail)) {
				rttr.addFlashAttribute("id", id);
				rttr.addFlashAttribute("msg", "findId");
				return "redirect:/login/login";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		rttr.addFlashAttribute("msg", "noid");
		return "redirect:/login/find_id";
	}

	@RequestMapping(value = "/login/find_pw", method = RequestMethod.GET)
	public String find_pw() throws Exception {
		return "/login/find_pw";
	}

	@RequestMapping(value = "/login/find_pw", method = RequestMethod.POST)
	public String find_pw(HumanDto dto, RedirectAttributes rttr) throws Exception {
		try {
			String inputid = dto.getId();
			String inputname = dto.getName();
			String inputemail = dto.getEmail();
			HumanDto dto1 = humanservice.login(inputid);
			String pw = dto1.getPw();
			String dbid = dto1.getId();
			String dbname = dto1.getName();
			String dbemail = dto1.getEmail();
			
			if (inputid.equals(dbid) && inputname.equals(dbname) && inputemail.equals(dbemail)) {
				rttr.addFlashAttribute("pw", pw);
				rttr.addFlashAttribute("msg", "findpw");
				return "redirect:/login/login";
			} else {
				rttr.addFlashAttribute("msg", "nopw");
				return "redirect:/login/find_pw";
			}	
		} catch(Exception e) {
			rttr.addFlashAttribute("msg", "noid");
			return "redirect:/login/find_pw";
		}
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) throws Exception {
		model.addAttribute("list", humanservice.list());
		model.addAttribute("size", humanservice.list().size());
		return "list";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(@RequestParam("id") String id, RedirectAttributes rttr) throws Exception {
		bbsservice.bbsiddelete(id);
		humanservice.delete(id);
		rttr.addFlashAttribute("msg", "delete");
		return "redirect:/list";
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home() throws Exception {
//		HttpServletRequest request, HttpServletResponse response // 매게변수
//		HttpSession session=request.getSession(); //세션확인
//		String id=(String)session.getAttribute("id"); //세션확인
//		String name=(String)session.getAttribute("name"); //세션확인
		return "home";
	}

	

}
