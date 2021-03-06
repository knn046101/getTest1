package com.whattodo.controller;

import java.io.IOException;
import java.net.URI;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.whattodo.dto.Advertisement;
import com.whattodo.dto.Notification;
import com.whattodo.dto.Tokens;
import com.whattodo.service.NotificationInterface;
import com.whattodo.service.TokenInterface;

@Controller
public class AndroidController {
	private static final Logger logger = LoggerFactory.getLogger(AndroidController.class);

	private final String SERVER = "https://fcm.googleapis.com/fcm/send";
	private final String GROUPING_SERVER = "https://android.googleapis.com/gcm/notification";
	// firebase > project 선택 > 설정 > 클라우드 메시징 > 발실자 ID
	private final String SENDER_ID="328527164429";
	// firebase > project 선택 > 설정 > 클라우드 메시징 > 서버 키(기존 토큰)
	private final String APP_ID = "AIzaSyB_ANxKPBah5ccRuGyoh38aqJWBhjYlkNw";

	@Autowired
	TokenInterface cService;

	@Autowired
	NotificationInterface nService;

	@RequestMapping(value = "/sendByToken", method = RequestMethod.POST)
	public @ResponseBody void sendByToken(HttpServletRequest request) throws JsonProcessingException {
		logger.trace("send called");
		RestTemplate template = new RestTemplate();
		URI url = URI.create(SERVER);
		
	/*	String connlink=null;*/
		
		
		//내용 전달
		String body =request.getParameter("content");
		//제목 전달
		String title = request.getParameter("title");
				
		//링크내용 전달
		String link = request.getParameter("link");
	
		
		/////
		
		Map<String, String> data = new HashMap<String, String>();
		data.put("link", link);
		
		
		Map<String, String> notification = new HashMap<String, String>();
		notification.put("body", body);
		notification.put("title", title);
		notification.put("click_action", "OPEN_MYSITE_ACTICITY");
		
		
			
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("notification", notification);
		params.put("data", data);

		////
		
		// 토큰이 있는 개수만큼 꺼내와서 전송하는 부분
		
		for(int i = 0; i < cService.selectAllowtokens().size(); i++){
			String client = cService.selectAllowtokens().get(i).getTokenContent();
			params.put("to", client);
			ObjectMapper om = new ObjectMapper();
			logger.trace("params : {}", om.writeValueAsString(params));
			RequestEntity<Map<String, Object>> reqEntity = RequestEntity.post(url).header("Authorization", " key=" + APP_ID).contentType(MediaType.APPLICATION_JSON_UTF8).body(params);
			ResponseEntity<HashMap> resEntity = template.exchange(reqEntity, HashMap.class);
			logger.trace("요청 결과 : {}", resEntity.getBody());
		}
		
		
		for(int i = 0; i < cService.selectStudenttokens().size(); i++){
			String client = cService.selectStudenttokens().get(i).getTokenContent();
			params.put("to", client);
			ObjectMapper om = new ObjectMapper();
			logger.trace("params : {}", om.writeValueAsString(params));
			RequestEntity<Map<String, Object>> reqEntity = RequestEntity.post(url).header("Authorization", " key=" + APP_ID).contentType(MediaType.APPLICATION_JSON_UTF8).body(params);
			ResponseEntity<HashMap> resEntity = template.exchange(reqEntity, HashMap.class);
			logger.trace("요청 결과 : {}", resEntity.getBody());
		}
		
		
		for(int i = 0; i < cService.selectBizmantokens().size(); i++){
			String client = cService.selectBizmantokens().get(i).getTokenContent();
			params.put("to", client);
			ObjectMapper om = new ObjectMapper();
			logger.trace("params : {}", om.writeValueAsString(params));
			RequestEntity<Map<String, Object>> reqEntity = RequestEntity.post(url).header("Authorization", " key=" + APP_ID).contentType(MediaType.APPLICATION_JSON_UTF8).body(params);
			ResponseEntity<HashMap> resEntity = template.exchange(reqEntity, HashMap.class);
			logger.trace("요청 결과 : {}", resEntity.getBody());
		}
		
		for(int i = 0; i < cService.selectEtctokens().size(); i++){
			String client = cService.selectEtctokens().get(i).getTokenContent();
			params.put("to", client);
			ObjectMapper om = new ObjectMapper();
			logger.trace("params : {}", om.writeValueAsString(params));
			RequestEntity<Map<String, Object>> reqEntity = RequestEntity.post(url).header("Authorization", " key=" + APP_ID).contentType(MediaType.APPLICATION_JSON_UTF8).body(params);
			ResponseEntity<HashMap> resEntity = template.exchange(reqEntity, HashMap.class);
			logger.trace("요청 결과 : {}", resEntity.getBody());
		}
		
			
	}
	
	
	
	
	
	
	@RequestMapping(value = "/sendByStudentToken", method = RequestMethod.POST)
	public @ResponseBody void sendByStudentToken(HttpServletRequest request) throws JsonProcessingException {
		logger.trace("send called");
		RestTemplate template = new RestTemplate();
		URI url = URI.create(SERVER);
        		
		//내용 전달
		String body =request.getParameter("content");
		//제목 전달
		String title = request.getParameter("title");
		
		//링크내용 전달
		String link = request.getParameter("link");
		
		
	     logger.trace(body);
		
	/////
		
		Map<String, String> data = new HashMap<String, String>();
		data.put("link", link);
				
		Map<String, String> notification = new HashMap<String, String>();
		notification.put("body", body);
		notification.put("title", title);
		notification.put("click_action", "OPEN_MYSITE_ACTICITY");
		
		
			
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("notification", notification);
		params.put("data", data);

		////

		// 토큰이 있는 개수만큼 꺼내와서 전송하는 부분
		
		for(int i = 0; i < cService.selectStudenttokens().size(); i++){
			String client = cService.selectStudenttokens().get(i).getTokenContent();
			params.put("to", client);
			ObjectMapper om = new ObjectMapper();
			logger.trace("params : {}", om.writeValueAsString(params));
			RequestEntity<Map<String, Object>> reqEntity = RequestEntity.post(url).header("Authorization", " key=" + APP_ID).contentType(MediaType.APPLICATION_JSON_UTF8).body(params);
			ResponseEntity<HashMap> resEntity = template.exchange(reqEntity, HashMap.class);
			logger.trace("요청 결과 : {}", resEntity.getBody());
		}
			
	}
	
	
	
