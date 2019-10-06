package org.mhd.indiest.controller;

import javax.websocket.server.PathParam;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RookieController {

	@RequestMapping("/rookie/contents/{no}")
	public String contentDetail(@PathVariable int no){
		
		return "contentDetail";
	}

	@RequestMapping("/rookie/{no}")
	public String rookieDetail(@PathVariable int no){
		return "rookieDetail";
	}
	
	@RequestMapping("/rookie")
	public String rookieMain(){
		return "rookies";
	}

	@RequestMapping("/rookie/search")
	public String searchRookie(){
		
		return "rookieSearch";
	}
	
	@RequestMapping("/rookie/registForm")
	public String rcRegist(){
		return "contentForm";
	}
}
