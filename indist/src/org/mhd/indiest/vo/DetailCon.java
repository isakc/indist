package org.mhd.indiest.vo;

import java.sql.Timestamp;

public class DetailCon {
	private int no, conNo;
	private Timestamp concertDate, regDate;
	
	public DetailCon() {
		// TODO Auto-generated constructor stub
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getConNo() {
		return conNo;
	}

	public void setConNo(int conNo) {
		this.conNo = conNo;
	}

	public Timestamp getConcertDate() {
		return concertDate;
	}

	public void setConcertDate(Timestamp concertDate) {
		this.concertDate = concertDate;
	}

	public Timestamp getRegDate() {
		return regDate;
	}

	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}
	
	
}
