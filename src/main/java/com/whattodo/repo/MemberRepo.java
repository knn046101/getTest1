package com.whattodo.repo;

import com.whattodo.dto.Member;

public interface MemberRepo {
	public int insertMember(Member member);
	public int updateMember(Member member);
	public int deleteMember(String id);
	public Member getMemberById(String id);
	public Member getMemberByEmail(String email);
	public Member getMemberByNickname(String nickname);
}
