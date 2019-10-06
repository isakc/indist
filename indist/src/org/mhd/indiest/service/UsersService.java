package org.mhd.indiest.service;

import java.util.List;

import org.mhd.indiest.vo.Album;
import org.mhd.indiest.vo.Board;
import org.mhd.indiest.vo.Cart;
import org.mhd.indiest.vo.Connection;
import org.mhd.indiest.vo.Indie;
import org.mhd.indiest.vo.Rookie;
import org.mhd.indiest.vo.RookieContent;
import org.mhd.indiest.vo.User;

public interface UsersService {
	public List<RookieContent> chooseContentLike(int userNo);
	public User chooseOneUser(int no);
	public boolean updateUser(User user);
	public List<Cart> cartList(int userNo);
	public User checkLogin(User user);
	public List<Album> ChooseLikeAlbum(int userNo);
	public List<Indie> ChooseLikeIndies(int userNo);
	public List<Rookie> ChooseLikeRookies(int userNo);
	public List<Board> ChooseMyQnA(int userNo);
	public List<Rookie> ChooseMyBand(int userNo);
	public List<Rookie> searchRookie(String name);
	public boolean addMember(Connection connection);
	public List<Rookie> searchMyBandMember(int bandNo);
}
