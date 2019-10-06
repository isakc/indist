package org.mhd.indiest.vo;

import java.sql.Timestamp;

public class TicketLink {
	private int no, conNo;
	private String conLink, conLinkName;
	private Timestamp regDate;
	
	public TicketLink() {
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

	public String getConLink() {
		return conLink;
	}

	public void setConLink(String conLink) {
		this.conLink = conLink;
	}

	public String getConLinkName() {
		return conLinkName;
	}

	public void setConLinkName(String conLinkName) {
		this.conLinkName = conLinkName;
	}

	public Timestamp getRegDate() {
		return regDate;
	}

	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}
	
	
}
