package com.whattodo.repo;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.whattodo.dto.Member;

@Repository
public class MemberRepoImpl implements MemberRepo {

	@Autowired
	SqlSessionTemplate template;
	
	final private String NAME_SPACE="whattodo.dao.MemberMapper."; 
	
	@Override
	public int insertMember(Member member) {
		String statement = NAME_SPACE+"insertMember";
		return template.insert(statement, member);
	}
	
	@Override
	public int updateMember(Member member) {
		String statement = NAME_SPACE+"updateMember";
		return template.insert(statement, member);
	}

	@Override
	public int deleteMember(String id) {
		String statement = NAME_SPACE+"deleteMemberById";
		return template.insert(statement, id);
	}

	@Override
	public Member getMemberById(String id) {
		String statement = NAME_SPACE+"getMemberById";
		return template.selectOne(statement, id);
	}

}
