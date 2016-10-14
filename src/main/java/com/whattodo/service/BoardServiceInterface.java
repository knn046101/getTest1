package com.whattodo.service;

import java.util.List;

import com.whattodo.dto.Board;
import com.whattodo.dto.BoardReply;
import com.whattodo.dto.BoardsFollows;
import com.whattodo.dto.BoardsGoods;

public interface BoardServiceInterface {
	public int insertBoard(Board board);
	public int updateBoard(Board board);
	public void updateBoardScrap(int boardNo);
	public void deleteBoard(int boardNo);
	public void updateBoardClick(int boardNo);
	public void updateBoardGood(int boardNo);
	public List<Board> selectAllBoard();
	public Board selectBoardbyBoardNo(int boardNo);
	public List<Board> selectBoardByLocation(String location);
	public List<Board> selectBoardByNumberOfPeople(String NumberOfPeople);
	public List<Board> selectBoardByCategory(String Category);
	public List<Board> selectBoardByLocationAndNumberOfPeople(String location, String NumberOfPeople);
	public List<Board> selectBoardByLocationAndCategory(String location, String category);
	public List<Board> selectBoardByNumberOfPeopleAndCategory(String NumberOfPeople, String category);
	public List<Board> selectBoardByLocationAndNumberOfPeopleAndCategory(String location, String NumberOfPeople, String category);
	public List<Board> selectBoardByEditor();
	public List<Board> selectBoardByFollow(String id);
	public BoardsFollows selectboardFollowsByIdAndBoardNo(String id, int boardNo);
	public BoardsGoods selectboardGoodsByIdAndBoardNo(String id, int boardNo);
	public List<Board> selectBoardByGood(String id);
	public int insertBoardFollow(int boardNo, String id);
	public List<Board> selectBoardByGoodMainBest();
	
	public void deleteBoardFollow(int boardNo);
	public void deleteBoardFollow(String id);
	public int insertBoardGood(int boardNo, String id);
	public void deleteBoardGood(int boardNo);
	public void deleteBoardGood(String id);
	
	public void insertBoardReply(BoardReply boardReply);
	public void updateBoardReply(BoardReply boardReply);
	public void deleteBoardReply(int boardReplyNo);
	public List<BoardReply> selectBoardReply(int boardNo);
}
