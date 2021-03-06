package com.whattodo.test;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.notNullValue;
import static org.junit.Assert.assertThat;

import java.util.Date;
import java.util.List;

import org.junit.Before;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.whattodo.config.ApplicationConfig;
import com.whattodo.dto.Admin;
import com.whattodo.dto.Advertisement;
import com.whattodo.dto.Benefit;
import com.whattodo.dto.Board;
import com.whattodo.dto.BoardsFollows;
import com.whattodo.dto.BoardsGoods;
import com.whattodo.dto.City;
import com.whattodo.dto.Meeting;
import com.whattodo.dto.MeetingBoard;
import com.whattodo.dto.MeetingBoardReply;
import com.whattodo.dto.Member;
import com.whattodo.dto.Tokens;
import com.whattodo.repo.AdminRepo;
import com.whattodo.repo.AdvertisementRepo;
import com.whattodo.repo.BenefitRepo;
import com.whattodo.repo.BoardRepo;
import com.whattodo.repo.MeetingBoardReplyRepo;
import com.whattodo.repo.MeetingBoardRepo;
import com.whattodo.repo.MeetingRepo;
import com.whattodo.repo.MemberRepo;
import com.whattodo.repo.NotificationRepo;
import com.whattodo.repo.TokenRepo;
import com.whattodo.service.BoardServiceInterface;
import com.whattodo.service.MeetingService;
import com.whattodo.service.MemberService;
import com.whattodo.service.RegionService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes={ApplicationConfig.class})
public class Test {

	@Autowired
	AdminRepo adminInterface;
	@Autowired
	MemberRepo memberRepo;
	@Autowired
	ApplicationConfig ac;
	@Autowired
	AdvertisementRepo adrepo;
	@Autowired
	BenefitRepo br;
	@Autowired
	MeetingBoardRepo mbr;
	@Autowired
	MeetingRepo mr;
	@Autowired
	MeetingBoardReplyRepo mbrr;
	@Autowired
	BoardRepo boardrepo;
	@Autowired
	TokenRepo tokenrepo;
	
	@Before
	public void setUp() throws Exception {
	}

	@org.junit.Test
	public void ddtest() {
		assertThat(ac, is(notNullValue()));
	}
	@Autowired
	MemberService ms;
	
	
	
	@org.junit.Test
	public void tokeninserttest() {
		Tokens token = new Tokens("123asdas",1);
		
		int result = tokenrepo.addClientToken(token);
		assertThat(result, is(notNullValue()));
		
		
	}
	
	@org.junit.Test
	public void tokenalltest() {
		
		
		List<Tokens> list = tokenrepo.selectAlltokens();
		assertThat(list, is(notNullValue()));
		
		
	}
	
	@org.junit.Test
	public void tokenAllowalltest() {
		
		
		List<Tokens> list = tokenrepo.selectAllowtokens();
		assertThat(list, is(notNullValue()));
		
		
	}
	
	
	@org.junit.Test
	public void tokenupdatetest() {
		Tokens token = new Tokens("123asdas",0);
		
		int result = tokenrepo.updateClientToken(token);
		assertThat(result, is(1));
		
		
	}
	
	
	
	@org.junit.Test
	public void test() {
		Admin admin=ms.getAdmin("admin");
		assertThat(admin, is(notNullValue()));
		assertThat(admin.getPass(), is("admin123!"));
	}
	
	
	
	
	@org.junit.Test
	public void serviceAdminTest() {
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
		member.setId("dong");
		member.setPass("1234");
		member.setNickname("jong");
		member.setEmail("knn046101@naver.com");
		member.setRegion("경기도 광주시");
		member.setBirth("19920328");
		member.setFavorite("운동#헬스");
		member.setProfileImg("/img/path");
		member.setQuestion("출신 고등학교는 ?");
		member.setAnswer("광주중앙고등학교");
		member.setDivision("Editor");
		int result=memberRepo.insertMember(member);
		assertThat(result, is(1));
	}
	
