package com.whattodo.service;

import java.util.List;

import com.whattodo.dto.Admin;
import com.whattodo.dto.Member;

public interface MemberServiceInterface {
	public void insertMember(Member member);
	public void updateMember(Member member);
	public void deleteMember(String id);
	public void updateMemberEditor(String id);
	public int updatePass(String id, String pass);
	public Member getMemberById(String id);
	public Member getMemberByEmail(String email);
	public Member getMember(String id, String email);
	public Member getMember(String id, String question, String answer);
	public Member getMemberByNickname(String nickname);
	
	public Admin getAdmin(String adminId);
	
	public void setEditor(String id);
	public void setCustomer(String id);
	public List<Member> getMemberByDivisionCustomer();
	public List<Member> getMemberByDivisionEditor();
	public String findIdByEmail(String email);
	
	public int countUser();
}
