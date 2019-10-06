package org.mhd.indiest.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mhd.indiest.service.UsersService;
import org.mhd.indiest.vo.Album;
import org.mhd.indiest.vo.Board;
import org.mhd.indiest.vo.Cart;
import org.mhd.indiest.vo.Connection;
import org.mhd.indiest.vo.Indie;
import org.mhd.indiest.vo.Rookie;
import org.mhd.indiest.vo.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;

@Controller
public class MyPageController {
	
	private UsersService usersService;
	
	public void setUsersService(UsersService usersService) {
		this.usersService = usersService;
	}
	
	@RequestMapping(value="/myInfo", method=RequestMethod.GET)
	public String myInfo(Model model, HttpSession session){
		User loginUser = (User)session.getAttribute("loginUser");
		User user = usersService.chooseOneUser(loginUser.getNo());
		model.addAttribute("user", user);
		return "myInfo";
	}//myInfo() end
	
	@RequestMapping(value="/myInfo", method=RequestMethod.PUT)
	public String myInfo(User user){
		user.setProfile("asdf.jpg");
		usersService.updateUser(user);
		return "redirect:/myInfo";
	}//myInfo() update end
	
	@RequestMapping(value="/TPList", method=RequestMethod.GET)
	public String TPList(){
		
		return "TPList";
	}//TPList() end
	
	@RequestMapping(value="/APList", method=RequestMethod.GET)
	public String APList(){
		
		return "APList";
	}//APList() end
	
	@RequestMapping(value="/cart", method=RequestMethod.GET)
	public String cart(Model model, HttpSession session){
		User user = (User)session.getAttribute("loginUser");
		List<Cart> cart = usersService.cartList(user.getNo());
		model.addAttribute("cart", cart);
		return "cart";
	}//cart() end
	
	@RequestMapping(value="/contentLike", method=RequestMethod.GET)
	public String contentLike(Model model, HttpSession session){
		User user = (User)session.getAttribute("loginUser");
		model.addAttribute("contentsLike", usersService.chooseContentLike(user.getNo()));
		return "contentLike";
	}//contentLike() end
	
	@RequestMapping(value="/albumLike", method=RequestMethod.GET)
	public String albumLike(Model model, HttpSession session){
		User user = (User)session.getAttribute("loginUser");
		List<Album> albums = usersService.ChooseLikeAlbum(user.getNo());
		model.addAttribute("albumLike", albums);
		return "albumLike";
	}//albumLike() end
	
	@RequestMapping(value="/indieLike", method=RequestMethod.GET)
	public String indieLike(Model model, HttpSession session){
		User user = (User)session.getAttribute("loginUser");
		List<Indie> indies = usersService.ChooseLikeIndies(user.getNo());
		model.addAttribute("indieLike", indies);
		return "indieLike";
	}//indieLike() end
	
	@RequestMapping(value="/rookieLike", method=RequestMethod.GET)
	public String rookieLike(Model model, HttpSession session){
		User user = (User)session.getAttribute("loginUser");
		List<Rookie> rookies = usersService.ChooseLikeRookies(user.getNo());
		model.addAttribute("rookieLike", rookies);
		return "rookieLike";
	}//rookieLike() end
	
	@RequestMapping(value="/QnA", method=RequestMethod.GET)
	public String QnA(Model model, HttpSession session){
		User user = (User)session.getAttribute("loginUser");
		List<Board> QnA = usersService.ChooseMyQnA(user.getNo());
		model.addAttribute("myQnA", QnA);
		return "QnA";
	}//QnA() end
	
	@RequestMapping(value="/concertReview", method=RequestMethod.GET)
	public String concertReview(){
		
		return "concertReview";
	}//concertReview() end
	
	@RequestMapping(value="/myBand", method=RequestMethod.GET)
	public String myBand(Model model, HttpSession session){
		User user = (User)session.getAttribute("loginUser");
		List<Rookie> MyBand = usersService.ChooseMyBand(user.getNo());
		model.addAttribute("myBand", MyBand);
		return "myBand";
	}//myBand() end
	
	@RequestMapping(value="/uploadImage", method=RequestMethod.POST)
	public String uploadImage(Model model, HttpSession session){
		return "myInfo";
	}//myBand() end
	
	@RequestMapping(value="/session", method=RequestMethod.POST)
	public String login(HttpSession session, User user, RedirectAttributes ra){
		User loginUser = usersService.checkLogin(user);
		if(loginUser==null){
			ra.addFlashAttribute("msg", "아이디나 비밀번호가 틀렸습니다.");
			return "redirect:login";
		}else{
			session.setAttribute("loginUser", loginUser);
			return "redirect:/indie";
		}
	}//login()

	@RequestMapping(value="/session", method=RequestMethod.GET)
	public String logout(HttpSession session){
		session.invalidate();
		return "redirect:index";
	}//logout()
	
	@RequestMapping(value="/searchMember", method=RequestMethod.GET)
	@ResponseBody
	public List<Rookie> searchRookie(String name){
		List<Rookie> list = usersService.searchRookie(name);
		return list;
	}//logout()
	
	@RequestMapping(value="/addMember", method=RequestMethod.POST)
	@ResponseBody
	public boolean addMember(int memNo, int bandNo) {
		Connection connection = new Connection();
		connection.setBandNo(bandNo);
		connection.setMemNo(memNo);
		boolean result = usersService.addMember(connection);
		return result;
	}//addMember end
	
	@RequestMapping(value="/getMembers", method=RequestMethod.GET)
	@ResponseBody
	public List<Rookie> getMembers(int bandNo){
		List<Rookie> list = usersService.searchMyBandMember(bandNo);
		return list;
	}//getMembers end
}
