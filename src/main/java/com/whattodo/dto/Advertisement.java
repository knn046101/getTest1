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
	
	
	
	
	
	public Advertisement(String adsTitle, String adsImg, String link, String adminId) {
		super();
		this.adsTitle = adsTitle;
		this.adsImg = adsImg;
		this.link = link;
		this.adminId = adminId;

	}
}

	

