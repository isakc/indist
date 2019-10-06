package org.mhd.indiest.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndieController {
	@RequestMapping(value="/indie", method=RequestMethod.GET)
	public String indies(HttpServletRequest request) {
		return "indies";
	}
	@RequestMapping(value="/indie/{no}", method=RequestMethod.GET)
	public String indie(@PathVariable int no) {
		return "indieDetail";
	}
	@RequestMapping(value="/indie/search", method=RequestMethod.POST)
	public String indieSearch() {
		return "indieSearch";
	}
}
