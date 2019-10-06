package org.mhd.indiest.vo;

import java.sql.Timestamp;

public class RookieContent {
	private int no, hit, typeNo, rookieNo, genreNo;
	private String contentFile, coverImg, title, contents, lyrics;
	private Timestamp regDate;
	
	//MyPage 새롭게 추가
	private String rookieName, genre, rookieImg;
	private int replies, contentLike, rookieLike;

	public RookieContent() {
		// TODO Auto-generated constructor stub
	}

	public String getRookieName() {
		return rookieName;
	}

	public void setRookieName(String rookieName) {
		this.rookieName = rookieName;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getRookieImg() {
		return rookieImg;
	}



	public void setRookieImg(String rookieImg) {
		this.rookieImg = rookieImg;
	}
	

	public int getContentLike() {
		return contentLike;
	}

	public void setContentLike(int contentLike) {
		this.contentLike = contentLike;
	}

	public int getRookieLike() {
		return rookieLike;
	}

	public void setRookieLike(int rookieLike) {
		this.rookieLike = rookieLike;
	}

	public int getReplies() {
		return replies;
	}

	public void setReplies(int replies) {
		this.replies = replies;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public int getTypeNo() {
		return typeNo;
	}

	public void setTypeNo(int typeNo) {
		this.typeNo = typeNo;
	}

	public int getRookieNo() {
		return rookieNo;
	}

	public void setRookieNo(int rookieNo) {
		this.rookieNo = rookieNo;
	}

	public int getGenreNo() {
		return genreNo;
	}

	public void setGenreNo(int genreNo) {
		this.genreNo = genreNo;
	}

	public String getContentFile() {
		return contentFile;
	}

	public void setContentFile(String contentFile) {
		this.contentFile = contentFile;
	}

	public String getCoverImg() {
		return coverImg;
	}

	public void setCoverImg(String coverImg) {
		this.coverImg = coverImg;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getLyrics() {
		return lyrics;
	}

	public void setLyrics(String lyrics) {
		this.lyrics = lyrics;
	}

	public Timestamp getRegDate() {
		return regDate;
	}

	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}
}