	@RequestMapping(value = "/sendByBizToken", method = RequestMethod.POST)
	public @ResponseBody void sendByBizToken(HttpServletRequest request) throws JsonProcessingException {
		logger.trace("send called");
		RestTemplate template = new RestTemplate();
		URI url = URI.create(SERVER);
        		
		//내용 전달
		String body =request.getParameter("content");
		//제목 전달
		String title = request.getParameter("title");
				
		//링크내용 전달
		String link = request.getParameter("link");
		//검색내용 전달
		
	/////
		
		Map<String, String> data = new HashMap<String, String>();
		data.put("link", link);
	
		
	
		
				
		Map<String, String> notification = new HashMap<String, String>();
		notification.put("body", body);
		notification.put("title", title);
		notification.put("click_action", "OPEN_MYSITE_ACTICITY");
		
		
			
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("notification", notification);
		params.put("data", data);

		////

		// 토큰이 있는 개수만큼 꺼내와서 전송하는 부분
		
		for(int i = 0; i < cService.selectBizmantokens().size(); i++){
			String client = cService.selectBizmantokens().get(i).getTokenContent();
			params.put("to", client);
			ObjectMapper om = new ObjectMapper();
			logger.trace("params : {}", om.writeValueAsString(params));
			RequestEntity<Map<String, Object>> reqEntity = RequestEntity.post(url).header("Authorization", " key=" + APP_ID).contentType(MediaType.APPLICATION_JSON_UTF8).body(params);
			ResponseEntity<HashMap> resEntity = template.exchange(reqEntity, HashMap.class);
			logger.trace("요청 결과 : {}", resEntity.getBody());
		}
			
	}
	
	
	@RequestMapping(value = "/sendByEtcToken", method = RequestMethod.POST)
	public @ResponseBody void sendByEtcToken(HttpServletRequest request) throws JsonProcessingException {
		logger.trace("send called");
		RestTemplate template = new RestTemplate();
		URI url = URI.create(SERVER);
        		
		//내용 전달
		String body =request.getParameter("content");
		//제목 전달
		String title = request.getParameter("title");
				
		//링크내용 전달
		String link = request.getParameter("link");
		
	/////
	/////
		
		Map<String, String> data = new HashMap<String, String>();
		data.put("link", link);
	
		
	
		
				
		Map<String, String> notification = new HashMap<String, String>();
		notification.put("body", body);
		notification.put("title", title);
		notification.put("click_action", "OPEN_MYSITE_ACTICITY");
		
		
			
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("notification", notification);
		params.put("data", data);

		////

		// 토큰이 있는 개수만큼 꺼내와서 전송하는 부분
		
		for(int i = 0; i < cService.selectEtctokens().size(); i++){
			String client = cService.selectEtctokens().get(i).getTokenContent();
			params.put("to", client);
			ObjectMapper om = new ObjectMapper();
			logger.trace("params : {}", om.writeValueAsString(params));
			RequestEntity<Map<String, Object>> reqEntity = RequestEntity.post(url).header("Authorization", " key=" + APP_ID).contentType(MediaType.APPLICATION_JSON_UTF8).body(params);
			ResponseEntity<HashMap> resEntity = template.exchange(reqEntity, HashMap.class);
			logger.trace("요청 결과 : {}", resEntity.getBody());
		}
			
	}
	
	
	@RequestMapping(value = "/sendByAllToken", method = RequestMethod.POST)
	public @ResponseBody  void sendByAllToken(HttpServletRequest request) throws JsonProcessingException {
		logger.trace("send called");
		RestTemplate template = new RestTemplate();
		URI url = URI.create(SERVER);
        		
		//내용 전달
		String body =request.getParameter("content");
		//제목 전달
		String title = request.getParameter("title");
				
		//링크내용 전달
		String link = request.getParameter("link");
	
	/////
		
		Map<String, String> data = new HashMap<String, String>();
		data.put("link", link);
		
	
		
				
		Map<String, String> notification = new HashMap<String, String>();
		notification.put("body", body);
		notification.put("title", title);
		notification.put("click_action", "OPEN_MYSITE_ACTICITY");
		
		
			
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("notification", notification);
		params.put("data", data);

		////

		// 토큰이 있는 개수만큼 꺼내와서 전송하는 부분
		
		for(int i = 0; i < cService.selectAlltokens().size(); i++){
			String client = cService.selectAlltokens().get(i).getTokenContent();
			params.put("to", client);
			ObjectMapper om = new ObjectMapper();
			logger.trace("params : {}", om.writeValueAsString(params));
			RequestEntity<Map<String, Object>> reqEntity = RequestEntity.post(url).header("Authorization", " key=" + APP_ID).contentType(MediaType.APPLICATION_JSON_UTF8).body(params);
			ResponseEntity<HashMap> resEntity = template.exchange(reqEntity, HashMap.class);
			logger.trace("요청 결과 : {}", resEntity.getBody());
		}
			
	}
	
	
	
	
	
