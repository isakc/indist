package org.mhd.indiest.dao;

import java.util.List;

import org.mhd.indiest.vo.Album;
import org.mhd.indiest.vo.Board;
import org.mhd.indiest.vo.Cart;
import org.mhd.indiest.vo.Connection;
import org.mhd.indiest.vo.Indie;
import org.mhd.indiest.vo.Rookie;
import org.mhd.indiest.vo.RookieContent;
import org.mhd.indiest.vo.User;

public interface UsersDAO {
	public List<RookieContent> selectContentLike(int userNo);
	public User selectOneUser(int no);
	public int updateUser(User user);
	public List<Cart> selectCart(int userNo);
	public User selectLogin(User user);
	public List<Album> selectLikeAlbums(int userNo);
	public List<Indie> selectLikeIndies(int userNo);
	public List<Rookie> selectLikeRookies(int userNo);
	public List<Board> selectMyQnA(int userNo);
	public List<Rookie> selectMyBand(int userNo);
	public List<Rookie> selectRookieByQuery(String name);
	public int addMember(int no);
	public int addBandMember(Connection connection);
	public List<Rookie> selectMyBandMember(int bandNo);
}