	@org.junit.Test
	public void updateMemberTest() {
		Member member = new Member();
		member.setId("dong");
		member.setPass("1111");
		member.setNickname("jjong");
		member.setRegion("경기도 광주시");
		member.setFavorite("운동#헬스");
		member.setProfileImg("/img/path");
		int result=memberRepo.updateMember(member);
		assertThat(result, is(1));
	}
	
	@Autowired
	MeetingRepo mrepo;
	
	@org.junit.Test
	public void updateMeetingTest() {
		Meeting meeting = new Meeting();
		meeting.setMeetingTitle("예사모");
		meeting.setMeetingContent("예리 사랑 모임");
		meeting.setMeetingKeyword("#예리#예리사랑");
		meeting.setMeetingNo(101);
		meeting.setMeetingImg("이미지");
		meeting.setPlace("경기도,광주시");
		int result= mrepo.updateMeeting(meeting);
		assertThat(result, is(1));
	
	}
	
	@org.junit.Test
	public void insertAds(){
		Advertisement ad = new Advertisement();
		ad.setAdsTitle("팔로우");
		ad.setAdsImg("/link");
		ad.setLink("link");
		ad.setAdminId("admin");
		int result=adrepo.insertAd(ad);
		assertThat(result, is(1));
	}
	
	@org.junit.Test
	public void deleteAds(){
		int result=adrepo.deleteAd(9);
		assertThat(result, is(1));
	}
	
	@org.junit.Test
	
	public void selectgoodmainbesttest(){
		List<Board> result=boardrepo.selectBoardByGoodMainBest();
		assertThat(result, is(notNullValue()));
	}
	
	@org.junit.Test
	public void selectAllAdvertisement(){
		java.util.List <Advertisement> list = adrepo.selectAllAdvertisement();
		assertThat(list.size(), is(1));
	}
	
	@org.junit.Test
	public void selectAdvertisement(){
		List <Advertisement> list = adrepo.selectAdvertisement();
		assertThat(list, notNullValue());
	}
	
	@org.junit.Test
	public void updateAd(){
		Advertisement ad = new Advertisement();
		ad.setAdsNo(25);
		ad.setAdsTitle("mid");
		ad.setAdsImg("img");
		ad.setLink("link");
		ad.setAdminId("admin");
		ad.setOptionFlag(1);
		int result = adrepo.updateAd(ad);
		assertThat(result, is(1));
	}
	
	@org.junit.Test
	public void insertBenefit(){
		Benefit benefit = new Benefit();
		benefit.setBenefitNo("DS-1");
		benefit.setBenefitTitle("밥주떼여");
		benefit.setStartDate(new Date());
		benefit.setEndDate(new Date());
		benefit.setPlace("장소");
		benefit.setAdminId("admin");
		int result=br.insertBenifit(benefit);
		assertThat(result, is(1));
	}
	
	@org.junit.Test
	public void insertMembersBenefit(){
		int result=br.insertMembersBenefit("DS-1", "jong");
		assertThat(result, is(1));
	}
	
	@org.junit.Test
	public void selectBenefitByMemberId(){
		List <Benefit> benefits=br.selectBenefitByMemberId("jong");
		assertThat(benefits.size(), is(1));
	}
	
	@org.junit.Test
	public void insertMeeting(){
		Meeting meeting = new Meeting();
		meeting.setMeetingTitle("제목");
		meeting.setMeetingContent("내용");
		meeting.setMeetingKeyword("키워드");
		meeting.setMeetingImg("이미지");
		meeting.setId("knn046101");
		meeting.setPlace("jong");
		int result=mr.insertMeeting(meeting);
		assertThat(result, is(1));
	}
	
	@org.junit.Test
	public void insertMeetingBoard(){
		MeetingBoard meetingBoard = new MeetingBoard();
		meetingBoard.setMeetingBoardTitle("까메오");
		meetingBoard.setMeetingBoardContent("쑤ㅠ바랑");
		meetingBoard.setMeetingNo(1);
		meetingBoard.setId("jong");
		int result=mbr.insertMeetingBoard(meetingBoard);
		assertThat(result, is(1));
	}
	@Autowired
	MeetingService mss;
	@org.junit.Test
	public void deleteMeetingBoard(){
		mss.deleteMeeting(63);
	}

