package com.whattodo.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Advertisement {
	private Integer adsNo;
	private String adsTitle;
	private String adsImg;
	private String link;
	private String adminId;
	private Integer optionFlag;
	
	
	
	
	
	public Advertisement(String adsTitle, String adsImg, String link, String adminId) {
		super();
		this.adsTitle = adsTitle;
		this.adsImg = adsImg;
		this.link = link;
		this.adminId = adminId;

	}





	public Advertisement(String adsTitle, String adsImg, String link, String adminId, Integer optionFlag) {
		super();
		this.adsTitle = adsTitle;
		this.adsImg = adsImg;
		this.link = link;
		this.adminId = adminId;
		this.optionFlag = optionFlag;
	}





	public Advertisement(Integer adsNo, Integer optionFlag) {
		super();
		this.adsNo = adsNo;
		this.optionFlag = optionFlag;
	}
	
	
	
	

	
}

	

