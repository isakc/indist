package org.mhd.indiest.service;

import java.util.List;

import org.mhd.indiest.dao.UsersDAO;
import org.mhd.indiest.vo.Album;
import org.mhd.indiest.vo.Board;
import org.mhd.indiest.vo.Cart;
import org.mhd.indiest.vo.Connection;
import org.mhd.indiest.vo.Indie;
import org.mhd.indiest.vo.Rookie;
import org.mhd.indiest.vo.RookieContent;
import org.mhd.indiest.vo.User;
import org.springframework.transaction.annotation.Transactional;

public class UsersServiceImpl implements UsersService {

	private UsersDAO usersDAO;
	
	public void setUsersDAO(UsersDAO usersDAO) {
		this.usersDAO = usersDAO;
	}

	@Override
	public List<RookieContent> chooseContentLike(int userNo) {
		return usersDAO.selectContentLike(userNo);
	}//chhooseRookieLike end

	@Override
	public User chooseOneUser(int no) {
		return usersDAO.selectOneUser(no);
	}//chooseOneUser end

	@Override
	public boolean updateUser(User user) {
		int result = usersDAO.updateUser(user);
		if(result>0){
			return true;
		}else{
			return false;
		}//if~else end
	}//updateUser end

	@Override
	public List<Cart> cartList(int userNo) {
		return usersDAO.selectCart(userNo);
	}//cartList end

	@Override
	public User checkLogin(User user) {
		return usersDAO.selectLogin(user);
	}//checkLogin end

	@Override
	public List<Album> ChooseLikeAlbum(int userNo) {
		return usersDAO.selectLikeAlbums(userNo);
	}//ChooselikesAlbum end

	@Override
	public List<Indie> ChooseLikeIndies(int userNo) {
		return usersDAO.selectLikeIndies(userNo);
	}//ChooseLikesIndies end

	@Override
	public List<Rookie> ChooseLikeRookies(int userNo) {
		return usersDAO.selectLikeRookies(userNo);
	}//ChooseLikeIndies end

	@Override
	public List<Board> ChooseMyQnA(int userNo) {
		return usersDAO.selectMyQnA(userNo);
	}//ChooseMyQnA end

	@Override
	public List<Rookie> ChooseMyBand(int userNo) {
		return usersDAO.selectMyBand(userNo);
	}//ChooseMyBand end

	@Override
	public List<Rookie> searchRookie(String name) {
		return usersDAO.selectRookieByQuery(name);
	}//searchRookie end

	@Transactional
	@Override
	public boolean addMember(Connection connection) {
		int result = usersDAO.addMember(connection.getMemNo());
		int result2 = usersDAO.addBandMember(connection);
		if(result>0 && result2>0){
			return true;
		}else{
			return false;
		}//if~ else end
	}//addMember end

	@Override
	public List<Rookie> searchMyBandMember(int bandNo) {
		return usersDAO.selectMyBandMember(bandNo);
	}//searchMyBandMember end
}
