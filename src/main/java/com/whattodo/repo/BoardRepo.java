package com.whattodo.repo;

import java.util.List;

import com.whattodo.dto.Board;
import com.whattodo.dto.BoardsFollows;
import com.whattodo.dto.BoardsGoods;

public interface BoardRepo {
	public int insertBoard(Board board);
	public int updateBoard(Board board);
	public int updateBoardScrap(int boardNo);
	public int updateBoardClick(int boardNo);
	public int updateBoardGood(int boardNo);
	public int deleteBoard(int boardNo);
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
	public List<Board> selectBoardByGoodMainBest();
	public List<Board> selectBoardByFollow(String id);
	public BoardsFollows selectboardFollowsByIdAndBoardNo(String id, int boardNo);
	public BoardsGoods selectboardGoodsByIdAndBoardNo(String id, int boardNo);
	public List<Board> selectBoardByGood(String id);
	public int insertBoardFollow(int boardNo, String id);
	public int deleteBoardFollow(int boardNo);
	public int deleteBoardFollow(String id);
	public int insertBoardGood(int boardNo, String id);
	public int deleteBoardGood(int boardNo);
	public int deleteBoardGood(String id);
}
