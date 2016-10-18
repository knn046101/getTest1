


package com.whattodo.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.google.gson.Gson;
import com.whattodo.dto.Admin;
import com.whattodo.dto.City;
import com.whattodo.dto.Member;
import com.whattodo.service.MemberService;
import com.whattodo.service.RegionService;

@Controller
@SessionAttributes({"member"})
public class MemberController {

	private static Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	MemberService ms;
	@Autowired
	RegionService rs;
	
	@InitBinder
	public void setEssentialFields(WebDataBinder binder){
		binder.setRequiredFields("id", "email", "pass", "nickname", "birth", "answer");
		logger.trace("바인더");
	}
	
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public String setSimpleUserInfo(Model model){
		Member member = new Member();
		model.addAttribute("member",member);
		return "/join/join";
	}
	
	@RequestMapping(value="/mypageUpdate", method=RequestMethod.GET)
	public String mypageInfo(Model model){
		Member member = new Member();
		model.addAttribute("member",member);
		return "/mypage/mypage_member_update";
	}
	
	@RequestMapping(value="/checkId", method=RequestMethod.POST,
			produces="application/text;charset=UTF-8")  
	public @ResponseBody String checkId(Model model, HttpServletRequest request){
		String id=request.getParameter("id");
		String message;
		Member member=ms.getMemberById(id);
		
		if(id.equals("")){
			message="아이디를 입력하여주십시오.";
		}else if(member==null){
			message="등록 가능한 아이디입니다.";
		}else{
			message="이미 등록되어 있는 아이디입니다.";
		}
		return message; // 사용할 뷰의 이름 리턴 
	}
	
	@RequestMapping(value="/checkEmail", method=RequestMethod.POST,
			produces="application/text;charset=UTF-8")  
	public @ResponseBody String checkEmail(Model model, HttpServletRequest request){
		String email=request.getParameter("email");
		Member member = ms.getMemberByEmail(email);
		String message;
		if(email.equals("")){
			message="이메일을 입력하여주십시오.";
		}else if(email.contains("@") && member==null){
			message="등록 가능한 이메일입니다.";
		}else if(email.contains("@") && member!=null){
			message="이미 등록되어 있는 이메일입니다.";
		}else{
			message="이메일 형식에는 @가 포함되어 있어야 합니다.";
		}
		return message; // 사용할 뷰의 이름 리턴 
	}
	
	@RequestMapping(value="/checkNickname", method=RequestMethod.POST,
			produces="application/text;charset=UTF-8") 
	public @ResponseBody String checkNickname(Model model, HttpServletRequest request){
		String nickname=request.getParameter("nickname");
		String message;
		Member member=ms.getMemberByNickname(nickname);
		
		if(nickname.equals("")){
			message="닉네임을 입력하여주십시오.";
		}else if(member==null){
			message="등록 가능한 닉네임입니다.";
		}else{
			message="이미 등록되어 있는 닉네임입니다.";
		}
		return message; // 사용할 뷰의 이름 리턴 
	}
	
