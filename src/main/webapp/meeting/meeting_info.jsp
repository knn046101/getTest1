<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>뭐 하 지 ?</title>
<meta name="description" content="">

</head>


<body>
	<jsp:include page="/layout/header.jsp"></jsp:include>

	<div class="container">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<h2>${meeting.meetingTitle }&nbsp;</h2>
					<nav id="breadcrumbs">${meeting.place }>
						${meeting.meetingKeyword }</nav>
					<br>
					<c:if test="${!empty login}">
						<span class="input-group-btn">
							<button
								onclick="location='<%=request.getContextPath()%>/meeting/meeting_board_write.jsp?meetingNo=${meeting.meetingNo }'"
								id="writeboard" class="btn btn-success"
								style="background-color: #27AB99; border-color: #fff; float: right;">
								게시글작성 <i class="fa fa-pencil"></i>
							</button> <c:if test="${meeting.id eq login.id }">
								<c:url value="/meetingUpdate" var="meetingUpdate" />
								<button class="btn btn-primary" id="meeintgUpdate"
									onclick="location='${meetingUpdate}?meetingNo=${meeting.meetingNo}'	"
									style="background-color: red; border-color: #fff;">
									모임수정 <i class="fa fa-edit"></i>
								</button>
								<button class="btn btn-primary" id="meeintgDelete"
									style="background-color: orange; border-color: #fff;">
									모임삭제 <i class="fa fa-trash-o"></i>
								</button>
							</c:if>
						</span>
					</c:if>
					<nav style="float: right">
						<label for="follow">팔로우</label>
						<button id="follow" >
							<i class="fa fa-heart"style="color:#FFF;"></i>
						</button>
					</nav>
				</div>
			</div>
		</div>

		<div class="row sub_content">
			<div class="col-lg-6 col-sm-6 col-md-6">
				<div class="dividerHeading">
					<h4>
						<span>모임 소개</span>
					</h4>

				</div>
				<div class="serviceBox_3">
					<div class="service_3_img">
						<img class="left_img img-thumbnail" src=${meeting.meetingImg }>
					</div>
					<div class="service_3_detail">
						<h2>follow&nbsp;&nbsp;<i class="fa fa-gittip"></i>&nbsp;&nbsp;: ${meeting.meetingFollow }</h2>
						<p>${meeting.meetingContent }</p>
					</div>
				</div>

			</div>
			<div class="col-lg-6 col-sm-6 col-md-6">
				<div class="dividerHeading">
					<h4>
						<span>게시판</span>
					</h4>
				</div>
				<ul class="list_style circle" id="meetingBoards">
				</ul>
			</div>
			<div id="page"></div>
		</div>
	</div>




	<jsp:include page="/layout/footer.jsp"></jsp:include>

