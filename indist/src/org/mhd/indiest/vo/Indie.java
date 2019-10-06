package org.mhd.indiest.vo;

import java.sql.Date;
import java.sql.Timestamp;

public class Indie {
	private int no, typeNo, repGenre;
	private String profile, coverImg, subtitle, pageNotice, name;
	private Timestamp regDate;
	private Date debut;
	
	//my페이지 추가
	private int likes, concerts, albums;
	private String genre;

	public Indie() {
		// TODO Auto-generated constructor stub
	}
	
	public int getLikes() {
		return likes;
	}

	public void setLikes(int likes) {
		this.likes = likes;
	}

	public int getConcerts() {
		return concerts;
	}

	public void setConcerts(int concerts) {
		this.concerts = concerts;
	}

	public int getAlbums() {
		return albums;
	}

	public void setAlbums(int albums) {
		this.albums = albums;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getTypeNo() {
		return typeNo;
	}

	public void setTypeNo(int typeNo) {
		this.typeNo = typeNo;
	}

	public int getRepGenre() {
		return repGenre;
	}

	public void setRepGenre(int repGenre) {
		this.repGenre = repGenre;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public String getCoverImg() {
		return coverImg;
	}

	public void setCoverImg(String coverImg) {
		this.coverImg = coverImg;
	}

	public String getSubtitle() {
		return subtitle;
	}

	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}

	public String getPageNotice() {
		return pageNotice;
	}

	public void setPageNotice(String pageNotice) {
		this.pageNotice = pageNotice;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Timestamp getRegDate() {
		return regDate;
	}

	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}

	public Date getDebut() {
		return debut;
	}

	public void setDebut(Date debut) {
		this.debut = debut;
	}
	
	
}
