package com.whattodo.controller;

import java.net.URI;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.whattodo.dto.Tokens;
import com.whattodo.service.TokenInterface;

@RestController
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



	@RequestMapping(value = "/sendByToken", method = RequestMethod.POST)
	public void sendByToken(HttpServletRequest request) throws JsonProcessingException {
		logger.trace("send called");
		RestTemplate template = new RestTemplate();
		URI url = URI.create(SERVER);
        		
		//내용 전달
		String body =request.getParameter("content");
		//제목 전달
		String title = request.getParameter("title");
		//링크 전달
		String tag = request.getParameter("taglink");
		
		Map<String, String> notification = new HashMap<String, String>();
		notification.put("body", body);
		notification.put("title", title);
		notification.put("icon", "R.mipmap.ic_tab_whattodo");
		notification.put("tag", tag);

		/*Map<String, String> data = new HashMap<String, String>();
		data.put("Nick", "BBQ");
		data.put("Room", "7시 까지 치킨이 무료");*/

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("notification", notification);
		/*params.put("data", data);*/

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
			
	}
	
	
	
	
	
	
	@RequestMapping(value = "/sendByStudentToken", method = RequestMethod.POST)
	public void sendByStudentToken(HttpServletRequest request) throws JsonProcessingException {
		logger.trace("send called");
		RestTemplate template = new RestTemplate();
		URI url = URI.create(SERVER);
        		
		//내용 전달
		String body =request.getParameter("content");
		//제목 전달
		String title = request.getParameter("title");
		//링크 전달
		String tag = request.getParameter("taglink");
		
		Map<String, String> notification = new HashMap<String, String>();
		notification.put("body", body);
		notification.put("title", title);
		notification.put("icon", "R.mipmap.ic_tab_whattodo");
		notification.put("tag", tag);

		/*Map<String, String> data = new HashMap<String, String>();
		data.put("Nick", "BBQ");
		data.put("Room", "7시 까지 치킨이 무료");*/

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("notification", notification);
		/*params.put("data", data);*/

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
	public void sendByBizToken(HttpServletRequest request) throws JsonProcessingException {
		logger.trace("send called");
		RestTemplate template = new RestTemplate();
		URI url = URI.create(SERVER);
        		
		//내용 전달
		String body =request.getParameter("content");
		//제목 전달
		String title = request.getParameter("title");
		//링크 전달
		String tag = request.getParameter("taglink");
		
		Map<String, String> notification = new HashMap<String, String>();
		notification.put("body", body);
		notification.put("title", title);
		notification.put("icon", "R.mipmap.ic_tab_whattodo");
		notification.put("tag", tag);

		/*Map<String, String> data = new HashMap<String, String>();
		data.put("Nick", "BBQ");
		data.put("Room", "7시 까지 치킨이 무료");*/

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("notification", notification);
		/*params.put("data", data);*/

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
	public void sendByEtcToken(HttpServletRequest request) throws JsonProcessingException {
		logger.trace("send called");
		RestTemplate template = new RestTemplate();
		URI url = URI.create(SERVER);
        		
		//내용 전달
		String body =request.getParameter("content");
		//제목 전달
		String title = request.getParameter("title");
		//링크 전달
		String tag = request.getParameter("taglink");
		
		Map<String, String> notification = new HashMap<String, String>();
		notification.put("body", body);
		notification.put("title", title);
		notification.put("icon", "R.mipmap.ic_tab_whattodo");
		notification.put("tag", tag);

		/*Map<String, String> data = new HashMap<String, String>();
		data.put("Nick", "BBQ");
		data.put("Room", "7시 까지 치킨이 무료");*/

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("notification", notification);
		/*params.put("data", data);*/

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
	
	
	@RequestMapping(value = "/sendByAllToken", method = RequestMethod.POST)
	public void sendByAllToken(HttpServletRequest request) throws JsonProcessingException {
		logger.trace("send called");
		RestTemplate template = new RestTemplate();
		URI url = URI.create(SERVER);
        		
		//내용 전달
		String body =request.getParameter("content");
		//제목 전달
		String title = request.getParameter("title");
		//링크 전달
		String tag = request.getParameter("taglink");
		
		Map<String, String> notification = new HashMap<String, String>();
		notification.put("body", body);
		notification.put("title", title);
		notification.put("icon", "R.mipmap.ic_tab_whattodo");
		notification.put("tag", tag);

		/*Map<String, String> data = new HashMap<String, String>();
		data.put("Nick", "BBQ");
		data.put("Room", "7시 까지 치킨이 무료");*/

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("notification", notification);
		/*params.put("data", data);*/

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
	
	
	
	
}