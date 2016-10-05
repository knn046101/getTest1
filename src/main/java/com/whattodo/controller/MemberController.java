package com.whattodo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.whattodo.dto.Member;

@Controller
@SessionAttributes({"member"})
public class MemberController {

	@RequestMapping(value="/join", method=RequestMethod.GET)
	public String setSimpleUserInfo(Model model){
		Member member = new Member();
		model.addAttribute("member",member);
		return "/join/join";
	}
	
	@RequestMapping(value="/checkId", method=RequestMethod.POST) // request 사용 ( 조건 : /hello 경로 , get방식 ) 
	public String sayHello(Model model){
		model.addAttribute("message", "Good Morning"); // 전달 데이터 -> 모델로 설정
		model.addAttribute("message2", "Hello");
		return "showMessage"; // 사용할 뷰의 이름 리턴 
	}
	
	@RequestMapping(value="/addUser", method=RequestMethod.POST) // request 사용 ( 조건 : /hello 경로 , get방식 ) 
	public String addUser(Model model, Member member, BindingResult resultl){
		model.addAttribute("message", "Good Morning"); // 전달 데이터 -> 모델로 설정
		model.addAttribute("message2", "Hello");
		return "showMessage"; // 사용할 뷰의 이름 리턴 
	}
}
