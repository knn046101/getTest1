<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>뭐 하 지 ?</title>
	<meta name="description" content="">
<style>
	#page{
		height:30px;
	}
</style>
</head>
<body>
	
	<div class="container-fluid">
		<div class="row">
			<jsp:include page="/layout/header.jsp"></jsp:include>
		</div>
	
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-4" style="text-align:center;">
						<div class="container">
							<div class="row sub_content">
								<div class="col-lg-8 col-md-8 col-sm-8">
								<!--Project Details Page-->
									<br>
									<br>
									${board.boardContent }
								</div>
					
					<div class="col-lg-4 col-md-4 col-sm-4">
						<div class="project_details">
							<div class="widget_title">
								<h3><span>${board.boardTitle }</span></h3>
							</div>
							<ul class="details">
								<li><span>작성자 :</span>${board.id }</li>
								<li><span>작성일 :</span><fmt:formatDate value="${board.writeDate }" pattern="yyyy.MM.dd"/></li>
							</ul>
						</div>
						<div class="project_details">
							<div class="widget_title">
								<h3><span>글 정보</span></h3>
							</div>
							<ul class="details">
								<li><span>카테고리 :</span>${board.category }</li>
								<li><span>몇명이서 :</span>${board.numberOfPeople }</li>
								<li><span>키워드 :</span>${board.what }</li>
								<li>
									<button id="scrap" class="scrap" style="color:black;"><i class="fa fa-bookmark" style="color:black;"></i> 스크랩</button>
									<button id="good" class="good" style="color:black;"><i class="fa fa-thumbs-up" style="color:black;"></i> 좋아요</button>
									<button id="update" class="update" style="color:black;"><i class="fa fa-share" style="color:black;"></i> 수정</button>
									<button id="delete" class="delete" style="color:black;"><i class="fa fa-trash-o" style="color:black;"></i> 삭제</button>
								</li>
							</ul>
						</div>
					</div>
				</div>
						
						<!--News Comments-->
                        <div class="news_comments">
                            <div class="dividerHeading">
                                <h4><span>댓글</span></h4>
                            </div>
                            <div id="comment">
                                <ul id="comment-list">
                                	<c:if test="${!empty (boardReply) }">
                                		<c:forEach var="boardReply" items="${boardReply }">
                                			<li class="comment">
                                       			<div class="comment-container">
                                            		<h4 class="comment-author"><a href="#">${boardReply.id }</a></h4>
                                            		<div class="comment-meta"><a href="#" class="comment-date link-style1">
                                            				<fmt:formatDate value="${boardReply.boardReplyDate }" pattern="yyyy.MM.dd"/></a></div>
                                            		<div class="comment-body">
                                                		<p>${boardReply.boardReplyContent }</p>
                                            		</div>
                                        		</div>
                                   			</li>
                                		</c:forEach> 
                                	</c:if>
                                </ul>
                            </div>
                            <div id="page"></div>
                            <!-- /#comments -->
                            <div class="dividerHeading">
                               <h4><span>댓글작성</span></h4>
                            </div>
                                
                            
							<form id="form" action="addBoardReply">
                         
                            <div class="comment-box row">
                                <div class="col-sm-12">
									<input type="hidden" value="${board.boardNo}" name="boardNo"/>
									<input type="hidden" value="${login.id}" name="id"/>
                                    <p>
                                        <textarea name="comments" class="form-control" rows="3" cols="40" id="comments" onfocus="if(this.value == 'Message') { this.value = ''; }" onblur="if(this.value == '') { this.value = 'Message'; }" placeholder="댓글내용"></textarea>
                                    </p>
                                </div>
                            </div>

                            <button class="btn btn-lg btn-default">댓글등록</button>
                            </form>
                        </div>
				    </div>
					
					</div><!--/.row-->
				</div> <!--/.container-->
				</div>
			</div>
		</div>
	<div class="row">
			<jsp:include page="/layout/footer.jsp"></jsp:include>
	</div> 
</body>

