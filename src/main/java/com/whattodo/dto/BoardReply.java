package com.whattodo.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class BoardReply {
	private Integer boardReplyNo;
	private String boardReplyContent;
	private Date boardReplyDate;
	private Integer boardNo;
	private String id;
}
