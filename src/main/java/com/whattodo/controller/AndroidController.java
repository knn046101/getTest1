package com.whattodo.controller;

import java.net.URI;
import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
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



	@RequestMapping(value = "/sendByToken", method = RequestMethod.GET)
	public void sendByToken() throws JsonProcessingException {
		logger.trace("send called");
		RestTemplate template = new RestTemplate();
		URI url = URI.create(SERVER);
        //내용 전달
		String body ="오늘뭐하지 바디";
		//제목 전달
		String title = "제목뭐하지";
		//링크 전달
		String tag = "http://210.125.213.49:9090/WhatToDo/main.jsp";
		
		Map<String, String> notification = new HashMap<String, String>();
		notification.put("body", body);
		notification.put("title", title);
		notification.put("icon", "myicon");
		notification.put("tag", tag);

		Map<String, String> data = new HashMap<String, String>();
		data.put("Nick", "BBQ");
		data.put("Room", "7시 까지 치킨이 무료");

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("notification", notification);
		params.put("data", data);

		
		for(int i = 0; i < cService.selectAllowtokens().size(); i++){
			String client = cService.selectAllowtokens().get(i).getTokenContent();
			params.put("to", client);
			ObjectMapper om = new ObjectMapper();
			logger.trace("params : {}", om.writeValueAsString(params));
			RequestEntity<Map<String, Object>> reqEntity = RequestEntity.post(url).header("Authorization", " key=" + APP_ID).contentType(MediaType.APPLICATION_JSON_UTF8).body(params);
			ResponseEntity<HashMap> resEntity = template.exchange(reqEntity, HashMap.class);
			logger.trace("요청 결과 : {}", resEntity.getBody());
		}
		
		// 토큰이 있는 개수만큼 꺼내와서 전송하는 부분
		
		
		/*for (String client : cService.) {
			params.put("to", client);
			ObjectMapper om = new ObjectMapper();
			logger.trace("params : {}", om.writeValueAsString(params));
			RequestEntity<Map<String, Object>> reqEntity = RequestEntity.post(url).header("Authorization", " key=" + APP_ID).contentType(MediaType.APPLICATION_JSON_UTF8).body(params);
			ResponseEntity<HashMap> resEntity = template.exchange(reqEntity, HashMap.class);
			logger.trace("요청 결과 : {}", resEntity.getBody());
		}*/
	}

	
	/*@RequestMapping(value = "/sendByGroup", method = RequestMethod.GET)
	public void sendByGroup() throws JsonProcessingException {
		logger.trace("send called");
		RestTemplate template = new RestTemplate();
		URI url = URI.create(GROUPING_SERVER);

		Map<String, Object> groupingParam = new HashMap<>();
		groupingParam.put("operation", "create");
		groupingParam.put("notification_key_name", "mygroup"+System.currentTimeMillis());
		groupingParam.put("registration_ids",  cService.getTokens().toArray() );
		
		logger.trace("grouping : {}",  new ObjectMapper().writeValueAsString(groupingParam));
		RequestEntity<Map<String, Object>> reqEntity = RequestEntity.post(url)
				.header("Authorization", " key=" + APP_ID)
				.header("project_id", SENDER_ID)
				.contentType(MediaType.APPLICATION_JSON_UTF8)
				.body(groupingParam);
		
		ResponseEntity<HashMap> resEntity = template.exchange(reqEntity, HashMap.class);

		String notificationKey = resEntity.getBody().get("notification_key").toString();
		logger.trace("notification key: {}", notificationKey);

		Map<String, String> notification = new HashMap<>();
		notification.put("body", "20명까지 한 그룹");
		notification.put("title", "한방에");
		notification.put("icon", "myicon");
		Map<String, Object> params = new HashMap<>();
		params.put("notification", notification);
		params.put("to", notificationKey);

		ObjectMapper om = new ObjectMapper();

		logger.trace("params : {}", om.writeValueAsString(params));
		url = URI.create(SERVER);
		reqEntity = RequestEntity.post(url).header("Authorization", " key=" + APP_ID).contentType(MediaType.APPLICATION_JSON_UTF8).body(params);
		resEntity = template.exchange(reqEntity, HashMap.class);

		logger.trace("요청 결과 : {}", resEntity.getBody());
	}

	
	
	@RequestMapping(value = "/sendByTopic", method = RequestMethod.GET)
	public void sendByTopic() throws JsonProcessingException {
		logger.trace("send called");
		RestTemplate template = new RestTemplate();
		URI url = URI.create(SERVER);

		Map<String, String> notification = new HashMap<>();
		notification.put("body", "새로운 소식을 전합니다.");
		notification.put("title", "News");

		Map<String, Object> params = new HashMap<>();
		params.put("notification", notification);
		// dogs또는 cats를 대상으로 발송할 경우 "condition": "'dogs' in topics || 'cats' in
		// topics",
		params.put("to", "/topics/news");

		ObjectMapper om = new ObjectMapper();

		logger.trace("params : {}", om.writeValueAsString(params));

		RequestEntity<Map<String, Object>> reqEntity = RequestEntity.post(url).header("Authorization", " key=" + APP_ID).contentType(MediaType.APPLICATION_JSON_UTF8).body(params);
		ResponseEntity<HashMap> resEntity = template.exchange(reqEntity, HashMap.class);

		logger.trace("요청 결과 : {}", resEntity.getBody());
	}*/

	
	
	
	
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
	
	
	
	
	
	@RequestMapping(value = "/tokenAllow", method = RequestMethod.POST)
	public @ResponseBody Map<String, String> getAllowTokenValue(@RequestBody Map body) throws JsonProcessingException {
		logger.trace("token 수신 완료" + body);
		String tokenvalue = body.get("tokenValue").toString();
		Tokens token = new Tokens(tokenvalue, 1);
		
		
		logger.trace("이거다 벨류값:{}",tokenvalue);
		
		cService.updateClientToken(token);
		
		
		//받았다고 리턴
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("message", "ok 광고를 시작합니다.");
		return map;
	}

	
	
	
	
	
	@RequestMapping(value = "/tokenDeny", method = RequestMethod.POST)
	public @ResponseBody Map<String, String> getDenyTokenValue(@RequestBody Map body) throws JsonProcessingException {
		logger.trace("token 수신 완료" + body);
		String tokenvalue = body.get("tokenValue").toString();
		Tokens token = new Tokens(tokenvalue, 0);
		
		
		logger.trace("이거다 벨류값:{}",tokenvalue);
		
		cService.updateClientToken(token);
		
		
		//받았다고 리턴
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("message", "ok 광고를 중지합니다.");
		return map;
	}
	
	
	
	
/*	// curl -v -X GET http://localhost:9090/11_rest/api/customer/andy
	@RequestMapping(value = "/customer/{id}", method = RequestMethod.GET)
	@ResponseStatus(HttpStatus.OK)
	public @ResponseBody Customer getCustomer(@PathVariable("id") String id) {
		logger.trace("invoked : {}", id);
		Customer customer = cService.getCustomerDetails(id);
		logger.trace("customer is : {}", customer);
		return cService.getCustomerDetails(id);
	}*/
}