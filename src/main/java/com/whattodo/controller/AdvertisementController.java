package com.whattodo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.whattodo.dto.Advertisement;
import com.whattodo.service.AdvertisementService;

@Controller

public class AdvertisementController {

	private static Logger logger = LoggerFactory.getLogger(AdvertisementController.class);

	@Autowired
	AdvertisementService as;
	
	@InitBinder
	public void setEssentialFields(WebDataBinder binder){
		binder.setRequiredFields("adsNo","adsTitle", "adsImg", "link", "adminId");
		logger.trace("바인더");
	}
	@RequestMapping(value="/adv",method=RequestMethod.POST)
	public String advRegister(Model model){
		Advertisement advertisement = new Advertisement();
		model.addAttribute("advertisement",advertisement);
		return "mypage/adminpage_adv";
		
	}
	
	@RequestMapping(value="/insertAd", method=RequestMethod.POST,
	         produces="application/text;charset=UTF-8")
	   public @ResponseBody String insertAd(Model model, HttpServletRequest request){
	      String adsTitle=request.getParameter("adsTitle");
	      String adsImg=request.getParameter("adsImg");
	      String link=request.getParameter("link");
	      String adminId=request.getParameter("adminId");

	      logger.trace(adsTitle);
	      logger.trace(adsImg);
	      logger.trace(link);
	      logger.trace(adminId);
	      
	      Advertisement ad = new Advertisement(adsTitle, adsImg, link, adminId);
	      int result=as.insertAd(ad);
	      if(result==1){
	         return "저장";
	      }else{
	         return "실패";
	      }
	   }
	
	
	/*데이터를 가져오기*/
	@RequestMapping(value="/loadingAd", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String loadAdvertisement(Model model, HttpServletResponse response) throws IOException{
	
		List<Advertisement> list = as.selectAllAdvertisement();
		
		Gson gson = new Gson();
		
		String jsonType = gson.toJson(list);
		
		/*response.getWriter().print(jsonType);
*/		
		return jsonType;		 
		
			
		}
	
	@RequestMapping(value="/uploadAd", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String uploadAdvertisement(Model model, HttpServletRequest request,HttpServletResponse response) throws IOException{
		Gson gson = new Gson();
		String adsNoint=request.getParameter("adsNo");
		int adsNo = Integer.parseInt(adsNoint);
		
		int optionFlag = 1;//켜짐
		
		Advertisement ad = new Advertisement(adsNo, optionFlag);
		as.updateAd(ad);
		String val =adsNoint+"regi";
	
		
		return val;
		
			
		}
	
	
	
	@RequestMapping(value="/stopAd", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String stopAdvertisement(Model model, HttpServletRequest request,HttpServletResponse response) throws IOException{
	
		String adsNoint=request.getParameter("adsNo");
		int adsNo = Integer.parseInt(adsNoint);
		
		int optionFlag = 0;//꺼짐
		
		Advertisement ad = new Advertisement(adsNo, optionFlag);
		 as.updateAd(ad);
		
		 String val =adsNoint+"stop";
		 
		return val;
		
			
		}
	
	
	@RequestMapping(value="/delAd", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String delAdvertisement(Model model, HttpServletRequest request,HttpServletResponse response) throws IOException{
	
		String adsNoint=request.getParameter("adsNo");
		int adsNo = Integer.parseInt(adsNoint);
		
		 as.deleteAd(adsNo);
		String result = "삭제되었습니다";
		return result;
		
			
		}
	
	
	
	
	
	
	
	
	/*데이터를 가져오기*/
	@RequestMapping(value="/optionAd", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String optionAdvertisement(Model model, HttpServletResponse response) throws IOException{
	
		List<Advertisement> list = as.selectAdvertisement();
		
		Gson gson = new Gson();
		
		String jsonType = gson.toJson(list);
		
		
	
		return jsonType;		 
		
			
		}
	
	
	
	
	
	}
	

	
	
	
	
	
	
	
	
	

