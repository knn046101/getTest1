package com.whattodo.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
import com.whattodo.dto.Notification;
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
		if(mainImg==null){
			mainImg="";
		}
		logger.trace(mainImg);
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
		logger.trace(""+board);
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
		return boardGoodBestStr; // 사용할 뷰의 이름 리턴 
	}
	
	@RequestMapping(value="/getBoardEditorBoards", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String getBoardEditorBoards(Model model, HttpServletRequest request){
		List<Board> board=bs.selectBoardByMainEditor();
		Gson gson = new Gson();
		String boardGoodBestStr = gson.toJson(board);
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
	      String boardStr = gson.toJson(afterBoard);
	      return boardStr; // 사용할 뷰의 이름 리턴 
	   }
	
	@RequestMapping(value="/getMyBoards", method=RequestMethod.GET,
	         produces="application/text;charset=UTF-8")
	   public @ResponseBody String getMyBoards(Model model, HttpServletRequest request){
	      int page = Integer.parseInt(request.getParameter("pageno"));
	      String id = request.getParameter("id");
	      List<Board> board=bs.selectMyBoardsById(id);
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
	      String boardStr=gson.toJson(afterBoard);

	      return boardStr; // 사용할 뷰의 이름 리턴 
	   }
	
	@RequestMapping(value="/getMyScrap", method=RequestMethod.GET,
	         produces="application/text;charset=UTF-8")
	   public @ResponseBody String getMyScrap(Model model, HttpServletRequest request){
	      int page = Integer.parseInt(request.getParameter("pageno"));
	      String id = request.getParameter("id");
	      List<Board> board=bs.selectBoardByFollow(id);
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
	      String boardStr=gson.toJson(afterBoard);

	      return boardStr; // 사용할 뷰의 이름 리턴 
	   }
	
	@RequestMapping(value="/getBoardByMyFavorite", method=RequestMethod.GET,
	         produces="application/text;charset=UTF-8")
	   public @ResponseBody String getBoardByMyFavorite(Model model, HttpServletRequest request){
	      int page = Integer.parseInt(request.getParameter("pageno"));
	      String favorite = request.getParameter("favorite");
	      HashSet<Board> board=new HashSet<Board>();
	      String[] favorites = favorite.split("#");
	      for(String value:favorites){
	    	  System.out.println(value);
	    	  if(!value.equals("")){
		    	  List<Board> boardTmp=bs.selectBoardByWhat(value);
		    	  for(int i=0; i<boardTmp.size();i++){
		    		  board.add(boardTmp.get(i));
		    	  }
	    	  }
	      }
	      List<Board> Boards=new ArrayList<Board>(board); 
	      List<Board> afterBoard=new ArrayList<Board>();
	      int end=(page*16<board.size())? page*16 : board.size();
	      for(int i=16*(page-1); i<end; i++){
	    	  Boards.get((page-1)*10).setPage(page);
	         afterBoard.add(Boards.get(i));
	      }
	      afterBoard.get(0).setRecordNum(board.size());
	      for(int i=0;i<afterBoard.size();i++){
	    	  afterBoard.get(i).setBoardContent("");
	      }
	      
	      Gson gson = new Gson();
	      String boardStr=gson.toJson(afterBoard);

	      return boardStr; // 사용할 뷰의 이름 리턴 
	   }
	
	@RequestMapping(value="/getMyGood", method=RequestMethod.GET,
	         produces="application/text;charset=UTF-8")
	   public @ResponseBody String getMyGood(Model model, HttpServletRequest request){
	      int page = Integer.parseInt(request.getParameter("pageno"));
	      String id = request.getParameter("id");
	      List<Board> board=bs.selectBoardByGood(id);
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
	      String boardStr=gson.toJson(afterBoard);

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
				board.get(16*(page-1)).setPage(page);
				afterBoard.add(board.get(i));
		}
		afterBoard.get(0).setRecordNum(board.size());
		for(int i=0;i<afterBoard.size();i++){
	    	  afterBoard.get(i).setBoardContent("");
	    }
		
		Gson gson = new Gson();
		String boardStr =gson.toJson(afterBoard);
		return boardStr; // 사용할 뷰의 이름 리턴 
	}
	
	@RequestMapping(value="/getNearBoards", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String getBestBoards(Model model, HttpServletRequest request){
		int page = Integer.parseInt(request.getParameter("pageno"));
		String strdo = request.getParameter("strdo");
		String strcity = request.getParameter("strcity");
		String loginLocation = request.getParameter("loginLocation");
		List<Board> boards=null;
		List<Board> afterBoard=new ArrayList<Board>();
		
		if(!strdo.equals("")){
			boards=bs.selectBoardByCapitalAndCity(strdo, strcity);
		}else if(strdo.equals("") && !loginLocation.equals("")){
			boards=bs.selectBoardByLocation(loginLocation);
		}else{
			boards=bs.selectBoardByCapitalAndCity("서울특별시", "");
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
		String boardStr = gson.toJson(afterBoard);
		return boardStr; // 사용할 뷰의 이름 리턴 
	}
	
	@RequestMapping(value="/getBoardMyBoardsMain", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String getBoardMyBoardsMain(Model model, HttpServletRequest request){
		String id = request.getParameter("id");
		List<Board> board=bs.selectboardMyBoardsMain(id);
		Gson gson = new Gson();
		String boardGoodBestStr = gson.toJson(board);
		return boardGoodBestStr; // 사용할 뷰의 이름 리턴 
	}
	
	@RequestMapping(value="/getBoardMyFavoriteMain", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String getBoardMyFavoriteMain(Model model, HttpServletRequest request){
		String favorite = request.getParameter("favorite");
	    HashSet<Board> board=new HashSet<Board>();
	    String[] favorites = favorite.split("#");
	    for(String value:favorites){
	    	System.out.println(value);
	    	if(!value.equals("")){
		    	List<Board> boardTmp=bs.selectBoardByWhat(value);
		    	for(int i=0; i<boardTmp.size();i++){
		    		board.add(boardTmp.get(i));
		    	}
	    	}
	    }
	    List<Board> boards=new ArrayList<Board>(board); 
	    List<Board> afterBoard=new ArrayList<Board>();
	    for(int i=0; i<boards.size(); i++){
	    	afterBoard.add(boards.get(i));
	    	if(i==7){
	    		break;
	    	}
	    }
		Gson gson = new Gson();
		String boardGoodBestStr = gson.toJson(afterBoard);
		return boardGoodBestStr; // 사용할 뷰의 이름 리턴 
	}
	
	@RequestMapping(value="/getBoardMyScrapMain", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String getBoardMyScrapMain(Model model, HttpServletRequest request){
		String id = request.getParameter("id");
		List<Board> board=bs.selectBoardByFollow(id);
		Gson gson = new Gson();
		String boardGoodBestStr = gson.toJson(board);
		return boardGoodBestStr; // 사용할 뷰의 이름 리턴 
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
		String boardReplyStr = gson.toJson(afterBoardReply);
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
		int page = Integer.parseInt(request.getParameter("pageno"));
		String id = request.getParameter("id");
		int boardNo=Integer.parseInt(request.getParameter("boardNo"));
		String comments=request.getParameter("comments");
		
		BoardReply boardReply = new BoardReply(comments, boardNo, id);
		bs.insertBoardReply(boardReply);
		Board board = bs.selectBoardbyBoardNo(boardNo);
		List <BoardReply> boardReply2 = bs.selectBoardReply(boardNo);
		List <BoardReply> afterboardReply=new ArrayList<BoardReply>();
		model.addAttribute("board", board);
		
		int end=(page*10<boardReply2.size())? page*10 : boardReply2.size();

		for(int i=(page-1)*10; i<end; i++){
			boardReply2.get((page-1)*10).setPage(page);
			afterboardReply.add(boardReply2.get(i));
		}
		afterboardReply.get(0).setRecordNum(boardReply2.size());
		
		Gson gson = new Gson();
		String boardReplyStr = gson.toJson(afterboardReply);
		return boardReplyStr;
	}
	
	@RequestMapping(value="/replyDelete", method=RequestMethod.GET)
	public @ResponseBody String replyDelete(Model model, HttpServletRequest request){
		int boardReplyNo = Integer.parseInt(request.getParameter("boardReplyNo"));
		int result = bs.deleteBoardReply(boardReplyNo);
		String message=result+"";
		return message;
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
	
	@RequestMapping(value="/scrapDelete", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String scrapDelete(Model model, HttpServletRequest request){
		int boardNo=Integer.parseInt(request.getParameter("boardNo"));
		int result=0;
		result = bs.deleteBoardFollow(boardNo);
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
	
	@RequestMapping(value="/goodDelete", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String goodDelete(Model model, HttpServletRequest request){
		int boardNo=Integer.parseInt(request.getParameter("boardNo"));
		int result=0;
		result = bs.deleteBoardGood(boardNo);
		if(result==1){
			return "성공";
		}else{
			return "실패";
		}
	}
	
	@RequestMapping(value="/near", method=RequestMethod.GET)
	public String near(HttpServletRequest request, HttpSession session){
		String strdo=request.getParameter("strdo");
		String strcity=request.getParameter("strcity");
		session.setAttribute("strdo", strdo);
		session.setAttribute("strcity", strcity);
		return "list/list_best";
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
	      if(location.equals("") && numberOfPeople.equals("몇명이서") && category.equals("카테고리") && what.equals("")){
	    	  logger.trace("그냥 아무것도 없이 검색");
	    	  boards=bs.selectAllBoard();
	      }else if(!location.equals("") && numberOfPeople.equals("몇명이서") && category.equals("카테고리") && what.equals("")){
	    	  logger.trace("지역으로 검색");
	    	  boards=bs.selectBoardByLocation(location);
	      }else if(location.equals("") && !numberOfPeople.equals("몇명이서") && category.equals("카테고리") && what.equals("")){
	    	  logger.trace("인원으로 검색");
	    	  boards=bs.selectBoardByNumberOfPeople(numberOfPeople);
	      }else if(location.equals("") && numberOfPeople.equals("몇명이서") && !category.equals("카테고리") && what.equals("")){
	    	  logger.trace("카테고리 검색");
	    	  boards=bs.selectBoardByCategory(category);
	      }else if(location.equals("") && numberOfPeople.equals("몇명이서") && category.equals("카테고리") && !what.equals("")){
	    	  logger.trace("무엇으로 검색");
	    	  boards=bs.selectBoardByWhat(what);
	      }else if(!location.equals("") && !numberOfPeople.equals("몇명이서") && category.equals("카테고리") && what.equals("")){
	    	  logger.trace("지역, 인원으로 검색");
	    	  boards=bs.selectBoardByLocationAndNumberOfPeople(location, numberOfPeople);
	      }else if(!location.equals("") && numberOfPeople.equals("몇명이서") && !category.equals("카테고리") && what.equals("")){
	    	  logger.trace("지역, 카테고리로 검색");
	    	  boards=bs.selectBoardByLocationAndCategory(location, category);
	      }else if(!location.equals("") && numberOfPeople.equals("몇명이서") && category.equals("카테고리") && !what.equals("")){
	    	  logger.trace("지역, 무엇으로 검색");
	    	  boards=bs.selectBoardByLocationAndWhat(location, what);
	      }else if(location.equals("") && !numberOfPeople.equals("몇명이서") && !category.equals("카테고리") && what.equals("")){
	    	  logger.trace("인원, 카테고리로 검색");
	    	  boards=bs.selectBoardByNumberOfPeopleAndCategory(numberOfPeople, category);
	      }else if(location.equals("") && !numberOfPeople.equals("몇명이서") && category.equals("카테고리") && !what.equals("")){
	    	  logger.trace("인원, 무엇으로 검색");
	    	  boards=bs.selectBoardByNumberOfPeopleAndWhat(numberOfPeople, what);
	      }else if(location.equals("") && numberOfPeople.equals("몇명이서") && !category.equals("카테고리") && !what.equals("")){
	    	  logger.trace("카테고리, 무엇으로 검색");
	    	  boards=bs.selectBoardByCategoryAndWhat(category, what);
	      }else if(!location.equals("") && !numberOfPeople.equals("몇명이서") && !category.equals("카테고리") && what.equals("")){
	    	  logger.trace("지역, 인원, 카테고리로 검색");
	    	  boards=bs.selectBoardByLocationAndNumberOfPeopleAndCategory(location, numberOfPeople, category);
	      }else if(!location.equals("") && !numberOfPeople.equals("몇명이서") && category.equals("카테고리") && !what.equals("")){
	    	  logger.trace("지역, 인원, 무엇으로 검색");
	    	  boards=bs.selectBoardByLocationAndNumberOfPeopleAndWhat(location, numberOfPeople, what);
	      }else if(!location.equals("") && numberOfPeople.equals("몇명이서") && !category.equals("카테고리") && !what.equals("")){
	    	  logger.trace("지역, 카테고리, 무엇으로 검색");
	    	  boards=bs.selectBoardByLocationAndCategoryAndWhat(location, category, what);
	      }else if(location.equals("") && !numberOfPeople.equals("몇명이서") && !category.equals("카테고리") && !what.equals("")){
	    	  logger.trace("인원, 카테고리, 무엇으로 검색");
	    	  boards=bs.selectBoardByNumberOfPeopleAndCategoryAndWhat(numberOfPeople, category, what);
	      }else {
	    	  logger.trace("모든 것으로 검색");
	    	  boards=bs.selectBoardByLoactionAndNumberOfPeopleAndCategoryAndWhat(location, numberOfPeople, category, what);
	      }
	      
	      int end=(page*16<boards.size())? page*16 : boards.size();

	      for(int i=16*(page-1); i<end; i++){
	    	  boards.get((page-1)*16).setPage(page);
	         afterBoard.add(boards.get(i));
	      }
	      afterBoard.get(0).setRecordNum(boards.size());
	      for(int i=0;i<afterBoard.size();i++){
	    	  afterBoard.get(i).setBoardContent("");
	      }
	      
	      Gson gson = new Gson();
		  String boardStr = gson.toJson(afterBoard);
	      return boardStr; // 사용할 뷰의 이름 리턴 
	   }
	
	@RequestMapping(value="/getBoardByAdmin", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String getBoardByAdmin(Model model, HttpServletRequest request){
		int page = Integer.parseInt(request.getParameter("pageno"));
		List<Board> boards=bs.getBoardByAdmin();
		List<Board> afterBoard=new ArrayList<Board>();
		
		 int end=(page*20<boards.size())? page*20 : boards.size();

	      for(int i=20*(page-1); i<end; i++){
	    	  boards.get((page-1)*20).setPage(page);
	         afterBoard.add(boards.get(i));
	      }
	      afterBoard.get(0).setRecordNum(boards.size());
	      
		Gson gson = new Gson();
		String boardStr = gson.toJson(afterBoard);
		return boardStr; // 사용할 뷰의 이름 리턴 
	}
	
	@RequestMapping(value="/getBoardByAdminSearch", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String getBoardByAdminSearch(Model model, HttpServletRequest request){
		int page = Integer.parseInt(request.getParameter("pageno"));
		String select = request.getParameter("select");
		String text = request.getParameter("text");
		logger.trace("select:{}, test:{}", select, text);
		List<Board> boards=null;
		if(select.equals("사용자")){
			boards=bs.getBoardByAdminSearchUser(text);
		}else if(select.equals("글번호")){
			boards=bs.getBoardByAdminSearchBoardNo(Integer.parseInt(text));
		}else{
			boards=bs.getBoardByAdminSearchTitle(text);
		}
		
		List<Board> afterBoard=new ArrayList<Board>();
		
		 int end=(page*20<boards.size())? page*20 : boards.size();

	      for(int i=20*(page-1); i<end; i++){
	    	  boards.get((page-1)*20).setPage(page);
	         afterBoard.add(boards.get(i));
	      }
	      afterBoard.get(0).setRecordNum(boards.size());
	      
		Gson gson = new Gson();
		String boardStr = gson.toJson(afterBoard);
		return boardStr; // 사용할 뷰의 이름 리턴 
	}
	
	@RequestMapping(value="/countBoard", method=RequestMethod.POST,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String countBoard(Model model, HttpServletRequest request,HttpServletResponse response) throws IOException{
		int result1 = bs.countBoard();
		String result=result1+"";
		return result;
	}
	
	@RequestMapping(value="/boardsGoodScrap", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String boardsGoodScrap(HttpServletRequest request){
		String id = request.getParameter("id");
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		
		BoardsFollows bf= bs.selectboardFollowsByIdAndBoardNo(id, boardNo);
		BoardsGoods bg= bs.selectboardGoodsByIdAndBoardNo(id, boardNo);
		
		String result="";
		if(bf==null){
			result+="null,";
		}else{
			result+="notNull,";
		}
		if(bg==null){
			result+="null";
		}else{
			result+="notNull";
		}
		return result;
	}
	
	@RequestMapping(value="/loadingBoard", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String loadBoard(Model model, HttpServletResponse response) throws IOException{
		List<Board> list = bs.selectAllBoard();
		Gson gson = new Gson();
		String jsonType = gson.toJson(list);
		return jsonType;		 
	}
	
	
	@RequestMapping(value="/delBoardAdmin", method=RequestMethod.GET)
	public @ResponseBody String boardDeleteAdmin(Model model, HttpServletRequest request){
		int boardNo=Integer.parseInt(request.getParameter("boardNo"));
		bs.deleteBoard(boardNo);
		
		String result="삭제 되었습니다.";
		return result;
	}
	
	@RequestMapping(value="/deleteReply", method=RequestMethod.GET)
	public @ResponseBody String deleteReply(Model model, HttpServletRequest request){
		int boardReplyNo=Integer.parseInt(request.getParameter("boardReplyNo"));
		bs.deleteBoardReply(boardReplyNo);
		
		String result="삭제 되었습니다.";
		return result;
	}
	
}
