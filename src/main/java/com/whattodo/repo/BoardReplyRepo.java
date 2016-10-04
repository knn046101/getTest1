package com.whattodo.repo;

import java.util.List;

import com.whattodo.dto.BoardReply;

public interface BoardReplyRepo {
	public int insertBoardReply(BoardReply boardReply);
	public int updateBoardReply(BoardReply boardReply);
	public int deleteBoardReply(int boardReplyNo);
	public List<BoardReply> selectBoardReply(int boardNo);
}
