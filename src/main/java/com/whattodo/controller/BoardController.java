package com.whattodo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.whattodo.dto.Board;
import com.whattodo.dto.BoardReply;
import com.whattodo.dto.BoardsFollows;
import com.whattodo.dto.BoardsGoods;
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
		int result=bs.insertBoard(board);
		if(result==1){
			return "저장";
		}else{
			return "실패";
		}
	}
	
	@RequestMapping(value="/updateBoard", method=RequestMethod.POST,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String updateBoard(Model model, HttpServletRequest request){
		int boardNo=Integer.parseInt(request.getParameter("boardNo"));
		String boardTitle=request.getParameter("boardTitle");
		String boardContent=request.getParameter("boardContent");
		String location=request.getParameter("location");
		String numberOfPeople=request.getParameter("numberOfPeople");
		String what=request.getParameter("what");
		String category=request.getParameter("category");
		String id=request.getParameter("id");
		String mainImg=request.getParameter("mainImg");

		Board board = new Board(boardNo, boardTitle, boardContent, location, numberOfPeople,
				what, category, mainImg, id);
		int result=bs.updateBoard(board);
		if(result==1){
			return "저장";
		}else{
			return "실패";
		}
	}
	
	@RequestMapping(value="/getGoodBestBoards", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String selectBoardByGoodMainBest(Model model, HttpServletRequest request){
		
		List<Board> board=bs.selectBoardByGoodMainBest();
		
		Gson gson = new Gson();
		String boardGoodBestStr = gson.toJson(board);
		logger.trace(boardGoodBestStr);
		return boardGoodBestStr; // 사용할 뷰의 이름 리턴 
	}
	
	
	
	@RequestMapping(value="/getBoards", method=RequestMethod.GET,
	         produces="application/text;charset=UTF-8")
	   public @ResponseBody String getBoards(Model model, HttpServletRequest request){
	      int page = Integer.parseInt(request.getParameter("pageno"));
	      String category = request.getParameter("category");
	      List<Board> board=bs.selectBoardByCategory(category);
	      List<Board> afterBoard=new ArrayList<Board>();
	      logger.trace("pageNo:{}, category:{}", page, category);
	      int end=(page*16<board.size())? page*16 : board.size();

	      for(int i=16*(page-1); i<end; i++){
	         board.get((page-1)*10).setPage(page);
	         afterBoard.add(board.get(i));
	      }
	      afterBoard.get(0).setRecordNum(board.size());
	      for(int i=0;i<afterBoard.size();i++){
	    	  afterBoard.get(i).setBoardContent("");
	      }
	      
	      Gson gson = new Gson();
	      String boardStr = "[";
	      for(int i=0; i<afterBoard.size(); i++){
	         if(i==afterBoard.size()-1){
	            boardStr+=gson.toJson(afterBoard.get(i));
	            break;
	         }
	         boardStr+=gson.toJson(afterBoard.get(i))+",";
	      }
	      boardStr+="]";
	      return boardStr; // 사용할 뷰의 이름 리턴 
	   }
	
	@RequestMapping(value="/getEditorBoards", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String getEditorBoards(Model model, HttpServletRequest request){
		int page = Integer.parseInt(request.getParameter("pageno"));

		List<Board> board=bs.selectBoardByEditor();
		List<Board> afterBoard=new ArrayList<Board>();

		int end=(page*16<board.size())? page*16 : board.size();
		
		for(int i=16*(page-1); i<end; i++){
				board.get((page-1)*10).setPage(page);
				afterBoard.add(board.get(i));
		}
		afterBoard.get(0).setRecordNum(board.size());
		for(int i=0;i<afterBoard.size();i++){
	    	  afterBoard.get(i).setBoardContent("");
	    }
		
		Gson gson = new Gson();
		String boardStr = "[";
		for(int i=0; i<afterBoard.size(); i++){
			if(i==afterBoard.size()-1){
				boardStr+=gson.toJson(afterBoard.get(i));
				break;
			}
			boardStr+=gson.toJson(afterBoard.get(i))+",";
		}
		boardStr+="]";
		return boardStr; // 사용할 뷰의 이름 리턴 
	}
	
	@RequestMapping(value="/boardReply", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String boardReply(Model model, HttpServletRequest request){
		int page = Integer.parseInt(request.getParameter("pageno"));
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		List<BoardReply> boardReply=bs.selectBoardReply(boardNo);
		List<BoardReply> afterBoardReply=new ArrayList<BoardReply>();
		
		int end=(page*10<boardReply.size())? page*10 : boardReply.size();

		for(int i=(page-1)*10; i<end; i++){
			boardReply.get((page-1)*10).setPage(page);
			afterBoardReply.add(boardReply.get(i));
		}
		afterBoardReply.get(0).setRecordNum(boardReply.size());
		Gson gson = new Gson();
		String boardReplyStr = "[";
		for(int i=0; i<afterBoardReply.size(); i++){
			if(i==afterBoardReply.size()-1){
				boardReplyStr+=gson.toJson(afterBoardReply.get(i));
				break;
			}
			boardReplyStr+=gson.toJson(afterBoardReply.get(i))+",";
		}
		boardReplyStr+="]";
		logger.trace("boardReply:{}",boardReply);
		return boardReplyStr; // 사용할 뷰의 이름 리턴 
	}
	
	@RequestMapping(value="/retrieve", method=RequestMethod.GET)
	public String retrieveBoard(Model model, HttpServletRequest request){
		int boardNo=Integer.parseInt(request.getParameter("boardNo"));
		Board board = bs.selectBoardbyBoardNo(boardNo);
		bs.updateBoardClick(boardNo);
		model.addAttribute("board", board);
		return "board/board_info";
	}
	
	@RequestMapping(value="/addBoardReply", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String addBoardReply(Model model, HttpServletRequest request){
		String id = request.getParameter("id");
		int boardNo=Integer.parseInt(request.getParameter("boardNo"));
		String comments=request.getParameter("comments");
		
		BoardReply boardReply = new BoardReply(comments, boardNo, id);
		bs.insertBoardReply(boardReply);
		Board board = bs.selectBoardbyBoardNo(boardNo);
		List <BoardReply> boardReply2 = bs.selectBoardReply(boardNo);
		model.addAttribute("board", board);
		
		Gson gson = new Gson();
		String boardReplyStr = "[";
		for(int i=0; i<boardReply2.size(); i++){
			if(i==boardReply2.size()-1){
				boardReplyStr+=gson.toJson(boardReply2.get(i));
				break;
			}
			boardReplyStr+=gson.toJson(boardReply2.get(i))+",";
		}
		boardReplyStr+="]";
		return boardReplyStr;
	}
	
	@RequestMapping(value="/getUpdateBoard", method=RequestMethod.GET)
	public String getUpdateBoard(Model model, HttpServletRequest request){
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		Board board=bs.selectBoardbyBoardNo(boardNo);
		model.addAttribute("board",board);
		return "board/board_update";
	}
	
	@RequestMapping(value="/boardDelete", method=RequestMethod.GET)
	public String boardDelete(Model model, HttpServletRequest request){
		int boardNo=Integer.parseInt(request.getParameter("boardNo"));
		String category=request.getParameter("category");
		bs.deleteBoard(boardNo);
		String link="";
		if(category=="먹거리"){
			link="list/list_food";
		}else if(category=="나들이"){
			link="list/list_picnic";
		}else{ 
			link="list/list_hobby";
		}
		return link;
	}
	
	@RequestMapping(value="/addScrap", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String addScrap(Model model, HttpServletRequest request){
		String id = request.getParameter("id");
		int boardNo=Integer.parseInt(request.getParameter("boardNo"));
		int result=0;
		BoardsFollows bf=bs.selectboardFollowsByIdAndBoardNo(id,boardNo);
		if(bf==null){
			result = bs.insertBoardFollow(boardNo, id);
			bs.updateBoardScrap(boardNo);
		}
		if(result==1){
			return "성공";
		}else{
			return "실패";
		}
	}
	
	@RequestMapping(value="/addGood", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String addGood(Model model, HttpServletRequest request){
		String id = request.getParameter("id");
		int boardNo=Integer.parseInt(request.getParameter("boardNo"));
		int result=0;
		BoardsGoods bg=bs.selectboardGoodsByIdAndBoardNo(id,boardNo);
		if(bg==null){
			result = bs.insertBoardGood(boardNo, id);
			bs.updateBoardGood(boardNo);
		}
		logger.trace("result:{}",result);
		if(result==1){
			return "성공";
		}else{
			return "실패";
		}
	}
	
	@RequestMapping(value="/search", method=RequestMethod.GET)
	public String search(Model model, HttpServletRequest request){
		String location=request.getParameter("location");
		String numberOfPeople=request.getParameter("numberOfPeople");
		String category=request.getParameter("category");
		String what=request.getParameter("what");
		model.addAttribute("location",location);
		model.addAttribute("numberOfPeople",numberOfPeople);
		model.addAttribute("category",category);
		model.addAttribute("what",what);
		return "list/list_search";
	}
	
	@RequestMapping(value="/getBoardsBySearch", method=RequestMethod.POST,
	         produces="application/text;charset=UTF-8")
	   public @ResponseBody String getBoardsBySearch(Model model, HttpServletRequest request){
		logger.trace("진입");
	      int page = Integer.parseInt(request.getParameter("pageno"));
	      String location =request.getParameter("location");
	      String numberOfPeople = request.getParameter("numberOfPeople");
	      String category = request.getParameter("category");
	      String what = request.getParameter("what");
	     
	      List<Board> boards = null;
	      List<Board> afterBoard=new ArrayList<Board>();
	      if(location.equals("") && numberOfPeople.equals("몇 명이서") && category.equals("카테고리") && what.equals("")){
	    	  logger.trace("그냥 아무것도 없이 검색");
	    	  boards=bs.selectAllBoard();
	      }else if(!location.equals("") && numberOfPeople.equals("몇 명이서") && category.equals("카테고리") && what.equals("")){
	    	  logger.trace("지역으로 검색");
	    	  boards=bs.selectBoardByLocation(location);
	      }else if(location.equals("") && !numberOfPeople.equals("몇 명이서") && category.equals("카테고리") && what.equals("")){
	    	  logger.trace("인원으로 검색");
	    	  boards=bs.selectBoardByNumberOfPeople(numberOfPeople);
	      }else if(location.equals("") && numberOfPeople.equals("몇 명이서") && !category.equals("카테고리") && what.equals("")){
	    	  logger.trace("카테고리 검색");
	    	  boards=bs.selectBoardByCategory(category);
	      }else if(location.equals("") && numberOfPeople.equals("몇 명이서") && category.equals("카테고리") && !what.equals("")){
	    	  logger.trace("무엇으로 검색");
	    	  boards=bs.selectBoardByWhat(what);
	      }else if(!location.equals("") && !numberOfPeople.equals("몇 명이서") && category.equals("카테고리") && what.equals("")){
	    	  logger.trace("지역, 인원으로 검색");
	    	  boards=bs.selectBoardByLocationAndNumberOfPeople(location, numberOfPeople);
	      }else if(!location.equals("") && numberOfPeople.equals("몇 명이서") && !category.equals("카테고리") && what.equals("")){
	    	  logger.trace("지역, 카테고리로 검색");
	    	  boards=bs.selectBoardByLocationAndCategory(location, category);
	      }else if(!location.equals("") && numberOfPeople.equals("몇 명이서") && category.equals("카테고리") && !what.equals("")){
	    	  logger.trace("지역, 무엇으로 검색");
	    	  boards=bs.selectBoardByLocationAndWhat(location, what);
	      }else if(location.equals("") && !numberOfPeople.equals("몇 명이서") && !category.equals("카테고리") && what.equals("")){
	    	  logger.trace("인원, 카테고리로 검색");
	    	  boards=bs.selectBoardByNumberOfPeopleAndCategory(numberOfPeople, category);
	      }else if(location.equals("") && !numberOfPeople.equals("몇 명이서") && category.equals("카테고리") && !what.equals("")){
	    	  logger.trace("인원, 무엇으로 검색");
	    	  boards=bs.selectBoardByNumberOfPeopleAndWhat(numberOfPeople, what);
	      }else if(location.equals("") && numberOfPeople.equals("몇 명이서") && !category.equals("카테고리") && !what.equals("")){
	    	  logger.trace("카테고리, 무엇으로 검색");
	    	  boards=bs.selectBoardByCategoryAndWhat(category, what);
	      }else if(!location.equals("") && !numberOfPeople.equals("몇 명이서") && !category.equals("카테고리") && what.equals("")){
	    	  logger.trace("지역, 인원, 카테고리로 검색");
	    	  boards=bs.selectBoardByLocationAndNumberOfPeopleAndCategory(location, numberOfPeople, category);
	      }else if(!location.equals("") && !numberOfPeople.equals("몇 명이서") && category.equals("카테고리") && !what.equals("")){
	    	  logger.trace("지역, 인원, 무엇으로 검색");
	    	  boards=bs.selectBoardByLocationAndNumberOfPeopleAndWhat(location, numberOfPeople, what);
	      }else if(!location.equals("") && numberOfPeople.equals("몇 명이서") && !category.equals("카테고리") && !what.equals("")){
	    	  logger.trace("지역, 카테고리, 무엇으로 검색");
	    	  boards=bs.selectBoardByLocationAndCategoryAndWhat(location, category, what);
	      }else if(location.equals("") && !numberOfPeople.equals("몇 명이서") && !category.equals("카테고리") && !what.equals("")){
	    	  logger.trace("인원, 카테고리, 무엇으로 검색");
	    	  boards=bs.selectBoardByNumberOfPeopleAndCategoryAndWhat(numberOfPeople, category, what);
	      }else {
	    	  logger.trace("모든 것으로 검색");
	    	  boards=bs.selectBoardByLoactionAndNumberOfPeopleAndCategoryAndWhat(location, numberOfPeople, category, what);
	      }
	      
	      int end=(page*16<boards.size())? page*16 : boards.size();

	      for(int i=16*(page-1); i<end; i++){
	    	  boards.get((page-1)*10).setPage(page);
	         afterBoard.add(boards.get(i));
	      }
	      afterBoard.get(0).setRecordNum(boards.size());
	      for(int i=0;i<afterBoard.size();i++){
	    	  afterBoard.get(i).setBoardContent("");
	      }
	      
	      Gson gson = new Gson();
	      String boardStr = "[";
	      for(int i=0; i<afterBoard.size(); i++){
	         if(i==afterBoard.size()-1){
	            boardStr+=gson.toJson(afterBoard.get(i));
	            break;
	         }
	         boardStr+=gson.toJson(afterBoard.get(i))+",";
	      }
	      boardStr+="]";
	      return boardStr; // 사용할 뷰의 이름 리턴 
	   }
}