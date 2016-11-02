<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>뭐 하 지 ?</title>
	<meta name="description" content="">
<style>
.title {
	width: 220px;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}
</style>
</head>
<body>
	<div class="row">
         <jsp:include page="/layout/header.jsp"></jsp:include>
      </div>
      <br>
 	<br>
  
	<div class="container-fluid">
		<div class="row sub_content">
			<div class="col-lg-12 col-md-12 col-sm-12">
				<div class="dividerHeading">
					<h4>
					<span>내 주변 추천</span>
				</h4>
					
					<br><br>
				</div>
				<div class="col-md-12" id="jcarousel recent-work-jc">
					<ul class="jcarousel-list" id="boardList">
					</ul>
				</div>
				
				
				<div style="text-align: center;">
					<ul id="page" class="pagination pull-center mrgt-0">
								
					</ul>
				</div>
				
							
						
			</div>
		</div>
	</div>
   <br>
   <br>

   <jsp:include page="/layout/footer.jsp"></jsp:include>


</body>

<script>
	var strdo="${strdo}";
	var strcity="${strcity}";
	
	<c:url value="/getNearBoards" var="getNearBoards"/>
	$(document)	.ready(function() {
			var htmlText = "";
			var total_record = 1;
			$(".delete").remove();
			var page_eno;
			var page_sno;
			
			data={
				"strdo":strdo,
				"strcity":strcity,
				"loginLocation": "${login.region }"
			};
			
			$.ajax({
				type : "get",
				url : "${getNearBoards }?pageno=1",
				data:data,
				dataType : "json",
				success : function(args) {
					var length = args.length;
					for (var i = 0; i < length; i++) {
						<c:url value="/retrieve" var="retrieve"/>
						htmlText += "<li class='col-sm-3 col-md-3 col-lg-3 delete'>"
									+ "<div class='recent-item'>"
									+ "<figure>"
									+ "<div class='touching medium'>"
									+"<img src="+args[i].mainImg+" width='200px' height='145px'/>"
									+ "</div>"
									+ "<figcaption class='item-description'  href='${retrieve}?boardNo="
									+ args[i].boardNo
									+ "'>"
									+ "<h5>"
									+ args[i].boardTitle
									+ "</h5>"
									+ "</figcaption>"
									+ "</figure>"
									+ "</div>"
									+ "<div class='title'><b><a style='color:#363636;' href='${retrieve}?boardNo="
									+ args[i].boardNo
									+ "' class='hover-link'><i class='fa fa-hand-o-right'></i>&nbsp;"
									+ args[i].boardTitle
									+ "</a></b></div>"
									+ "</li>"
						}
						category=args[0].category;
						$("#boardList").append(htmlText);
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
						var page_per_record_cnt = 16; //페이지 당 레코드 수
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
						pageText += "<li><a style='background-color:#27AB99;color:#363636;margin-right:5px;' class='paging' href='#' onclick=send('${getNearBoards }?pageno=1&category="+ category +"')><i class='fa fa-angle-double-left'></i></a></li>";
						pageText += "<li><a style='color:#363636;margin-right:5px;' class='paging' href='#' onclick=send('${getNearBoards }?pageno="+ prev_pageno+"&category="+category+"')><i class='fa fa-angle-left'></i></a></li>";
						for (var i = page_sno; i <= page_eno; i++) {
							pageText += "<li><a style='color:#363636;margin-right:5px;' class='paging' href='#' onclick=send('${getNearBoards }?pageno="+i+"&category="+category+"')>";
							if (pageno == i) {
								pageText += "" + i + "";
								} else {
									pageText += "" + i + "";
								}
								pageText += "</a></li>";
								<%--   콤마    --%>
								if (i < page_eno) {
									pageText += "<span class='paging'> , </span>";
								}
							}
							pageText += "<li><a style='color:#363636;margin-right:5px;' class='paging' href='#' onclick=send('${getNearBoards }?pageno="+next_pageno+"&category="+category+"')><i class='fa fa-angle-right'></i></a></li>";
							pageText += "<li><a style='background-color:#27AB99;color:#363636;' class='paging' href='#' onclick=send('${getNearBoards }?pageno="+total_page+"&category="+category+"')><i class='fa fa-angle-double-right'></i></a></li><br class='paging'>";
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
			
			data={
					"strdo":strdo,
					"strcity":strcity,
					"loginLocation":"${login.region }" 
			};
			
			$.ajax({
				type : "get",
				url : url,
				data:data,
				dataType : "json",
				// xhr.readyState ==4&& xhr.status==200 상황
				success : function(args) {
					var length = args.length;
					console.log(args);
					for (var i = 0; i < length; i++) {
						<c:url value="/retrieve" var="retrieve"/>
						htmlText += "<li class='col-sm-3 col-md-3 col-lg-3 delete'>"
								+ "<div class='recent-item'>"
								+ "<figure>"
								+ "<div class='touching medium'>"
								+ "<img src="+args[i].mainImg+" width='200px' height='145px'/>"
								+ "</div>"
								+ "<div class='option'>"
								+ "<a style='color:#323A45;' href='${retrieve}?boardNo="
								+ args[i].boardNo
								+ "' class='hover-link'><i class='fa fa-arrow-right'></i></a>"
								+ "</div>"
								+ "<figcaption class='item-description'>"
								+ "<h5>"
								+ args[i].boardTitle
								+ "</h5>"
								+ "</figcaption>"
								+ "</figure>"
								+ "</div>"
								+ "<div class='title'><b><a style='color:#363636;' href='${retrieve}?boardNo="
								+ args[i].boardNo
								+ "' class='hover-link'><i class='fa fa-hand-o-right'></i>&nbsp;"
								+ args[i].boardTitle
								+ "</a></b></div>"
								+ "</li>";
					}
					$("#boardList").append(htmlText);
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

					var page_per_record_cnt = 16; //페이지 당 레코드 수
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
					pageText += "<li><a style='background-color:#27AB99;color:#323A45;margin-right:5px;' class='paging' href='#' onclick=send('${getNearBoards }?pageno=1&category="+category+"')><i class='fa fa-angle-double-left'></i></a></li>";
					pageText += "<li><a style='color:#323A45;margin-right:5px;' class='paging' href='#' onclick=send('${getNearBoards }?pageno="+prev_pageno+"&category="+category+"')><i class='fa fa-angle-left'></i></a></li>";
					for (var i = page_sno; i <= page_eno; i++) {
						pageText += "<li><a style='color:#323A45;margin-right:5px;' class='paging' href='#' onclick=send('${getNearBoards }?pageno="+i+"&category="+category+"')>";
						if (pageno == i) {
							pageText += "" + i + "";
						} else {
							pageText += "" + i + "";
						}
						pageText += "</a></li>";
						<%--	콤마	 --%>
						if (i < page_eno) {
							pageText += "<span class='paging'> , </span>";
						}
					}
					pageText += "<li><a style='color:#323A45;margin-right:5px;' class='paging' href='#' onclick=send('${getNearBoards }?pageno="+next_pageno+"&category="+category+"')><i class='fa fa-angle-right'></i></a></li>";
					pageText += "<li><a style='background-color:#27AB99;color:#323A45;margin-right:5px;' class='paging' href='#' onclick=send('${getNearBoards }?pageno="+total_page+"&category="+category+"')><i class='fa fa-angle-double-right'></i></a></li><br class='paging'>";
					$("#page").append(pageText);
				},
				error : function(txt, txt2, xhr) {
					console.log("error", xhr);
				},
				"Content-Type" : "application/x-www-form-urlencoded;charset=utf-8"
			});
		}
</script>
</html>