package com.kr.dingerlab.model;

import java.io.Serializable;

import org.apache.ibatis.type.Alias;

@Alias("CharacterList")
public class CharacterList implements Serializable{

	private int cId;
	private String cName;
	private String cTitle;
	private String cDescription;
	private String cThumb;
	private String cStyle;
	
	public CharacterList(){}

	public CharacterList(int cId, String cName, String cTitle, String cDescription, String cThumb, String cStyle) {
		super();
		this.cId = cId;
		this.cName = cName;
		this.cTitle = cTitle;
		this.cDescription = cDescription;
		this.cThumb = cThumb;
		this.cStyle = cStyle;
	}

	public int getcId() {
		return cId;
	}

	public void setcId(int cId) {
		this.cId = cId;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public String getcTitle() {
		return cTitle;
	}

	public void setcTitle(String cTitle) {
		this.cTitle = cTitle;
	}

	public String getcDescription() {
		return cDescription;
	}

	public void setcDescription(String cDescription) {
		this.cDescription = cDescription;
	}

	public String getcThumb() {
		return cThumb;
	}

	public void setcThumb(String cThumb) {
		this.cThumb = cThumb;
	}

	public String getcStyle() {
		return cStyle;
	}

	public void setcStyle(String cStyle) {
		this.cStyle = cStyle;
	}

	@Override
	public String toString() {
		return "CharacterList [cId=" + cId + ", cName=" + cName + ", cTitle=" + cTitle + ", cDescription="
				+ cDescription + ", cThumb=" + cThumb + ", cStyle=" + cStyle + "]\n";
	}
	
	
	
}
