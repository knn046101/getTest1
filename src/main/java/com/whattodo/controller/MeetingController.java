package com.whattodo.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.whattodo.service.MeetingService;

@Controller
public class MeetingController {
	private static Logger logger = LoggerFactory.getLogger(MeetingController.class);
	
	@Autowired
	MeetingService ms;
	
	
}