	@RequestMapping(value="/changeCapital", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8") 
	public @ResponseBody String changeCapital(Model model, HttpServletRequest request){
		String selectCapital=request.getParameter("sel1");
		
		List<City> city=rs.getCity(selectCapital);
		Gson gson = new Gson();
		String citystr = "[";
		for(int i=0; i<city.size(); i++){
			if(i==city.size()-1){
				citystr+=gson.toJson(city.get(i));
				break;
			}
			citystr+=gson.toJson(city.get(i))+",";
		}
		citystr+="]";
		return citystr; // 사용할 뷰의 이름 리턴 
	}
	
	@RequestMapping(value="/addUser", method=RequestMethod.POST)  
	public String addUser(Model model, Member member, BindingResult result){
		if(result.hasErrors()){
			return "join/join";
		}
		logger.trace(member.getProfileImg());
		if(member.getId().trim().equals("") && member.getPass().trim().equals("")
				&& member.getNickname().trim().equals("") && member.getEmail().equals("")
				&& member.getRegion().trim().equals("") && member.getBirth().trim().equals("")
				&& member.getQuestion().trim().equals("") && member.getAnswer().trim().equals("")){
			model.addAttribute("member",member);
			return "join/join";
		}
		ms.insertMember(member);
		return "join/join_after"; // 사용할 뷰의 이름 리턴 
	}
	
	@RequestMapping(value="/updateUser", method=RequestMethod.POST)  
	public String updateUser(Model model, Member member, BindingResult result){
		if(result.hasErrors()){
			return "mypage/mypage_member_update";
		}
		if(member.getId().trim().equals("") && member.getPass().trim().equals("")
				&& member.getNickname().trim().equals("") && member.getEmail().equals("")
				&& member.getRegion().trim().equals("") && member.getBirth().trim().equals("")
				&& member.getQuestion().trim().equals("") && member.getAnswer().trim().equals("")){
			model.addAttribute("member",member);
			return "mypage/mypage_member_update";
		}
		ms.updateMember(member);
		return "mypage/mypage_main"; // 사용할 뷰의 이름 리턴 
	}
	
	@RequestMapping(value="/delUser", method=RequestMethod.POST)  
	public String delUser(@RequestParam String id,Model model, Member member, BindingResult result){
		ms.deleteMember(id);
		return "mypage/join_after"; // 사용할 뷰의 이름 리턴 
	}
	
	@RequestMapping(value="/setCustomer", method=RequestMethod.POST)  
	public @ResponseBody String setCustomer(Model model, HttpServletRequest request){
		String id=request.getParameter("id");
		ms.setCustomer(id);
		
		List<Member> members= ms.getMemberByDivisionEditor();
		String memberstr = "[";
		Gson gson = new Gson();
		for(int i=0; i<members.size(); i++){
			if(i==members.size()-1){
				memberstr+=gson.toJson(members.get(i));
				break;
			}
			memberstr+=gson.toJson(members.get(i))+",";
		}
		memberstr+="]";
		
		return memberstr; // 사용할 뷰의 이름 리턴 
	}
	
	@RequestMapping(value="/getCustomer", method=RequestMethod.POST,
			produces="application/text;charset=UTF-8")  
	public @ResponseBody String getCustomer(Model model, Member member, BindingResult result){
		List<Member> members= ms.getMemberByDivisionCustomer();
		String memberstr = "[";
		Gson gson = new Gson();
		for(int i=0; i<members.size(); i++){
			if(i==members.size()-1){
				memberstr+=gson.toJson(members.get(i));
				break;
			}
			memberstr+=gson.toJson(members.get(i))+",";
		}
		memberstr+="]";
		return memberstr; // 사용할 뷰의 이름 리턴 
	}
	
	@RequestMapping(value="/setEditor", method=RequestMethod.POST,
			produces="application/text;charset=UTF-8")  
	public @ResponseBody String setEditor(Model model, HttpServletRequest request){
		String id=request.getParameter("id");
		ms.setEditor(id);
		
		List<Member> members= ms.getMemberByDivisionCustomer();
		String memberstr = "[";
		Gson gson = new Gson();
		for(int i=0; i<members.size(); i++){
			if(i==members.size()-1){
				memberstr+=gson.toJson(members.get(i));
				break;
			}
			memberstr+=gson.toJson(members.get(i))+",";
		}
		memberstr+="]";
		
		return memberstr; // 사용할 뷰의 이름 리턴 
	}
	
	@RequestMapping(value="/getEditor", method=RequestMethod.POST,
			produces="application/text;charset=UTF-8")  
	public @ResponseBody String getEditor(Model model, Member member, BindingResult result){
		List<Member> members= ms.getMemberByDivisionEditor();
		String memberstr = "[";
		Gson gson = new Gson();
		for(int i=0; i<members.size(); i++){
			if(i==members.size()-1){
				memberstr+=gson.toJson(members.get(i));
				break;
			}
			memberstr+=gson.toJson(members.get(i))+",";
		}
		memberstr+="]";
		return memberstr; // 사용할 뷰의 이름 리턴 
	}

	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String checkLogin(Model model, HttpServletRequest request, HttpSession session){
		String id = request.getParameter("inputId");
		String pass = request.getParameter("inputPassword");
		Admin admin = ms.getAdmin(id);
		if(admin!=null){
			if(admin.getPass().equals(pass)){
				session.setAttribute("admin", admin);
				return "mypage/adminpage_main";
			}
		}
		
		Member member = ms.getMemberById(id);
		if(member!=null){
			if(member.getPass().equals(pass)){
				session.setAttribute("login", member);
				return "main";
			}
		}
		model.addAttribute("loginFail", "다시 입력하여주십시오.");
		return "login/login";
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(SessionStatus status, HttpSession session){
		status.setComplete();
		session.removeAttribute("login");
		session.invalidate();
		return "redirect:/main.jsp";
	}
	
	@RequestMapping(value="/findId", method=RequestMethod.POST)  
	public @ResponseBody String findId(@RequestParam String email){ 
		String id= ms.findIdByEmail(email);
		return id; // 사용할 뷰의 이름 리턴 
	}
}