<script>
	var boardNo="";

	<c:url value="/boardReply" var="boardReply"/>
	$(document).on("ready", function(e){
		send("${boardReply }?pageno=1&boardNo=${board.boardNo}");
	});
	
	<c:url value="/addBoardReply" var="addBoardReply"/>
	 $("#form").on("submit", function(e){
		e.preventDefault();
		if("${login.id}"==""){
			alert("로그인 후에 이용하여 주십시오.");
		}else{
			$(".comment").remove();
			var total_record=1;
			var page_eno;
			var page_sno;
			var htmlText="";
			var pageText="";
			 <c:url value="/addBoardReply" var="addBoardReply"/> 
			var allData={
				"boardNo": "${board.boardNo }",
				"id":"${login.id}",
				"comments":$("#comments").val()
			};
				
			$.ajax({
				type:"get",
				url:"${addBoardReply }?pageno=1",
				dataType:"json",
				data: allData,
				success:function(args){
					 for(var i=0; i<args.length; i++){
						var date = new Date(Date.parse(args[i].boardReplyDate));
						htmlText+="<li class='comment'>"
	           						+"<div class='comment-container'>"
	                				+"<h4 class='comment-author'><a href='#'>"+args[i].id+"</a></h4>"
	                				+"<div class='comment-meta'><a href='#' class='comment-date link-style1'>"
	                				+date.toLocaleDateString()+"</div>"
	                				+"<div class='comment-body'>"
	                    			+"<p>"+args[i].boardReplyContent+"</p>"
	                				+"</div>"
	            					+"</div>"
	       							+"</li>";
					}
					boardNo=args[0].boardNo;
					$("#comment-list").append(htmlText);  
					
					var recordNum=args[0].recordNum;
					////////////////////// 불러온 테이블 끝////////////////////////
					var pagenotmp=args[0].page;
					
					if(pagenotmp==null){
						pagenotmp=1;
					}
					var pageno = Number(pagenotmp);
					if(pageno<1){//현재 페이지
						pageno = 1;
					}
					total_record=recordNum;
				
					var page_per_record_cnt = 10;  //페이지 당 레코드 수
					var group_per_page_cnt =5;     //페이지 당 보여줄 번호 수[1],[2],[3],[4],[5]
//									  									  [6],[7],[8],[9],[10]											
					var record_end_no = pageno*page_per_record_cnt;				
					var record_start_no = record_end_no-(page_per_record_cnt-1);
					if(record_end_no>total_record){
						record_end_no = total_record;
					}   
					var total_page = Math.floor(total_record / page_per_record_cnt + (total_record % page_per_record_cnt>0 ? 1 : 0));
					if(pageno>total_page){
						pageno = total_page;
					}
//				 	현재 페이지(정수) / 한페이지 당 보여줄 페지 번호 수(정수) + (그룹 번호는 현제 페이지(정수) % 한페이지 당 보여줄 페지 번호 수(정수)>0 ? 1 : 0)
					var group_no = Math.floor(pageno/group_per_page_cnt)+( pageno%group_per_page_cnt>0 ? 1:0);
//						현재 그룹번호 = 현재페이지 / 페이지당 보여줄 번호수 (현재 페이지 % 페이지당 보여줄 번호 수 >0 ? 1:0)	
//					ex) 	14		=	13(몫)		=	 (66 / 5)		1	(1(나머지) =66 % 5)			  
					
					page_eno = group_no*group_per_page_cnt;		
//						현재 그룹 끝 번호 = 현재 그룹번호 * 페이지당 보여줄 번호 
//					ex) 	70		=	14	*	5
					page_sno = page_eno-(group_per_page_cnt-1);
//				 		현재 그룹 시작 번호 = 현재 그룹 끝 번호 - (페이지당 보여줄 번호 수 -1)
//					ex) 	66	=	70 - 	4 (5 -1)
					
					if(page_eno>total_page){
//					   현재 그룹 끝 번호가 전체페이지 수 보다 클 경우		
						page_eno=total_page;
//					   현재 그룹 끝 번호와 = 전체페이지 수를 같게
					}
					
					var prev_pageno = page_sno-group_per_page_cnt;  // <<  *[이전]* [21],[22],[23]... [30] [다음]  >>
//						이전 페이지 번호	= 현재 그룹 시작 번호 - 페이지당 보여줄 번호수	
//					ex)		46		=	51 - 5				
					var next_pageno = page_sno+group_per_page_cnt;	// <<  [이전] [21],[22],[23]... [30] *[다음]*  >>
//						다음 페이지 번호 = 현재 그룹 시작 번호 + 페이지당 보여줄 번호수
//					ex)		56		=	51 - 5
					if(prev_pageno<1){
//						이전 페이지 번호가 1보다 작을 경우		
						prev_pageno=1;
//						이전 페이지를 1로
					}
					if(next_pageno>total_page){
//						다음 페이지보다 전체페이지 수보가 클경우		
						next_pageno=Math.floor(total_page/group_per_page_cnt)*group_per_page_cnt+1;
//						next_pageno=total_page
//						다음 페이지 = 전체페이지수 / 페이지당 보여줄 번호수 * 페이지당 보여줄 번호수 + 1 
//					ex)			   = 	76 / 5 * 5 + 1	???????? 		
					}

					pageText+="<a class='paging' href='#' onclick=send('${boardReply }?pageno=1&boardNo="+boardNo+"')>[맨앞으로]</a>";
					pageText+="<a class='paging' href='#' onclick=send('${boardReply }?pageno="+prev_pageno+"&boardNo="+boardNo+"')>[이전]</a>";
					for(var i=page_sno; i<=page_eno; i++){ 
						pageText+="<a class='paging' href='#' onclick=send('${boardReply }?pageno="+i+"&boardNo="+boardNo+"')>";
						if(pageno == i){ 
							pageText+="["+i+"]";
						}else{ 
							pageText+=""+i+""; 
						} 
						pageText+="</a>";
						<%--	콤마	 --%>	
						if(i<page_eno){
							pageText+="<span class='paging'> , </span>";
						} 
					} 
					pageText+="<a class='paging' href='#' onclick=send('${boardReply }?pageno="+next_pageno+"&boardNo="+boardNo+"')>[다음]</a>";			
					pageText+="<a class='paging' href='#' onclick=send('${boardReply }?pageno="+total_page+"&boardNo="+boardNo+"')>[맨뒤로]</a><br class='paging'>";				
					console.log(pageText);
					$("#page").appned(pageText);
					$("#comments").val("");
				},
				error : function(xhr, status, error) {
					alert("게시판 가져오기 실패..");
				},
				"Content-Type" : "application/x-www-form-urlencoded;charset=utf-8"
			});
		}
	 });
		function send(inputUrl){
			var url=inputUrl;
			var htmlText="";
			var total_record=1;
			$(".comment").remove();	
			$(".paging").remove();
			var page_eno;
			var page_sno;
			$.ajax({
				type:"get",
				url: url,
				dataType:"json",
				// xhr.readyState ==4&& xhr.status==200 상황
				success : function(args){
					 for(var i=0; i<args.length; i++){
							var date = new Date(Date.parse(args[i].boardReplyDate));
							htmlText+="<li class='comment'>"
		           						+"<div class='comment-container'>"
		                				+"<h4 class='comment-author'><a href='#'>"+args[i].id+"</a></h4>"
		                				+"<div class='comment-meta'><a href='#' class='comment-date link-style1'>"
		                				+date.toLocaleDateString()+"</div>"
		                				+"<div class='comment-body'>"
		                    			+"<p>"+args[i].boardReplyContent+"</p>"
		                				+"</div>"
		            					+"</div>"
		       							+"</li>";
					}
					boardNo=args[0].boardNo;
					$("#comment-list").append(htmlText);  
					////////////////////// 불러온 테이블 끝////////////////////////
					var recordNum=args[0].recordNum;
					var pagenotmp=args[0].page;
						
					if(pagenotmp==null){
						pagenotmp=1;
					}
					var pageno = Number(pagenotmp);
					if(pageno<1){//현재 페이지
						pageno = 1;
					}
					total_record=recordNum;
						
					var page_per_record_cnt = 10;  //페이지 당 레코드 수
					var group_per_page_cnt =5;     //페이지 당 보여줄 번호 수[1],[2],[3],[4],[5]
//										  									  [6],[7],[8],[9],[10]											
					var record_end_no = pageno*page_per_record_cnt;				
					var record_start_no = record_end_no-(page_per_record_cnt-1);
					if(record_end_no>total_record){
						record_end_no = total_record;
					}   
					var total_page = Math.floor(total_record / page_per_record_cnt + (total_record % page_per_record_cnt>0 ? 1 : 0));
					if(pageno>total_page){
						pageno = total_page;
					}
//					현재 페이지(정수) / 한페이지 당 보여줄 페지 번호 수(정수) + (그룹 번호는 현제 페이지(정수) % 한페이지 당 보여줄 페지 번호 수(정수)>0 ? 1 : 0)
					var group_no = Math.floor(pageno/group_per_page_cnt)+( pageno%group_per_page_cnt>0 ? 1:0);
//					현재 그룹번호 = 현재페이지 / 페이지당 보여줄 번호수 (현재 페이지 % 페이지당 보여줄 번호 수 >0 ? 1:0)	
//					ex) 	14		=	13(몫)		=	 (66 / 5)		1	(1(나머지) =66 % 5)			  
						
					page_eno = group_no*group_per_page_cnt;		
//						현재 그룹 끝 번호 = 현재 그룹번호 * 페이지당 보여줄 번호 
//					ex) 	70		=	14	*	5
					page_sno = page_eno-(group_per_page_cnt-1);
//					 	현재 그룹 시작 번호 = 현재 그룹 끝 번호 - (페이지당 보여줄 번호 수 -1)
//					ex) 	66	=	70 - 	4 (5 -1)
						
					if(page_eno>total_page){
//					   현재 그룹 끝 번호가 전체페이지 수 보다 클 경우		
						page_eno=total_page;
//					   현재 그룹 끝 번호와 = 전체페이지 수를 같게
					}
						
					var prev_pageno = page_sno-group_per_page_cnt;  // <<  *[이전]* [21],[22],[23]... [30] [다음]  >>
//						이전 페이지 번호	= 현재 그룹 시작 번호 - 페이지당 보여줄 번호수	
//					ex)		46		=	51 - 5				
					var next_pageno = page_sno+group_per_page_cnt;	// <<  [이전] [21],[22],[23]... [30] *[다음]*  >>
//						다음 페이지 번호 = 현재 그룹 시작 번호 + 페이지당 보여줄 번호수
//					ex)		56		=	51 - 5
					if(prev_pageno<1){
//						이전 페이지 번호가 1보다 작을 경우		
						prev_pageno=1;
//						이전 페이지를 1로
					}
					if(next_pageno>total_page){
//						다음 페이지보다 전체페이지 수보가 클경우		
						next_pageno=Math.floor(total_page/group_per_page_cnt)*group_per_page_cnt+1;
//						next_pageno=total_page
//						다음 페이지 = 전체페이지수 / 페이지당 보여줄 번호수 * 페이지당 보여줄 번호수 + 1 
//					ex)			   = 	76 / 5 * 5 + 1	???????? 		
					}
					var pageText="";
					pageText+="<a class='paging' href='#' onclick=send('${boardReply }?pageno=1&boardNo="+boardNo+"')>[맨앞으로]</a>";
					pageText+="<a class='paging' href='#' onclick=send('${boardReply }?pageno="+prev_pageno+"&boardNo="+boardNo+"')>[이전]</a>";
					for(var i=page_sno; i<=page_eno; i++){ 
						pageText+="<a class='paging' href='#' onclick=send('${boardReply }?pageno="+i+"&boardNo="+boardNo+"')>";
						if(pageno == i){ 
							pageText+="["+i+"]";
						}else{ 
							pageText+=""+i+""; 
						} 
						pageText+="</a>";
						<%--	콤마	 --%>	
						if(i<page_eno){
							pageText+="<span class='paging'> , </span>";
						} 
					} 
					pageText+="<a class='paging' href='#' onclick=send('${boardReply }?pageno="+next_pageno+"&boardNo="+boardNo+"')>[다음]</a>";			
					pageText+="<a class='paging' href='#' onclick=send('${boardReply }?pageno="+total_page+"&boardNo="+boardNo+"')>[맨뒤로]</a><br class='paging'>";				
					$("#page").append(pageText);
					$("#comments").val("");
				},
				error : function(txt, txt2, xhr){
					console.log("error", xhr);
				},
				"Content-Type":"application/x-www-form-urlencoded;charset=utf-8"
			});
		}
		
	$("#scrap").on("click",function(){});
	
	$("#good").on("click",function(){});
	
	$("#update").on("click",function(){
		var response
		if("${login.id}"!="${board.id}"){
			alert("작성자만 게시글을 수정할 수 있습니다.");
		}else{
			<c:url value="/getUpdateBoard" var="getUpdateBoard"/> 
			location.href="${getUpdateBoard}?boardNo="+${board.boardNo};
		}
	});
	
	$("#delete").on("click",function(){
		var response
		if("${login.id}"!="${board.id}"){
			alert("작성자만 게시글을 삭제할 수 있습니다.");
		}else{
			response=confirm("정말로 삭제하시겠습니까 ?ㅠㅜ");
		}
		if(response==true){
			<c:url value="/boardDelete" var="boardDelete"/> 
			location.href="${boardDelete}?boardNo="+${board.boardNo}+"&category=${board.category}";
		}
	});
	
</script>
</html>