</body>
<script>
<c:url value="/getMeetingBoards" var="getMeetingBoards"/>
$(document)	.ready(function() {
	var htmlText = "";
	var total_record = 1;
	$(".delete").remove();
	var page_eno;
	var page_sno;
	var data = {
			"meetingNo":"${meeting.meetingNo}"
	}
	$.ajax({
		type : "get",
		url : "${getMeetingBoards }?pageno=1",
		data :data,
		dataType : "json",
		success : function(args) {
			var length = args.length;
			for (var i = 0; i < length; i++) {
				<c:url value="/retrieveMeetingBoard" var="retrieveMeetingBoard"/>
				htmlText += "<li class='delete'><a href='${retrieveMeetingBoard}?meetingBoardNo="+args[i].meetingBoardNo+"'>"
						+"<i class='fa fa-angle-right'></i> "+args[i].meetingBoardTitle+"</a></li>";
				}
				$("#meetingBoards").append(htmlText);
				var recordNum = args[0].recordNum;
				////////////////////// 불러온 테이블 끝////////////////////////
				var pagenotmp = args[0].page;

				if (pagenotmp == null) {
					pagenotmp = 1;
				}
				var pageno = Number(pagenotmp);
				if (pageno < 1) {//현재 페이지
					pageno = 1;
				}
				total_record = recordNum;

				var page_per_record_cnt = 10; //페이지 당 레코드 수
				var group_per_page_cnt = 5; //페이지 당 보여줄 번호 수[1],[2],[3],[4],[5]
									//                                                       [6],[7],[8],[9],[10]                                 
				var record_end_no = pageno* page_per_record_cnt;
				var record_start_no = record_end_no- (page_per_record_cnt - 1);
				if (record_end_no > total_record) {
					record_end_no = total_record;
				}
				var total_page = Math.floor(total_record/ page_per_record_cnt+ (total_record%page_per_record_cnt > 0 ? 1: 0));
				if (pageno > total_page) {
					pageno = total_page;
				}
				//             현재 페이지(정수) / 한페이지 당 보여줄 페지 번호 수(정수) + (그룹 번호는 현제 페이지(정수) % 한페이지 당 보여줄 페지 번호 수(정수)>0 ? 1 : 0)
				var group_no = Math.floor(pageno / group_per_page_cnt) + (pageno % group_per_page_cnt > 0 ? 1 : 0);
				//               현재 그룹번호 = 현재페이지 / 페이지당 보여줄 번호수 (현재 페이지 % 페이지당 보여줄 번호 수 >0 ? 1:0)   
				//            ex)    14      =   13(몫)      =    (66 / 5)      1   (1(나머지) =66 % 5)           

				page_eno = group_no	* group_per_page_cnt;
				//               현재 그룹 끝 번호 = 현재 그룹번호 * 페이지당 보여줄 번호 
				//            ex)    70      =   14   *   5
				page_sno = page_eno- (group_per_page_cnt - 1);
				//                현재 그룹 시작 번호 = 현재 그룹 끝 번호 - (페이지당 보여줄 번호 수 -1)
				//            ex)    66   =   70 -    4 (5 -1)
				if (page_eno > total_page) {
					//               현재 그룹 끝 번호가 전체페이지 수 보다 클 경우      
					page_eno = total_page;
					//               현재 그룹 끝 번호와 = 전체페이지 수를 같게
				}

				var prev_pageno = page_sno - group_per_page_cnt; // <<  *[이전]* [21],[22],[23]... [30] [다음]  >>
					//               이전 페이지 번호   = 현재 그룹 시작 번호 - 페이지당 보여줄 번호수   
					//            ex)      46      =   51 - 5            
				var next_pageno = page_sno + group_per_page_cnt; // <<  [이전] [21],[22],[23]... [30] *[다음]*  >>
					//               다음 페이지 번호 = 현재 그룹 시작 번호 + 페이지당 보여줄 번호수
						//            ex)      56      =   51 - 5
				if (prev_pageno < 1) {
							//               이전 페이지 번호가 1보다 작을 경우      
					prev_pageno = 1;
										//               이전 페이지를 1로
				}
				if (next_pageno > total_page) {
									//               다음 페이지보다 전체페이지 수보가 클경우      
					next_pageno = Math.floor(total_page	/ group_per_page_cnt) * group_per_page_cnt + 1;
						//               next_pageno=total_page
						//               다음 페이지 = 전체페이지수 / 페이지당 보여줄 번호수 * 페이지당 보여줄 번호수 + 1 
						//            ex)            =    76 / 5 * 5 + 1   ????????       
				}

				var pageText = "";
				pageText += "<center><a style='color:#363636;margin-right:5px;' class='paging' href='#' onclick=send('${getMeetingBoards }?pageno=1')><i class='fa fa-angle-double-left'></i></a>";
				pageText += "<a style='color:#363636;margin-right:5px;' class='paging' href='#' onclick=send('${getMeetingBoards }?pageno="+ prev_pageno+"')><i class='fa fa-angle-left'></i></a>";
				for (var i = page_sno; i <= page_eno; i++) {
					pageText += "<a style='color:#363636;margin-right:5px;' class='paging' href='#' onclick=send('${getMeetingBoards }?pageno="+i+"')>";
					if (pageno == i) {
						pageText += "[" + i + "]";
						} else {
							pageText += "" + i + "";
						}
						pageText += "</a>";
						<%--   콤마    --%>
						if (i < page_eno) {
							pageText += "<span class='paging'> , </span>";
						}
					}
					pageText += "<a style='color:#363636;margin-right:5px;' class='paging' href='#' onclick=send('${getMeetingBoards }?pageno="+next_pageno+"')><i class='fa fa-angle-right'></i></a>";
					pageText += "<a style='color:#363636;margin-right:5px;' class='paging' href='#' onclick=send('${getMeetingBoards }?pageno="+total_page+"')><i class='fa fa-angle-double-right'></i></a><br class='paging'></center>";
					$("#page").append(pageText);
				},
				error : function(xhr, status, error) {
				},
				"Content-Type" : "application/x-www-form-urlencoded;charset=utf-8"
			});
});

