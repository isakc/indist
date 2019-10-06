package org.mhd.indiest.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mhd.indiest.vo.Album;
import org.mhd.indiest.vo.Board;
import org.mhd.indiest.vo.Cart;
import org.mhd.indiest.vo.Connection;
import org.mhd.indiest.vo.Indie;
import org.mhd.indiest.vo.Rookie;
import org.mhd.indiest.vo.RookieContent;
import org.mhd.indiest.vo.User;

public class UsersDAOImpl implements UsersDAO {

	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<RookieContent> selectContentLike(int userNo) {
		return session.selectList("rookiecontents.selectContentsLike", userNo);
	}//selectRookieLike

	@Override
	public User selectOneUser(int no) {
		return session.selectOne("users.selectOneUser", no);
	}//selectOneUser

	@Override
	public int updateUser(User user) {
		return session.update("users.updateUser", user);
	}//updateUser

	@Override
	public List<Cart> selectCart(int userNo) {
		return session.selectList("cart.selectCartList", userNo);
	}//selectCart

	@Override
	public User selectLogin(User user) {
		return session.selectOne("users.selectLogin", user);
	}//selectLogin end

	@Override
	public List<Album> selectLikeAlbums(int userNo) {
		return session.selectList("albums.selectLikeAlbums", userNo);
	}//selectLikesAlbum end

	@Override
	public List<Indie> selectLikeIndies(int userNo) {
		return session.selectList("indies.selectLikeIndies", userNo);
	}//selectLikeIndies end

	@Override
	public List<Rookie> selectLikeRookies(int userNo) {
		return session.selectList("rookies.selectRookiesLike", userNo);
	}//selectLikeRookies end

	@Override
	public List<Board> selectMyQnA(int userNo) {
		return session.selectList("board.selectMyQnA", userNo);
	}//selectMyQnA end

	@Override
	public List<Rookie> selectMyBand(int userNo) {
		return session.selectList("rookies.selectMyBand", userNo);
	}//selectMyBand end

	@Override
	public List<Rookie> selectRookieByQuery(String name) {
		return session.selectList("rookies.selectRookieByQuery", "%"+name+"%");
	}//selectRookieByQuery end

	@Override
	public int addMember(int no) {
		return session.insert("notice.addMember", no);
	}//addMember end

	@Override
	public int addBandMember(Connection connection) {
		return session.insert("connection.addBandMember", connection);
	}

	@Override
	public List<Rookie> selectMyBandMember(int bandNo) {
		return session.selectList("rookies.selectMyBandMember", bandNo);
	}//selectMyBandMember end
}
