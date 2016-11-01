package com.whattodo.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Notification {
	private Integer notiNo;
	private Integer notiTarget;
	private String notiTitle;
	private String notiMessage;
	private String link;
	
	public Notification(Integer notiTarget, String notiTitle, String notiMessage, String link){
		super();
		this.notiTarget=notiTarget;
		this.notiTitle=notiTitle;
		this.notiMessage=notiMessage;
		this.link=link;
	}
	
}
