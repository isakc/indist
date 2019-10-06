package org.mhd.indiest.vo;

import java.sql.Timestamp;

public class Ticketing {
	private int no, condNo, userNo;
	private String seatType;
	private Timestamp regDate;
	
	public Ticketing() {
		// TODO Auto-generated constructor stub
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getCondNo() {
		return condNo;
	}

	public void setCondNo(int condNo) {
		this.condNo = condNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getSeatType() {
		return seatType;
	}

	public void setSeatType(String seatType) {
		this.seatType = seatType;
	}

	public Timestamp getRegDate() {
		return regDate;
	}

	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}
	
}
