package com.whattodo.service;

import com.whattodo.dto.Admin;
import com.whattodo.dto.Member;

public interface MemberServiceInterface {
	public void insertMember(Member member);
	public void updateMember(Member member);
	public void deleteMember(String id);
	public Member getMemberById(String id);
	
	public Admin getAdmin(String adminId);
}
