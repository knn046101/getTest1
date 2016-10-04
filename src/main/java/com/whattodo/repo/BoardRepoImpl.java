package com.whattodo.repo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.whattodo.dto.Board;

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

	public List<Board> selectAllBoard() {
		String statement=NAME_SPACE+"selectAllBoard";
		return template.selectList(statement);
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

	public List<Board> selectBoardByLocationAndNumberOfPeople(String location, String numberOfPeople) {
		String statement=NAME_SPACE+"selectBoardByLocationAndNumberOfPeople";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("location", location);
		map.put("location", numberOfPeople);
		return template.selectList(statement, map);
	}

	public List<Board> selectBoardByLocationAndCategory(String location, String category) {
		String statement=NAME_SPACE+"selectBoardByLocationAndCategory";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("location", location);
		map.put("category", category);
		return template.selectList(statement, map);
	}

	public List<Board> selectBoardByNumberOfPeopleAndCategory(String numberOfPeople, String category) {
		String statement=NAME_SPACE+"selectBoardByNumberOfPeopleAndCategory";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("numberOfPeople", numberOfPeople);
		map.put("category", category);
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

	public List<Board> selectBoardByEditor(){
		String statement=NAME_SPACE+"selectBoardByEditor";
		return template.selectList(statement);
	}
}
