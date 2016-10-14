package com.whattodo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whattodo.dto.Board;
import com.whattodo.dto.BoardReply;
import com.whattodo.dto.BoardsFollows;
import com.whattodo.dto.BoardsGoods;
import com.whattodo.repo.BoardReplyRepo;
import com.whattodo.repo.BoardRepo;

@Service
public class BoardService implements BoardServiceInterface{

	@Autowired
	BoardRepo brepo;
	@Autowired
	BoardReplyRepo brrepo;
	
	public int insertBoard(Board board) {
		return brepo.insertBoard(board);
	}

	public int updateBoard(Board board) {
		return brepo.updateBoard(board);
	}

	public void updateBoardScrap(int boardNo){
		brepo.updateBoardScrap(boardNo);
	}
	
	public void deleteBoard(int boardNo) {
		brrepo.deleteBoardReplyByBoardNo(boardNo);
		brepo.deleteBoard(boardNo);
	}
	
	public void updateBoardClick(int boardNo){
		brepo.updateBoardClick(boardNo);
	}
	
	public void updateBoardGood(int boardNo){
		brepo.updateBoardGood(boardNo);
	}

	public List<Board> selectAllBoard() {
		return brepo.selectAllBoard();
	}

	public Board selectBoardbyBoardNo(int boardNo) {
		return brepo.selectBoardbyBoardNo(boardNo);
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
	
	public List<Board> selectBoardByGood(String id){
		return brepo.selectBoardByGood(id);
	}

	public int insertBoardFollow(int boardNo, String id) {
		return brepo.insertBoardFollow(boardNo, id);
	}

	public void deleteBoardFollow(int boardNo) {
		brepo.deleteBoardFollow(boardNo);
	}

	public void deleteBoardFollow(String id) {
		brepo.deleteBoardFollow(id);
	}
	
	public int insertBoardGood(int boardNo, String id){
		return brepo.insertBoardGood(boardNo, id);
	}
	
	public void deleteBoardGood(int boardNo){
		brepo.deleteBoardGood(boardNo);
	}
	
	public void deleteBoardGood(String id){
		brepo.deleteBoardGood(id);
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

	public BoardsFollows selectboardFollowsByIdAndBoardNo(String id, int boardNo) {
		return brepo.selectboardFollowsByIdAndBoardNo(id, boardNo);
	}
	
	public BoardsGoods selectboardGoodsByIdAndBoardNo(String id, int boardNo){
		return brepo.selectboardGoodsByIdAndBoardNo(id, boardNo);
	}

}
