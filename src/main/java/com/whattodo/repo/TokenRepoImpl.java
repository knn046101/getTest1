package com.whattodo.repo;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.whattodo.dto.Tokens;

@Repository
public class TokenRepoImpl implements TokenRepo{

	final private String NAME_SPACE="whattodo.dao.TokenMapper.";
	@Autowired
	SqlSessionTemplate template;
	
	public int addClientToken(Tokens token) {
		// TODO Auto-generated method stub
		String statement = NAME_SPACE+"insertToken";
		return template.insert(statement, token);
		
	}

	public List<Tokens> selectAlltokens() {
		// TODO Auto-generated method stub
		String statement = NAME_SPACE+"selectAlltokens";
		return template.selectList(statement);
	}

	public Tokens selectTokensByTokenContent(String tokenContent){
		String statement = NAME_SPACE+"selectTokensByTokenContent";
		return template.selectOne(statement, tokenContent);
	}
	
	public List<Tokens> selectAllowtokens() {
		
		String statement = NAME_SPACE+"selectAllowtokens";
		return template.selectList(statement);
	}

	public int updateClientToken(Tokens token) {
	
		String statement = NAME_SPACE+"updateTokenFlag";
		return template.update(statement, token);
		
	}

	public List<Tokens> selectStudenttokens() {
		String statement = NAME_SPACE+"selectStudenttokens";
		return template.selectList(statement);
	}

	public List<Tokens> selectBizmantokens() {
		String statement = NAME_SPACE+"selectBizmantokens";
		return template.selectList(statement);
	}

	public List<Tokens> selectEtctokens() {
		String statement = NAME_SPACE+"selectEtctokens";
		return template.selectList(statement);
	}

}
