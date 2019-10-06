package org.mhd.indiest.vo;

import java.sql.Date;
import java.sql.Timestamp;

public class Concert {
	private int no, runningT, repPrice;
	private String title, subTitle, location, address, rc, poster, timeNotice, notice, exp, dang, confirm, showType;
	private Timestamp regDate;
	private Date openDate, closeDate;
	private double ret, lng;
	
	public Concert() {
		// TODO Auto-generated constructor stub
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getRunningT() {
		return runningT;
	}

	public void setRunningT(int runningT) {
		this.runningT = runningT;
	}

	public int getRepPrice() {
		return repPrice;
	}

	public void setRepPrice(int repPrice) {
		this.repPrice = repPrice;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSubTitle() {
		return subTitle;
	}

	public void setSubTitle(String subTitle) {
		this.subTitle = subTitle;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getRc() {
		return rc;
	}

	public void setRc(String rc) {
		this.rc = rc;
	}

	public String getPoster() {
		return poster;
	}

	public void setPoster(String poster) {
		this.poster = poster;
	}

	public String getTimeNotice() {
		return timeNotice;
	}

	public void setTimeNotice(String timeNotice) {
		this.timeNotice = timeNotice;
	}

	public String getNotice() {
		return notice;
	}

	public void setNotice(String notice) {
		this.notice = notice;
	}

	public String getExp() {
		return exp;
	}

	public void setExp(String exp) {
		this.exp = exp;
	}

	public String getDang() {
		return dang;
	}

	public void setDang(String dang) {
		this.dang = dang;
	}

	public String getConfirm() {
		return confirm;
	}

	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}

	public String getShowType() {
		return showType;
	}

	public void setShowType(String showType) {
		this.showType = showType;
	}

	public Timestamp getRegDate() {
		return regDate;
	}

	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}

	public Date getOpenDate() {
		return openDate;
	}

	public void setOpenDate(Date openDate) {
		this.openDate = openDate;
	}

	public Date getCloseDate() {
		return closeDate;
	}

	public void setCloseDate(Date closeDate) {
		this.closeDate = closeDate;
	}

	public double getRet() {
		return ret;
	}

	public void setRet(double ret) {
		this.ret = ret;
	}

	public double getLng() {
		return lng;
	}

	public void setLng(double lng) {
		this.lng = lng;
	}
	
	

}
