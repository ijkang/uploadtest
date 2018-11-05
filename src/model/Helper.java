package model;

import java.sql.Date;

public class Helper {
	public int getMnum() {
		return mnum;
	}
	public void setMnum(int mnum) {
		this.mnum = mnum;
	}
	public int getSnum() {
		return snum;
	}
	public void setSnum(int snum) {
		this.snum = snum;
	}
	public int getWnum() {
		return wnum;
	}
	public void setWnum(int wnum) {
		this.wnum = wnum;
	}
	public Date getHelpdate() {
		return helpdate;
	}
	public void setHelpdate(Date helpdate) {
		this.helpdate = helpdate;
	}
	public String getSendcheck() {
		return sendcheck;
	}
	public void setSendcheck(String sendcheck) {
		this.sendcheck = sendcheck;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	private int mnum;
	private int snum;
	private int wnum;
	private Date helpdate;
	private String sendcheck;
	private String context;

}
