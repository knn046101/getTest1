package com.whattodo.repo;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.whattodo.dto.Board;

public class BoardRepoImpl implements BoardRepo {

	@Autowired
	SqlSessionTemplate template;
	
	final private String NAME_SPACE="whattodo.dao.BoardMapper."; 	
	
	@Override
	public int insertBoard(Board board) {
		String statement=NAME_SPACE+"insertBoard";
		return template.insert(statement, board);
	}

}
