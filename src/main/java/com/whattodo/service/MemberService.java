package com.whattodo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whattodo.dto.Admin;
import com.whattodo.dto.Member;
import com.whattodo.repo.AdminRepo;
import com.whattodo.repo.MemberRepo;

@Service
public class MemberService implements MemberServiceInterface{

	@Autowired
	MemberRepo mrepo;
	@Autowired
	AdminRepo arepo;
	
	public void insertMember(Member member) {
		mrepo.insertMember(member);
	}

	public void updateMember(Member member) {
		mrepo.updateMember(member);
	}
	
	public void updateMemberEditor(String id) {
		mrepo.updateMemberEditor(id);
	}

	public void deleteMember(String id) {
		mrepo.deleteMember(id);
	}

	public Member getMemberById(String id) {
		return mrepo.getMemberById(id);
	}

	public Member getMemberByEmail(String email) {
		return mrepo.getMemberByEmail(email);
	}
	
	public Member getMemberByNickname(String nickname) {
		return mrepo.getMemberByEmail(nickname);
	}
	
	public Admin getAdmin(String adminId) {
		return arepo.getAdmin(adminId);
	}
}
