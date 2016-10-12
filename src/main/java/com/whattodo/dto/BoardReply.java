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
	private int page;
	private int recordNum;
	
	public BoardReply(String boardReplyContent, Integer boardNo, String id) {
		super();
		this.boardReplyContent = boardReplyContent;
		this.boardNo = boardNo;
		this.id = id;
	}

	public BoardReply(Integer boardReplyNo, String boardReplyContent, Date boardReplyDate, Integer boardNo, String id) {
		super();
		this.boardReplyNo = boardReplyNo;
		this.boardReplyContent = boardReplyContent;
		this.boardReplyDate = boardReplyDate;
		this.boardNo = boardNo;
		this.id = id;
	}

	
}
