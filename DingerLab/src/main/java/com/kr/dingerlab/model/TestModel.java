package com.kr.dingerlab.model;


public class TestModel {
	private int sId;
	private String stext;
	public int getsId() {
		return sId;
	}
	public void setsId(int sId) {
		this.sId = sId;
	}
	public String getStext() {
		return stext;
	}
	public void setStext(String stext) {
		this.stext = stext;
	}
	
	@Override
	public String toString() {
		return "TestModel [sId=" + sId + ", stext=" + stext + "]\n";
	}
	
	
}
