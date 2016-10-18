package com.whattodo.controller;

import javax.servlet.http.HttpServletRequest;

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

import com.whattodo.dto.Advertisement;
import com.whattodo.service.AdvertisementService;

@Controller
public class AdvertisementController {

	private static Logger logger = LoggerFactory.getLogger(AdvertisementController.class);

	@Autowired
	AdvertisementService as;
	
	@InitBinder
	public void setEssentialFields(WebDataBinder binder){
		binder.setRequiredFields("adsTitle", "adsImg", "link", "adminId");
		logger.trace("바인더");
	}
	
	@RequestMapping(value="/insertAd", method=RequestMethod.POST,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String insertAd(Model model, HttpServletRequest request){
		String adsTitle=request.getParameter("adsTitle");
		String adsImg=request.getParameter("adsImg");
		String link=request.getParameter("link");
		String adminId=request.getParameter("adminId");

		Advertisement ad = new Advertisement(adsTitle, adsImg, link,adminId);
		int result=as.insertAd(ad);
		if(result==1){
			return "저장";
		}else{
			return "실패";
		}
	}
	
}
