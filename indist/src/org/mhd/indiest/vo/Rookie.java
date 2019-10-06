package org.mhd.indiest.vo;

import java.sql.Timestamp;

public class Rookie {
	private int no, typeNo, repGenre;
	private String profile, name, subtitle, coverImg, pageNotice;
	private Timestamp regDate;
	
	
	//마이페이지 추가
	private int video, music, likes;
	private String genre, join;

	
	public Rookie() {
		// TODO Auto-generated constructor stub
	}
	
	public int getVideo() {
		return video;
	}

	public void setVideo(int video) {
		this.video = video;
	}

	public int getMusic() {
		return music;
	}

	public void setMusic(int music) {
		this.music = music;
	}

	public int getLikes() {
		return likes;
	}

	public void setLikes(int likes) {
		this.likes = likes;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSubtitle() {
		return subtitle;
	}

	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}

	public String getCoverImg() {
		return coverImg;
	}

	public void setCoverImg(String coverImg) {
		this.coverImg = coverImg;
	}

	public String getPageNotice() {
		return pageNotice;
	}

	public void setPageNotice(String pageNotice) {
		this.pageNotice = pageNotice;
	}

	public Timestamp getRegDate() {
		return regDate;
	}

	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}

	public String getJoin() {
		return join;
	}

	public void setJoin(String join) {
		this.join = join;
	}
}
