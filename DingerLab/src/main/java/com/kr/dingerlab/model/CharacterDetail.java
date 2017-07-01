package com.kr.dingerlab.model;

import java.io.Serializable;

public class CharacterDetail implements Serializable{

	private int cd_cId;
	private String cdName;
	private String cdTop1;
	private String cdTop2;
	private String cdSubTitle;
	private String cdDescription;
	private String cdYoutubeUrl;
	
	public CharacterDetail(){}

	public CharacterDetail(int cd_cId, String cdName, String cdTop1, String cdTop2, String cdSubTitle,
			String cdDescription, String cdYoutubeUrl) {
		super();
		this.cd_cId = cd_cId;
		this.cdName = cdName;
		this.cdTop1 = cdTop1;
		this.cdTop2 = cdTop2;
		this.cdSubTitle = cdSubTitle;
		this.cdDescription = cdDescription;
		this.cdYoutubeUrl = cdYoutubeUrl;
	}

	public int getCd_cId() {
		return cd_cId;
	}

	public void setCd_cId(int cd_cId) {
		this.cd_cId = cd_cId;
	}

	public String getCdName() {
		return cdName;
	}

	public void setCdName(String cdName) {
		this.cdName = cdName;
	}

	public String getCdTop1() {
		return cdTop1;
	}

	public void setCdTop1(String cdTop1) {
		this.cdTop1 = cdTop1;
	}

	public String getCdTop2() {
		return cdTop2;
	}

	public void setCdTop2(String cdTop2) {
		this.cdTop2 = cdTop2;
	}

	public String getCdSubTitle() {
		return cdSubTitle;
	}

	public void setCdSubTitle(String cdSubTitle) {
		this.cdSubTitle = cdSubTitle;
	}

	public String getCdDescription() {
		return cdDescription;
	}

	public void setCdDescription(String cdDescription) {
		this.cdDescription = cdDescription;
	}

	public String getCdYoutubeUrl() {
		return cdYoutubeUrl;
	}

	public void setCdYoutubeUrl(String cdYoutubeUrl) {
		this.cdYoutubeUrl = cdYoutubeUrl;
	}

	@Override
	public String toString() {
		return "CharacterDetail [cd_cId=" + cd_cId + ", cdName=" + cdName + ", cdTop1=" + cdTop1 + ", cdTop2=" + cdTop2
				+ ", cdSubTitle=" + cdSubTitle + ", cdDescription=" + cdDescription + ", cdYoutubeUrl=" + cdYoutubeUrl
				+ "]\n";
	}
	
	
}
