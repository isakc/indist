package org.mhd.indiest.vo;

import java.sql.Timestamp;

public class Song {
	private int no, indieNo, albumNo;
	private String title, songFile;
	private Timestamp regDate;
	
	public Song() {
		// TODO Auto-generated constructor stub
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getIndieNo() {
		return indieNo;
	}

	public void setIndieNo(int indieNo) {
		this.indieNo = indieNo;
	}

	public int getAlbumNo() {
		return albumNo;
	}

	public void setAlbumNo(int albumNo) {
		this.albumNo = albumNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSongFile() {
		return songFile;
	}

	public void setSongFile(String songFile) {
		this.songFile = songFile;
	}

	public Timestamp getRegDate() {
		return regDate;
	}

	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}
	
	
}