function send(inputUrl) {
	var url = inputUrl;
	var htmlText = "";
	var total_record = 1;
	$(".delete").remove();
	$(".paging").remove();
	var page_eno;
	var page_sno;
	var data = {
		"meetingNo":"${meeting.meetingNo}"
	}
	$.ajax({
		type : "get",
		url : url,
		data : data,
		dataType : "json",
		// xhr.readyState ==4&& xhr.status==200 상황
		success : function(args) {
			var length = args.length;
			console.log(args);
			for (var i = 0; i < length; i++) {
				<c:url value="/retrieveMeetingBoard" var="retrieveMeetingBoard"/>
					htmlText += "<li class='delete'><a href='${retrieveMeetingBoard}?meetingBoardNo="+args[i].meetingBoardNo+"'>"
							+"<i class='fa fa-angle-right'></i> "+args[i].meetingBoardTitle+"</a></li>";
			}
			$("#meetingBoards").append(htmlText);
			////////////////////// 불러온 테이블 끝////////////////////////
			var recordNum = args[0].recordNum;
			var pagenotmp = args[0].page;

			if (pagenotmp == null) {
				pagenotmp = 1;
			}
			var pageno = Number(pagenotmp);
			if (pageno < 1) {//현재 페이지
				pageno = 1;
			}
			total_record = recordNum;

			var page_per_record_cnt = 10; //페이지 당 레코드 수
			var group_per_page_cnt = 5; //페이지 당 보여줄 번호 수[1],[2],[3],[4],[5]
			//									  									  [6],[7],[8],[9],[10]											
			var record_end_no = pageno * page_per_record_cnt;
			var record_start_no = record_end_no - (page_per_record_cnt - 1);
			if (record_end_no > total_record) {
				record_end_no = total_record;
			}
			var total_page = Math.floor(total_record / page_per_record_cnt	+ (total_record % page_per_record_cnt > 0 ? 1	: 0));
			if (pageno > total_page) {
				pageno = total_page;
			}
			//				현재 페이지(정수) / 한페이지 당 보여줄 페지 번호 수(정수) + (그룹 번호는 현제 페이지(정수) % 한페이지 당 보여줄 페지 번호 수(정수)>0 ? 1 : 0)
			var group_no = Math.floor(pageno / group_per_page_cnt) + (pageno % group_per_page_cnt > 0 ? 1 : 0);
			//				현재 그룹번호 = 현재페이지 / 페이지당 보여줄 번호수 (현재 페이지 % 페이지당 보여줄 번호 수 >0 ? 1:0)	
					//				ex) 	14		=	13(몫)		=	 (66 / 5)		1	(1(나머지) =66 % 5)			  
			page_eno = group_no * group_per_page_cnt;
					//					현재 그룹 끝 번호 = 현재 그룹번호 * 페이지당 보여줄 번호 
					//				ex) 	70		=	14	*	5
			page_sno = page_eno - (group_per_page_cnt - 1);
					//				 	현재 그룹 시작 번호 = 현재 그룹 끝 번호 - (페이지당 보여줄 번호 수 -1)
					//				ex) 	66	=	70 - 	4 (5 -1)

			if (page_eno > total_page) {
						//				   현재 그룹 끝 번호가 전체페이지 수 보다 클 경우		
				page_eno = total_page;
						//				   현재 그룹 끝 번호와 = 전체페이지 수를 같게
			}

			var prev_pageno = page_sno - group_per_page_cnt; // <<  *[이전]* [21],[22],[23]... [30] [다음]  >>
					//					이전 페이지 번호	= 현재 그룹 시작 번호 - 페이지당 보여줄 번호수	
					//				ex)		46		=	51 - 5				
			var next_pageno = page_sno + group_per_page_cnt; // <<  [이전] [21],[22],[23]... [30] *[다음]*  >>
					//					다음 페이지 번호 = 현재 그룹 시작 번호 + 페이지당 보여줄 번호수
					//				ex)		56		=	51 - 5
			if (prev_pageno < 1) {
						//					이전 페이지 번호가 1보다 작을 경우		
				prev_pageno = 1;
						//					이전 페이지를 1로
			}
			if (next_pageno > total_page) {
						//					다음 페이지보다 전체페이지 수보가 클경우		
				next_pageno = Math.floor(total_page / group_per_page_cnt) * group_per_page_cnt + 1;
						//					next_pageno=total_page
						//					다음 페이지 = 전체페이지수 / 페이지당 보여줄 번호수 * 페이지당 보여줄 번호수 + 1 
						//				ex)			   = 	76 / 5 * 5 + 1	???????? 		
			}
			var pageText = "";
			pageText += "<a style='color:#323A45;margin-right:5px;' class='paging' href='#' onclick=send('${getMeetingBoards }?pageno=1')><i class='fa fa-angle-double-left'></i></a>";
			pageText += "<a style='color:#323A45;margin-right:5px;' class='paging' href='#' onclick=send('${getMeetingBoards }?pageno="+prev_pageno+"')><i class='fa fa-angle-left'></i></a>";
			for (var i = page_sno; i <= page_eno; i++) {
				pageText += "<a style='color:#323A45;margin-right:5px;' class='paging' href='#' onclick=send('${getMeetingBoards }?pageno="+i+"')>";
				if (pageno == i) {
					pageText += "[" + i + "]";
				} else {
					pageText += "" + i + "";
				}
				pageText += "</a>";
				<%--	콤마	 --%>
				if (i < page_eno) {
					pageText += "<span class='paging'> , </span>";
				}
			}
			pageText += "<a style='color:#323A45;margin-right:5px;' class='paging' href='#' onclick=send('${getMeetingBoards }?pageno="+next_pageno+"')><i class='fa fa-angle-right'></i></a>";
			pageText += "<a style='color:#323A45;margin-right:5px;' class='paging' href='#' onclick=send('${getMeetingBoards }?pageno="+total_page+"')><i class='fa fa-angle-double-right'></i></a><br class='paging'>";
			$("#page").append(pageText);
		},
		error : function(txt, txt2, xhr) {
			console.log("error", xhr);
		},
		"Content-Type" : "application/x-www-form-urlencoded;charset=utf-8"
	});
}

