package com.whattodo.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Member {
	private String id;
	private String pass;
	private String nickName;
	private String email;
	private String region;
	private String birth;
	private String favorite;
	private String profileImg;
	private String question;
	private String answer;
	private String division;
}
