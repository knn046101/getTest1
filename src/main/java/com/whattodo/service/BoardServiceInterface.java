package com.whattodo.service;

import java.util.List;

import com.whattodo.dto.Board;
import com.whattodo.dto.BoardReply;

public interface BoardServiceInterface {
	public void insertBoard(Board board);
	public void updateBoard(Board board);
	public void deleteBoard(int boardNo);
	public List<Board> selectAllBoard();
	public List<Board> selectBoardByLocation(String location);
	public List<Board> selectBoardByNumberOfPeople(String NumberOfPeople);
	public List<Board> selectBoardByCategory(String Category);
	public List<Board> selectBoardByLocationAndNumberOfPeople(String location, String NumberOfPeople);
	public List<Board> selectBoardByLocationAndCategory(String location, String category);
	public List<Board> selectBoardByNumberOfPeopleAndCategory(String NumberOfPeople, String category);
	public List<Board> selectBoardByLocationAndNumberOfPeopleAndCategory(String location, String NumberOfPeople, String category);
	public List<Board> selectBoardByEditor();
	public List<Board> selectBoardByFollow(String id);
	public List<Board> selectBoardByGood(String id);
	public void insertBoardFollow(int boardNo, String id);
	public void deleteBoardFollow(int boardNo);
	public void deleteBoardFollow(String id);
	public void insertBoardGood(int boardNo, String id);
	public void deleteBoardGood(int boardNo);
	public void deleteBoardGood(String id);
	
	public void insertBoardReply(BoardReply boardReply);
	public void updateBoardReply(BoardReply boardReply);
	public void deleteBoardReply(int boardReplyNo);
	public List<BoardReply> selectBoardReply(int boardNo);
}
