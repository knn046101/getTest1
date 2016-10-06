package com.whattodo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;
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
		logger.trace("city : {}", city);
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
		logger.trace("member : {}", member);
		ms.insertMember(member);
		return "main"; // 사용할 뷰의 이름 리턴 
	}
}
