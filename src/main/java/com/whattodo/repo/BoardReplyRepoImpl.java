package com.whattodo.repo;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.whattodo.dto.BoardReply;

@Repository
public class BoardReplyRepoImpl implements BoardReplyRepo {

	final private String NAME_SPACE="whattodo.dao.BoardReplyMapper.";
	
	@Autowired
	SqlSessionTemplate template;
	
	public int insertBoardReply(BoardReply boardReply) {
		String statement = NAME_SPACE+"insertBoardReply";
		return template.insert(statement, boardReply);
	}

	public int updateBoardReply(BoardReply boardReply) {
		String statement = NAME_SPACE+"updateBoardReply";
		return template.update(statement, boardReply);
	}

	public int deleteBoardReply(int boardReplyNo) {
		String statement = NAME_SPACE+"deleteBoardReply";
		return template.delete(statement, boardReplyNo);
	}

	public List<BoardReply> selectBoardReply(int boardNo) {
		String statement = NAME_SPACE+"selectBoardReply";
		return template.selectList(statement, boardNo);
	}

}