	@org.junit.Test
	public void insertMeetingBoardReplys(){
		MeetingBoardReply meetingBoardReply = new MeetingBoardReply();
		meetingBoardReply.setMeetingBoardReplyContent("제목");
		meetingBoardReply.setMeetingBoardReplyDate(new Date());
		meetingBoardReply.setMeetingBoardNo(1);
		meetingBoardReply.setId("jong");
		int result=mbrr.insertMeetingBoardReply(meetingBoardReply);
		assertThat(result, is(1));
	}
	
	
	
	@org.junit.Test
	public void insertBoard(){
		Board board = new Board();
		board.setBoardTitle("에디터 게시글 Test");
		board.setBoardContent("내용쭈르르르르");
		board.setLocation("경기도 광주시");
		board.setNumberOfPeople("혼자서");
		board.setWhat("밥도둑#개그#쌍쌍바");
		board.setCategory("먹거리");
		board.setId("knn046101");
		board.setMainImg("mainImg경로");
		int result=boardrepo.insertBoard(board);
		assertThat(result, is(1));
	}
	
	@org.junit.Test
	public void updateBoard(){
		Board board = new Board();
		board.setBoardNo(2);
		board.setBoardTitle("에디터 게시글 Test");
		board.setBoardContent("내용 변경 Test");
		board.setLocation("경기도 광주시");
		board.setNumberOfPeople("혼자서");
		board.setWhat("밥도둑#개그#쌍쌍바");
		board.setCategory("먹거리");
		board.setId("hong");
		board.setMainImg("mainImg경로");
		int result=boardrepo.updateBoard(board);
		assertThat(result, is(1));
	}
	
	@org.junit.Test
	public void deleteBoard(){
		int result = boardrepo.deleteBoard(1);
		assertThat(result, is(1));
	}
	
	@org.junit.Test
	public void selectAllBoard(){
		List<Board> boards = boardrepo.selectAllBoard();
		System.out.println(boards);
		assertThat(boards, is(notNullValue()));
	}
	
	@org.junit.Test
	public void selectBoardByEditor(){
		List<Board> boards = boardrepo.selectBoardByEditor();
		System.out.println(boards);
		assertThat(boards, is(notNullValue()));
	}
	
	@Autowired
	RegionService rs;
	
	@org.junit.Test
	public void getRegion(){
		List<City> city = rs.getCity("강원도");
		System.out.println(city);
	}
	
	@Autowired
	BoardServiceInterface bsi;
	@org.junit.Test
	public void getBoardsFollows(){
		BoardsFollows bf = bsi.selectboardFollowsByIdAndBoardNo("knn046101", 85);
		assertThat(bf, is(notNullValue()));
	}
	
	@org.junit.Test
	public void updateBoardScrap(){
		int result=boardrepo.updateBoardScrap(92);
		assertThat(result, is(1));
	}
	
	@org.junit.Test
	public void selectboardGoodsByIdAndBoardNo(){
		BoardsGoods bg=boardrepo.selectboardGoodsByIdAndBoardNo("test2", 83);
		assertThat(bg, is(notNullValue()));
	}
	
	@org.junit.Test
	public void selectBoardByLocation(){
		List<Board> boards=boardrepo.selectBoardByLocation("통영");
		assertThat(boards, is(notNullValue()));
	}
	
	@org.junit.Test
	public void selectBoardByCapitalAndCity(){
		List<Board> boards=boardrepo.selectBoardByCapitalAndCity("충청남도","천안시");
		assertThat(boards, is(notNullValue()));
	}
	
	@Autowired
	NotificationRepo nrepo;
	
	@org.junit.Test
	public void NotificationRepo(){
		int result=nrepo.deleteNoti(4);
		assertThat(result, is(1));
	}
}

