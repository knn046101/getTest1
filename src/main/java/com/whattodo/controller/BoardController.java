package com.whattodo.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.whattodo.dto.Board;
import com.whattodo.service.BoardService;


@Controller
public class BoardController {

	private static Logger logger = LoggerFactory.getLogger(BoardController.class);
	@Autowired
	BoardService bs;
	 
	@RequestMapping(value="/addBoard", method=RequestMethod.POST,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String BoardContent(Model model, HttpServletRequest request){
		String boardTitle=request.getParameter("boardTitle");
		String boardContent=request.getParameter("boardContent");
		String location=request.getParameter("location");
		String numberOfPeople=request.getParameter("numberOfPeople");
		String what=request.getParameter("what");
		String category=request.getParameter("category");
		String id=request.getParameter("id");
		String mainImg=request.getParameter("mainImg");

		Board board = new Board(boardTitle, boardContent, location, numberOfPeople,
				what, category, mainImg, id);
		logger.trace("데이터 삽입 전 board : {}", board);
		int result=bs.insertBoard(board);
		logger.trace("데이터 삽입 후 result : {}",result);
		if(result==1){
			return "저장";
		}else{
			return "실패";
		}
	}

}