	@RequestMapping(value = "/token", method = RequestMethod.POST)
	public @ResponseBody Map<String, String> addToken(@RequestBody Map body) throws JsonProcessingException {
		logger.trace("token 수신 완료" + body);

		Tokens token = new Tokens(body.get("token").toString(), 1);
		cService.addClientToken(token);
		
		//받았다고 리턴
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("message", "ok");
		return map;
	}
	
	
	
	
	
	
	
	@RequestMapping(value = "/tokenflag", method = RequestMethod.POST)
	public @ResponseBody Map<String, String> getStudentTokenValue(@RequestBody Map body) throws JsonProcessingException {
		logger.trace("token 수신 완료" + body);
		String tokenvalue = body.get("tokenValue").toString();
		String flagValue = body.get("flag").toString();
		
		int flag =Integer.parseInt(flagValue);
		String resultmsg ="";
		if(flag==0){
			resultmsg ="광고 거절 되었습니다";
		}
		else if(flag==1){
			resultmsg ="광고 수락 되었습니다";
		}
		else if(flag==2){
			resultmsg ="그룹 설정(학생) 되었습니다";
				}
				
		else if(flag==3){
			resultmsg ="그룹 설정(직장인) 되었습니다";
		}
				
		else if(flag==4){
			resultmsg ="그룹 설정(기타) 되었습니다";
		}
			
		/*Tokens token = new Tokens(tokenvalue, 0);*/
		
		Tokens token = new Tokens(tokenvalue, flag);
		
		
		logger.trace("이거다 벨류값:{}",tokenvalue);
		
		cService.updateClientToken(token);
		
		
		//받았다고 리턴
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("message", resultmsg);
		return map;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "/tokenServiceReturn", method = RequestMethod.POST)
	public @ResponseBody Map<String, String> tokenServiceReturn(@RequestBody Map body) throws JsonProcessingException {
		logger.trace("token 수신 완료" + body);
		String tokenvalue = body.get("tokenValue").toString();
		
		Tokens tokenResultReturn = cService.selectTokensByTokenContent(tokenvalue);
		
		int tokenflag = tokenResultReturn.getTokenFlag();
		
		
		String resultmsg ="";
		if(tokenflag==0){
			resultmsg ="광고 거절 상태입니다";
		}
		else if(tokenflag==1){
			resultmsg ="광고 수락 되었습니다";
		}
		else if(tokenflag==2){
			resultmsg ="그룹 설정(학생) 되었습니다";
				}
				
		else if(tokenflag==3){
			resultmsg ="그룹 설정(직장인) 되었습니다";
		}
				
		else if(tokenflag==4){
			resultmsg ="그룹 설정(기타) 되었습니다";
		}
			
		/*Tokens token = new Tokens(tokenvalue, 0);*/
		
		Tokens token = new Tokens(tokenvalue, tokenflag);
		
		
		logger.trace("이거다 벨류값:{}",tokenvalue);
		
		cService.updateClientToken(token);
		
		
		//받았다고 리턴
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("message", resultmsg);
		return map;
	}
	
	
	
	
	
	
	@RequestMapping(value="/loadingNoti", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String loadAdvertisement(Model model, HttpServletResponse response) throws IOException{
		List<Notification> list = nService.selectAllNotification();
		Gson gson = new Gson();
		String jsonType = gson.toJson(list);
		return jsonType;		 
	}
	
	@RequestMapping(value="/insertNoti", method=RequestMethod.POST,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String insertNoti(Model model, HttpServletRequest request){
		String NotiTitle=request.getParameter("notiTitle");
		String NotiContent=request.getParameter("notiContent");
		String link=request.getParameter("link");
		
		String NotiTarget=request.getParameter("notiTarget");
		int target = Integer.parseInt(NotiTarget);

		Notification noti = new Notification(target,NotiTitle,NotiContent,link);
		int result=nService.insertNoti(noti);
		if(result==1){
			return "저장";
		}else{
			return "실패";
		}
	}
	
	@RequestMapping(value="/countNoti", method=RequestMethod.POST,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String countNoti(Model model, HttpServletRequest request,HttpServletResponse response) throws IOException{
		int result1 = nService.countNoti();
		String result=result1+"";
		return result;
	}
	
	
	@RequestMapping(value = "/location", method = RequestMethod.POST)
	public @ResponseBody Map<String, String> locationToken(Model model, @RequestBody Map body , HttpServletRequest request, HttpSession session) throws JsonProcessingException {
		logger.trace("위치 수신 완료" + body);

		
		
		String lat = body.get("lat").toString();
		
		String lng= body.get("lng").toString();
		
		String device = body.get("device").toString();
		
		logger.trace("lat : "+lat);
		logger.trace(lng);
		logger.trace(device);
		
		session.setAttribute("lat", lat);
		request.setAttribute("lng", lng);
		request.setAttribute("device", device);
		//받았다고 리턴
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("message", "위치수신ok");
		return map;
	}
	
	@RequestMapping(value="/delNoti", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String delAdvertisement(Model model, HttpServletRequest request,HttpServletResponse response) throws IOException{
	
		String NotiNo=request.getParameter("notiNo");
		int notiNo = Integer.parseInt(NotiNo);
		logger.trace("notiNo:{}",notiNo);
		nService.deleteNoti(notiNo);
		String result = "삭제되었습니다";
		return result;
		}
	
}