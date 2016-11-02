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

	public List<Board> selectBoardByNumberOfPeople(String numberOfPeople) {
		return brepo.selectBoardByNumberOfPeople(numberOfPeople);
	}

	public List<Board> selectBoardByCategory(String Category) {
		return brepo.selectBoardByCategory(Category);
	}

	public List<Board> selectBoardByWhat(String what){
		return brepo.selectBoardByWhat(what);
	}
	
	public List<Board> selectBoardByLocationAndNumberOfPeople(String location, String numberOfPeople) {
		return brepo.selectBoardByLocationAndNumberOfPeople(location, numberOfPeople);
	}

	public List<Board> selectBoardByLocationAndCategory(String location, String category) {
		return brepo.selectBoardByLocationAndCategory(location, category);
	}
	
	public List<Board> selectBoardByLocationAndWhat(String location, String what){
		return brepo.selectBoardByLocationAndWhat(location, what);
	}
	public List<Board> selectBoardByNumberOfPeopleAndCategory(String numberOfPeople, String category) {
		return brepo.selectBoardByNumberOfPeopleAndCategory(numberOfPeople, category);
	}

	public List<Board> selectBoardByNumberOfPeopleAndWhat(String numberOfPeople, String what){
		return brepo.selectBoardByNumberOfPeopleAndWhat(numberOfPeople, what);
	}
	
	public List<Board> selectBoardByCategoryAndWhat(String category, String what){
		return brepo.selectBoardByCategoryAndWhat(category, what);
	}
	
	public List<Board> selectBoardByLocationAndNumberOfPeopleAndCategory(String location, String numberOfPeople, String category) {
		return brepo.selectBoardByLocationAndNumberOfPeopleAndCategory(location, numberOfPeople, category);
	}

	public List<Board> selectBoardByLocationAndNumberOfPeopleAndWhat(String location, String numberOfPeople, String what){
		return brepo.selectBoardByLocationAndNumberOfPeopleAndWhat(location, numberOfPeople, what);
	}
	
	public List<Board> selectBoardByLocationAndCategoryAndWhat(String location, String category, String what){
		return brepo.selectBoardByLocationAndCategoryAndWhat(location, category, what);
	}
	
	public List<Board> selectBoardByNumberOfPeopleAndCategoryAndWhat(String numberOfPeople, String category, String what){
		return brepo.selectBoardByLocationAndCategoryAndWhat(numberOfPeople, category, what);
	}
	
	public List<Board> selectBoardByLoactionAndNumberOfPeopleAndCategoryAndWhat(String location, String numberOfPeople, String category, String what){
		return brepo.selectBoardByLoactionAndNumberOfPeopleAndCategoryAndWhat(location, numberOfPeople, category, what);
	}
	
	public List <Board>selectBoardByCapitalAndCity(String capital, String city){
		return brepo.selectBoardByCapitalAndCity(capital, city);
	}
	
	public List<Board> selectBoardByEditor() {
		return brepo.selectBoardByEditor();
	}

	public List<Board> selectboardMyBoardsMain(String id){
		return brepo.selectboardMyBoardsMain(id);
	}
	
	public List<Board> selectBoardByFollow(String id) {
		return brepo.selectBoardByFollow(id);
	}
	
	public List<Board> selectBoardByGood(String id){
		return brepo.selectBoardByGood(id);
	}
	
	public List<Board> getBoardByAdmin(){
		return brepo.getBoardByAdmin();
	}
	
	public List<Board> getBoardByAdminSearchUser(String user){
		return brepo.getBoardByAdminSearchUser(user);
	}
	
	public List<Board> getBoardByAdminSearchBoardNo(int boardNo){
		return brepo.getBoardByAdminSearchBoardNo(boardNo);
	}
	
	public List<Board> getBoardByAdminSearchTitle(String Title){
		return brepo.getBoardByAdminSearchTitle(Title);
	}
	
	public List<Board> selectBoardByGoodMainBest() {
		return	 brepo.selectBoardByGoodMainBest();
	}
	
	public List<Board> selectBoardByMainEditor(){
		return	 brepo.selectBoardByMainEditor();
	}

	public List<Board> selectMyBoardsById(String id){
		return	 brepo.selectMyBoardsById(id);
	}
	
	public int insertBoardFollow(int boardNo, String id) {
		return brepo.insertBoardFollow(boardNo, id);
	}

	public int deleteBoardFollow(int boardNo) {
		return brepo.deleteBoardFollow(boardNo);
	}

	public void deleteBoardFollow(String id) {
		brepo.deleteBoardFollow(id);
	}
	
	public int insertBoardGood(int boardNo, String id){
		return brepo.insertBoardGood(boardNo, id);
	}
	
	public int deleteBoardGood(int boardNo){
		return brepo.deleteBoardGood(boardNo);
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

	public int deleteBoardReply(int boardReplyNo) {
		return brrepo.deleteBoardReply(boardReplyNo);
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
	
	public int countBoard(){
		return brepo.countBoard();
	}

}
