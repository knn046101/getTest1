package com.whattodo.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Board {
	private Integer boardNo;
	private String boardTitle;
	private String boardContent;
	private Date writeDate;
	private String location;
	private String numberOfPeople;
	private String what;
	private String category;
	private String boardKeyword;
	private Integer click;
	private Integer good;
	private Integer scrap;
	private String mainImg;
	
	private String id;
}
