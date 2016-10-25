package com.whattodo.repo;

import java.util.List;

import com.whattodo.dto.Member;

public interface MemberRepo {
	public int insertMember(Member member);
	public int updateMember(Member member);
	public int updateMemberEditor(String id);
	public int deleteMember(String id);
	public Member getMemberById(String id);
	public Member getMemberByEmail(String email);
	public Member getMemberByNickname(String nickname);
	
	public int setEditor(String id);
	public int setCustomer(String id);
	public List<Member> getMemberByDivisionCustomer();
	public List<Member> getMemberByDivisionEditor();
	public String findIdbyEmail(String email);
	
	public int countUser();
}
