package com.whattodo.repo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.whattodo.dto.Board;
import com.whattodo.dto.BoardsFollows;
import com.whattodo.dto.BoardsGoods;

@Repository
public class BoardRepoImpl implements BoardRepo {

	@Autowired
	SqlSessionTemplate template;
	
	final private String NAME_SPACE="whattodo.dao.BoardMapper."; 	
	
	public int insertBoard(Board board) {
		String statement=NAME_SPACE+"insertBoard";
		return template.insert(statement, board);
	}

	public int updateBoard(Board board) {
		String statement=NAME_SPACE+"updateBoard";
		return template.update(statement, board);
	}

	public int deleteBoard(int boardNo) {
		String statement=NAME_SPACE+"deleteBoard";
		return template.delete(statement, boardNo);
	}
	
	public int updateBoardScrap(int boardNo){
		String statement=NAME_SPACE+"updateBoardScrap";
		return template.update(statement, boardNo);
	}
	
	public int updateBoardClick(int boardNo){
		String statement=NAME_SPACE+"updateBoardClick";
		return template.update(statement, boardNo);
	}
	
	public int updateBoardGood(int boardNo){
		String statement=NAME_SPACE+"updateBoardGood";
		return template.update(statement, boardNo);
	}

	public List<Board> selectAllBoard() {
		String statement=NAME_SPACE+"selectAllBoard";
		return template.selectList(statement);
	}

	public Board selectBoardbyBoardNo(int boardNo) {
		String statement=NAME_SPACE+"selectBoardbyBoardNo";
		return template.selectOne(statement, boardNo);
	}
	
	public List<Board> selectBoardByLocation(String location) {
		String statement=NAME_SPACE+"selectBoardByLocation";
		return template.selectList(statement, location);
	}

	public List<Board> selectBoardByNumberOfPeople(String numberOfPeople) {
		String statement=NAME_SPACE+"selectBoardByNumberOfPeople";
		return template.selectList(statement, numberOfPeople);
	}

	public List<Board> selectBoardByCategory(String Category) {
		String statement=NAME_SPACE+"selectBoardByCategory";
		return template.selectList(statement, Category);
	}

	public List<Board> selectBoardByWhat(String what){
		String statement=NAME_SPACE+"selectBoardByWhat";
		return template.selectList(statement, what);
	}
	
	public List<Board> selectBoardByLocationAndNumberOfPeople(String location, String numberOfPeople) {
		String statement=NAME_SPACE+"selectBoardByLocationAndNumberOfPeople";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("location", location);
		map.put("numberOfPeople", numberOfPeople);
		return template.selectList(statement, map);
	}

	public List<Board> selectBoardByLocationAndCategory(String location, String category) {
		String statement=NAME_SPACE+"selectBoardByLocationAndCategory";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("location", location);
		map.put("category", category);
		return template.selectList(statement, map);
	}
	
	public List<Board> selectBoardByLocationAndWhat(String location, String what){
		String statement=NAME_SPACE+"selectBoardByLocationAndWhat";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("location", location);
		map.put("what", what);
		return template.selectList(statement, map);
	}

	public List<Board> selectBoardByNumberOfPeopleAndCategory(String numberOfPeople, String category) {
		String statement=NAME_SPACE+"selectBoardByNumberOfPeopleAndCategory";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("numberOfPeople", numberOfPeople);
		map.put("category", category);
		return template.selectList(statement, map);
	}

	public List<Board> selectBoardByNumberOfPeopleAndWhat(String numberOfPeople, String what){
		String statement=NAME_SPACE+"selectBoardByNumberOfPeopleAndWhat";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("numberOfPeople", numberOfPeople);
		map.put("what", what);
		return template.selectList(statement, map);
	}
	
	public List<Board> selectBoardByCategoryAndWhat(String category, String what){
		String statement=NAME_SPACE+"selectBoardByCategoryAndWhat";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("category", category);
		map.put("what", what);
		return template.selectList(statement, map);
	}
	
	public List<Board> selectBoardByLocationAndNumberOfPeopleAndCategory(String location, String numberOfPeople,
			String category) {
		String statement=NAME_SPACE+"selectBoardByLocationAndNumberOfPeopleAndCategory";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("location", location);
		map.put("numberOfPeople", numberOfPeople);
		map.put("category", category);
		return template.selectList(statement, map);
	}

	public List<Board> selectBoardByLocationAndNumberOfPeopleAndWhat(String location, String numberOfPeople, String what){
		String statement=NAME_SPACE+"selectBoardByLocationAndNumberOfPeopleAndWhat";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("location", location);
		map.put("numberOfPeople", numberOfPeople);
		map.put("what", what);
		return template.selectList(statement, map);
	}
	
	public List<Board> selectBoardByLocationAndCategoryAndWhat(String location, String category, String what){
		String statement=NAME_SPACE+"selectBoardByLocationAndCategoryAndWhat";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("location", location);
		map.put("category", category);
		map.put("what", what);
		return template.selectList(statement, map);
	}
	
