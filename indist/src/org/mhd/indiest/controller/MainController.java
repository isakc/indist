package org.mhd.indiest.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	@RequestMapping(value="/index", method=RequestMethod.GET)
	public String index(){
		return "index";
	}//index() end
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String index2(){
		return "login";
	}//index() end
	
	@RequestMapping(value="/about", method=RequestMethod.GET)
	public String about(){
		return "about";
	}//about() end
	
	@RequestMapping(value="/contact", method=RequestMethod.GET)
	public String contact(){
		return "contact";
	}//contact() end
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(){
		return "login";
	}//login() end
	
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public String join(){
		return "join";
	}//join() end
	
	@RequestMapping(value="/player", method=RequestMethod.GET)
	public String player(){
		return "player";
	}//join() end
}
