package com.whattodo.repo;

import java.util.List;

import com.whattodo.dto.Member;

public interface MemberRepo {
	public int insertMember(Member member);
	public int updateMember(Member member);
	public int updateMemberEditor(String id);
	public int updatePass(String id, String pass);
	public int deleteMember(String id);
	public Member getMemberById(String id);
	public Member getMemberByEmail(String email);
	public Member getMember(String id, String email);
	public Member getMember(String id, String question, String answer);
	public Member getMemberByNickname(String nickname);
	
	public int setEditor(String id);
	public int setCustomer(String id);
	public List<Member> getMemberByDivisionCustomer();
	public List<Member> getMemberByDivisionEditor();
	public String findIdbyEmail(String email);
	
	public int countUser();
}
