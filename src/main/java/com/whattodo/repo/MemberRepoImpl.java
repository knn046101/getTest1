package com.whattodo.repo;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.whattodo.dto.Member;

@Repository
public class MemberRepoImpl implements MemberRepo {

	@Autowired
	SqlSessionTemplate template;
	
	final private String NAME_SPACE="whattodo.dao.MemberMapper."; 
	
	public int insertMember(Member member) {
		String statement = NAME_SPACE+"insertMember";
		return template.insert(statement, member);
	}
	
	public int updateMember(Member member) {
		String statement = NAME_SPACE+"updateMember";
		return template.update(statement, member);
	}

	public int deleteMember(String id) {
		String statement = NAME_SPACE+"deleteMemberById";
		return template.delete(statement, id);
	}

	public Member getMemberById(String id) {
		String statement = NAME_SPACE+"getMemberById";
		return template.selectOne(statement, id);
	}

	public Member getMemberByEmail(String email) {
		String statement = NAME_SPACE+"getMemberByEmail";
		return template.selectOne(statement, email);
	}

	public Member getMemberByNickname(String nickname) {
		String statement = NAME_SPACE+"getMemberByNickname";
		return template.selectOne(statement, nickname);
	}

	public int updateMemberEditor(String id) {
		String statement = NAME_SPACE+"updateMemberEditor";
		return template.update(statement, id);
	}
	
	public int setEditor(String id){
		String statement = NAME_SPACE+"setEditor";
		return template.update(statement, id);
	}
	
	public int setCustomer(String id){
		String statement = NAME_SPACE+"setCustomer";
		return template.update(statement, id);
	}
	
	public List<Member> getMemberByDivisionCustomer(){
		String statement = NAME_SPACE+"selectCustomer";
		return template.selectList(statement);
	}
	
	public List<Member> getMemberByDivisionEditor(){
		String statement = NAME_SPACE+"selectEditor";
		return template.selectList(statement);
	}
	
	public String findIdbyEmail(String email){
		String statement = NAME_SPACE+"findId";
		return template.selectOne(statement,email);
	}
}
