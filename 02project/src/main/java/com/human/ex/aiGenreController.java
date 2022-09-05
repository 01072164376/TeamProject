package com.human.ex;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.human.service.BbsService;
import com.human.service.HumanService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class aiGenreController {
	
	@RequestMapping(value = "/service/aiGenre", method = RequestMethod.GET)
	public void aiGenre() throws Exception {
		
	}
	
}
