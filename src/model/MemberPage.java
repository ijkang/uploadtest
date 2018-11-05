package model;

public class MemberPage {
	private int startRow;
	private int endRow;
	public int getIntCond() {
		return intCond;
	}
	public void setIntCond(int intCond) {
		this.intCond = intCond;
	}
	public String getStringCond() {
		return stringCond;
	}
	public void setStringCond(String stringCond) {
		this.stringCond = stringCond;
	}
	private int intCond;
	private String stringCond;
	
	public int getStartRow() {
		return startRow;
	}
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
	public int getEndRow() {
		return endRow;
	}
	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}

}
