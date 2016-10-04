package com.whattodo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whattodo.dto.Board;
import com.whattodo.dto.BoardReply;
import com.whattodo.repo.BoardReplyRepo;
import com.whattodo.repo.BoardRepo;

@Service
public class BoardService implements BoardServiceInterface{

	@Autowired
	BoardRepo brepo;
	BoardReplyRepo brrepo;
	
	public void insertBoard(Board board) {
		brepo.insertBoard(board);
	}

	public void updateBoard(Board board) {
		brepo.updateBoard(board);
	}

	public void deleteBoard(int boardNo) {
		brepo.deleteBoard(boardNo);
		brrepo.deleteBoardReplyByBoardNo(boardNo);
	}

	public List<Board> selectAllBoard() {
		return brepo.selectAllBoard();
	}

	public List<Board> selectBoardByLocation(String location) {
		return brepo.selectBoardByLocation(location);
	}

	public List<Board> selectBoardByNumberOfPeople(String NumberOfPeople) {
		return brepo.selectBoardByNumberOfPeople(NumberOfPeople);
	}

	public List<Board> selectBoardByCategory(String Category) {
		return brepo.selectBoardByCategory(Category);
	}

	public List<Board> selectBoardByLocationAndNumberOfPeople(String location, String NumberOfPeople) {
		return brepo.selectBoardByLocationAndNumberOfPeople(location, NumberOfPeople);
	}

	public List<Board> selectBoardByLocationAndCategory(String location, String category) {
		return brepo.selectBoardByLocationAndCategory(location, category);
	}

	public List<Board> selectBoardByNumberOfPeopleAndCategory(String NumberOfPeople, String category) {
		return brepo.selectBoardByNumberOfPeopleAndCategory(NumberOfPeople, category);
	}

	public List<Board> selectBoardByLocationAndNumberOfPeopleAndCategory(String location, String NumberOfPeople,
			String category) {
		return brepo.selectBoardByLocationAndNumberOfPeopleAndCategory(location, NumberOfPeople, category);
	}

	public List<Board> selectBoardByEditor() {
		return brepo.selectBoardByEditor();
	}

	public List<Board> selectBoardByFollow(String id) {
		return brepo.selectBoardByFollow(id);
	}

	public void insertBoardFollow(int boardNo, String id) {
		brepo.insertBoardFollow(boardNo, id);
	}

	public void deleteBoardFollow(int boardNo) {
		brepo.deleteBoardFollow(boardNo);
	}

	public void deleteBoardFollow(String id) {
		brepo.deleteBoardFollow(id);
	}

	public void insertBoardReply(BoardReply boardReply) {
		brrepo.insertBoardReply(boardReply);
	}

	public void updateBoardReply(BoardReply boardReply) {
		brrepo.updateBoardReply(boardReply);
	}

	public void deleteBoardReply(int boardReplyNo) {
		brrepo.deleteBoardReply(boardReplyNo);
	}

	public List<BoardReply> selectBoardReply(int boardNo) {
		return brrepo.selectBoardReply(boardNo);
	}

}
