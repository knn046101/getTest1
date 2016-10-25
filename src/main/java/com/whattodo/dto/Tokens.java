package com.whattodo.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Tokens {
	
	private Integer tokenNo;
	private String tokenContent;
	private Integer tokenFlag;
	
	public Tokens(String tokenContent, Integer tokenFlag) {
		super();
		this.tokenContent = tokenContent;
		this.tokenFlag = tokenFlag;
	}

}
