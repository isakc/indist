package org.mhd.indiest.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AlbumController {
	
	@RequestMapping("/albums")
	public String albumList(){
		return "albums";
	}
	
	@RequestMapping("/album/1")
	public String albumDetail(){
		return "albumDetail";
	}
}