<c:url value="/addFollow" var="addFollow"/>
	$("#follow").on("click", function(){
		if("${login.id}"==""){
			alert("로그인 후에 이용해주십시오.");
		}else if("${login.id}"=="${meeting.id}"){
			alert("자신의 게시물은 스크랩하실 수 없습니다.");
		}else{
			 var allData={
				 "id":"${login.id}",
				 "meetingNo":"${meeting.meetingNo}"
			 };
			$.ajax({
				type:"get",
				url:"${addFollow }",
				data:allData,
				success:function(args){
					console.log(args);
					if(args=="성공"){
						alert("'스크랩' 마이 페이지에서 확인하실 수 있습니다.");
					}else{
						alert("이미 '스크랩'하셨습니다.");
					}
				},
				error:function(txt, txt2, xhr){
					console.log("error", xhr);
				},
				"Content-Type":"application/x-www-form-urlencoded;charset=utf-8"
			});
		}
	});
	
	<c:url value="/meetingDelete" var="meetingDelete"/>
	$("#meeintgDelete").on("click", function(){
		var returnValue
		returnValue=confirm("모임을 삭제하시겠습니까?");
		data={
				"meetingNo":"${meeting.meetingNo}"
		};
		if(returnValue){
			$.ajax({
				type:"get",
				url:"${meetingDelete }",
				data: data,
				success:function(args){
					if(args=="성공"){
						alert("모임이 삭제 되었습니다.");
						location.href="<%=request.getContextPath()%>/meeting/meeting_main.jsp";
											} else {
												alert("모임 삭제 실패!");
											}
										},
										error : function(txt, txt2, xhr) {
										},
										"Content-Type" : "application/x-www-form-urlencoded;charset=utf-8"
									});
						}
					});
</script>
</html>