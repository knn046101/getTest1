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
	public List<Board> selectBoardByNumberOfPeople(String numberOfPeople);
	public List<Board> selectBoardByCategory(String Category);
	public List<Board> selectBoardByWhat(String what);
	
	public List<Board> selectBoardByLocationAndNumberOfPeople(String location, String numberOfPeople);
	public List<Board> selectBoardByLocationAndCategory(String location, String category);
	public List<Board> selectBoardByLocationAndWhat(String location, String what);
	public List<Board> selectBoardByNumberOfPeopleAndCategory(String NumberOfPeople, String category);
	public List<Board> selectBoardByNumberOfPeopleAndWhat(String numberOfPeople, String what);
	public List<Board> selectBoardByCategoryAndWhat(String category, String what);
	
	public List<Board> selectBoardByLocationAndNumberOfPeopleAndCategory(String location, String numberOfPeople, String category);
	public List<Board> selectBoardByLocationAndNumberOfPeopleAndWhat(String location, String numberOfPeople, String what);
	public List<Board> selectBoardByLocationAndCategoryAndWhat(String location, String category, String what);
	public List<Board> selectBoardByNumberOfPeopleAndCategoryAndWhat(String numberOfPeople, String category, String what);
	
	public List<Board> selectBoardByLoactionAndNumberOfPeopleAndCategoryAndWhat(String location, String numberOfPeople, String category, String what);
	
	public List <Board>selectBoardByCapitalAndCity(String capital, String city);
	
	public List<Board> selectBoardByEditor();
	public List<Board> selectBoardByFollow(String id);
	public BoardsFollows selectboardFollowsByIdAndBoardNo(String id, int boardNo);
	public BoardsGoods selectboardGoodsByIdAndBoardNo(String id, int boardNo);
	public List<Board> selectBoardByGood(String id);
	public int insertBoardFollow(int boardNo, String id);
	public List<Board> selectBoardByGoodMainBest();
	public List<Board> selectBoardByMainEditor();
	public List<Board> selectboardMyBoardsMain(String id);
	public List<Board> getBoardByAdmin();
	public List<Board> getBoardByAdminSearchUser(String user);
	public List<Board> getBoardByAdminSearchBoardNo(int boardNo);
	public List<Board> getBoardByAdminSearchTitle(String Title);
	
	public List<Board> selectMyBoardsById(String id);
	
	
	public int deleteBoardFollow(int boardNo);
	public void deleteBoardFollow(String id);
	public int insertBoardGood(int boardNo, String id);
	public int deleteBoardGood(int boardNo);
	public void deleteBoardGood(String id);
	
	public void insertBoardReply(BoardReply boardReply);
	public void updateBoardReply(BoardReply boardReply);
	public int deleteBoardReply(int boardReplyNo);
	public List<BoardReply> selectBoardReply(int boardNo);
	
	public int countBoard();
}