	public List<Board> selectBoardByNumberOfPeopleAndCategoryAndWhat(String numberOfPeople, String category, String what){
		String statement=NAME_SPACE+"selectBoardByNumberOfPeopleAndCategoryAndWhat";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("numberOfPeople", numberOfPeople);
		map.put("category", category);
		map.put("what", what);
		return template.selectList(statement, map);
	}
	
	public List<Board> selectBoardByLoactionAndNumberOfPeopleAndCategoryAndWhat(String location, String numberOfPeople, String category, String what){
		String statement=NAME_SPACE+"selectBoardByLoactionAndNumberOfPeopleAndCategoryAndWhat";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("location", location);
		map.put("numberOfPeople", numberOfPeople);
		map.put("category", category);
		map.put("what", what);
		return template.selectList(statement, map);
	}
	
	public List<Board> selectBoardByCapitalAndCity(String capital, String city){
		String statement=NAME_SPACE+"selectBoardByCapitalAndCity";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("capital", capital);
		map.put("city", city);
		return template.selectList(statement, map);
	}
	
	public List<Board> selectBoardByEditor(){
		String statement=NAME_SPACE+"selectBoardByEditor";
		return template.selectList(statement);
	}

	public List<Board> selectboardMyBoardsMain(String id){
		String statement=NAME_SPACE+"selectboardMyBoardsMain";
		return template.selectList(statement, id);
	}
	
	public List<Board> selectBoardByFollow(String id){
		String statement=NAME_SPACE+"selectBoardByFollow";
		return template.selectList(statement, id);
	}
	
	public List<Board> selectBoardByGood(String id){
		String statement=NAME_SPACE+"selectBoardByGood";
		return template.selectList(statement, id);
	}
	
	public List<Board> getBoardByAdmin(){
		String statement=NAME_SPACE+"getBoardByAdmin";
		return template.selectList(statement);
	}
	
	public List<Board> getBoardByAdminSearchUser(String user){
		String statement=NAME_SPACE+"getBoardByAdminSearchUser";
		return template.selectList(statement, user);
	}
	
	public List<Board> getBoardByAdminSearchBoardNo(int boardNo){
		String statement=NAME_SPACE+"getBoardByAdminSearchBoardNo";
		return template.selectList(statement, boardNo);
	}
	
	public List<Board> getBoardByAdminSearchTitle(String boardTitle){
		String statement=NAME_SPACE+"getBoardByAdminSearchTitle";
		return template.selectList(statement, boardTitle);
	}
	
	public List<Board> selectMyBoardsById(String id){
		String statement=NAME_SPACE+"selectMyBoardsById";
		return template.selectList(statement, id);
	}
	
	public int insertBoardFollow(int boardNo, String id) {
		String statement=NAME_SPACE+"insertBoardFollow";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("boardNo", boardNo);
		map.put("id", id);
		return template.insert(statement, map);
	}

	public int deleteBoardFollow(int boardNo) {
		String statement=NAME_SPACE+"deleteBoardFollowByBoardNo";
		return template.insert(statement, boardNo);
	}

	public int deleteBoardFollow(String id) {
		String statement=NAME_SPACE+"deleteBoardFollowById";
		return template.insert(statement, id);
	}
	
	public int insertBoardGood(int boardNo, String id){
		String statement=NAME_SPACE+"insertBoardGood";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("boardNo", boardNo);
		map.put("id", id);
		return template.insert(statement, map);
	}
	
	public int deleteBoardGood(int boardNo){
		String statement=NAME_SPACE+"deleteBoardGoodByBoardNo";
		return template.insert(statement, boardNo);
	}
	
	public int deleteBoardGood(String id){
		String statement=NAME_SPACE+"deleteBoardGoodById";
		return template.insert(statement, id);
	}

	public BoardsFollows selectboardFollowsByIdAndBoardNo(String id, int boardNo) {
		String statement=NAME_SPACE+"selectboardFollowsByIdAndBoardNo";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("boardNo", boardNo);
		map.put("id", id);
		return template.selectOne(statement, map);
	}
	
	public BoardsGoods selectboardGoodsByIdAndBoardNo(String id, int boardNo){
		String statement=NAME_SPACE+"selectboardGoodsByIdAndBoardNo";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("boardNo", boardNo);
		map.put("id", id);
		return template.selectOne(statement, map);
	}

	public List<Board> selectBoardByGoodMainBest() {
		String statement=NAME_SPACE+"selectBoardByGoodMainBest";
		return template.selectList(statement);
	}

	public List<Board> selectBoardByMainEditor() {
		String statement=NAME_SPACE+"selectBoardByMainEditor";
		return template.selectList(statement);
	}
	
	public int countBoard(){
		String statement = NAME_SPACE+"countBoard";
		return template.selectOne(statement);
	}
	
}
