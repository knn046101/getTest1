package com.whattodo.test;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.notNullValue;
import static org.junit.Assert.assertThat;

import org.junit.Before;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.whattodo.config.ApplicationConfig;
import com.whattodo.dto.Admin;
import com.whattodo.dto.Member;
import com.whattodo.repo.AdminRepo;
import com.whattodo.repo.MemberRepo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes={ApplicationConfig.class})
public class Test {

	@Autowired
	AdminRepo adminInterface;
	@Autowired
	MemberRepo memberRepo;
	@Autowired
	ApplicationConfig ac;
	
	@Before
	public void setUp() throws Exception {
	}

	@org.junit.Test
	public void ddtest() {
		assertThat(ac, is(notNullValue()));
	}
	
	@org.junit.Test
	public void test() {
		Admin admin=adminInterface.getAdmin("admin");
		assertThat(admin, is(notNullValue()));
		assertThat(admin.getPass(), is("1234"));
	}
	
	@org.junit.Test
	public void memeberTest() {
		Member member=memberRepo.getMemberById("jong");
		assertThat(member, is(notNullValue()));
		assertThat(member.getPass(), is("1234"));
	}

	@org.junit.Test
	public void deletememeberTest() {
		int result=memberRepo.deleteMember("jong");
		assertThat(result, is(1));
	}
	
	@org.junit.Test
	public void insertMemberTest() {
		Member member = new Member();
		member.setId("jong");
		member.setPass("1234");
		member.setNickName("jjong");
		member.setEmail("knn046101@naver.com");
		member.setRegion("경기도 광주시");
		member.setBirth("19920328");
		member.setFavorite("운동#헬스");
		member.setProfileImg("/img/path");
		member.setQuestion("출신 고등학교는 ?");
		member.setAnswer("광주중앙고등학교");
		int result=memberRepo.insertMember(member);
		assertThat(result, is(1));
	}
	
	@org.junit.Test
	public void updateMemberTest() {
		Member member = new Member();
		member.setId("jong");
		member.setPass("1111");
		member.setNickName("jjong");
		member.setEmail("knn046101@naver.com");
		member.setRegion("경기도 광주시");
		member.setBirth("19920328");
		member.setFavorite("운동#헬스");
		member.setProfileImg("/img/path");
		member.setQuestion("출신 고등학교는 ?");
		member.setAnswer("광주중앙고등학교");
		int result=memberRepo.updateMember(member);
		assertThat(result, is(1));
	}
}
