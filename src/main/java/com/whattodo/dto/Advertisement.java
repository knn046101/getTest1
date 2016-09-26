package com.whattodo.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Advertisement {
	private int adsNo;
	private String adsTitle;
	private String adsImg;
	private String link;
	private String admin_id;
	
}
