package org.mhd.indiest.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ConcertController {
	
	@RequestMapping(value="/concert", method=RequestMethod.GET)
	public String concert(){
		
		return "concert";
	}
	
	@RequestMapping(value="/rent", method=RequestMethod.GET)
	public String rent(){
		
		return "rent";
	}
	
	@RequestMapping(value="/concertDetail", method=RequestMethod.GET)
	public String concertDetail(){
		
		return "concertDetail";
	}
	
	@RequestMapping(value="/concertForm", method=RequestMethod.GET)
	public String concertForm(){
		
		return "concertForm";
	}
	
	@RequestMapping(value="/conDetailGuide", method=RequestMethod.GET)
	public String conDetailGuide(){
		
		return "conDetailGuide";
	}
	
	@RequestMapping(value="/conDetailInfo", method=RequestMethod.GET)
	public String conDetailInfo(){
		
		return "conDetailInfo";
	}
	
	@RequestMapping(value="/conDetailQnA", method=RequestMethod.GET)
	public String conDetailQnA(){
		
		return "conDetailQnA";
	}
	
	@RequestMapping(value="/conDetailReview", method=RequestMethod.GET)
	public String conDetailReview(){
		
		return "conDetailReview";
	}
}
