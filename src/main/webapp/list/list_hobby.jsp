<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>뭐 하 지 ?</title>
<meta name="description" content="">
<jsp:include page="/layout/whatcss.jsp"></jsp:include>
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
	<jsp:include page="/layout/header.jsp"></jsp:include>
	<br><br>
	<div class="container-fluid">
		<div class="row sub_content">
			<div class="col-lg-12 col-md-12 col-sm-12">
				<div class="dividerHeading">
					<h4>
						<span>취미</span>
					</h4>
					<c:if test="${!empty login}">
						<span class="input-group-btn">
							<button
								onclick="location='<%=request.getContextPath()%>/board/board_write.jsp'"
								id="writeboard" class="btn btn-success"
								style="background-color: #27AB99; border-color: #fff; float: right;">
								글작성 <i class="fa fa-pencil"></i>
							</button>
						</span>
					</c:if>
				</div>
				<div id="jcarousel recent-work-jc">
					<ul class="jcarousel-list" id="boardByHobby"
						style="margin-left: 15px; margin-right: 15px;">
					</ul>
				</div>
				<div style="text-align: center;" id="page"></div>
			</div>
		</div>
		<br> <br> <br>
	</div>

	<!--Start recent work-->
	<br>
	<br>

	<jsp:include page="/layout/footer.jsp"></jsp:include>

</body>
<jsp:include page="/layout/whatjs.jsp"></jsp:include>
<script>
	var category = "";
	<c:url value="/getBoards" var="getBoards"/>
	$(document)
			.ready(
					function() {
						var htmlText = "";
						var total_record = 1;
						$(".delete").remove();
						var page_eno;
						var page_sno;
						var data = {
							"category" : "취미"
						};
						$
								.ajax({
									type : "get",
									url : "${getBoards }?pageno=1",
									data : data,
									dataType : "json",
									success : function(args) {
										var length = args.length;
										for (var i = 0; i < length; i++) {
											<c:url value="/retrieve" var="retrieve"/>
											htmlText += "<li style='margin-left:20px;margin-right:20px;' class='col-sm-3 col-md-3 col-lg-3 delete'>"
													+ "<div class='recent-item'>"
													+ "<figure>"
													+ "<div class='touching medium'>"
													+ "<img src="+args[i].mainImg+" width='200px' height='145px'/>"
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
										category = args[0].category;
										$("#boardByHobby").append(htmlText);
										var recordNum = args[0].recordNum;
										////////////////////// 불러온 테이블 끝////////////////////////
										var pagenotmp = args[0].page;


            var pageText="";
            pageText+="<a style='color:#323A45;' class='paging' href='#' onclick=send('${getBoards }?pageno=1&category="+category+"')>[맨앞으로]</a>";
            pageText+="<a style='color:#323A45;' class='paging' href='#' onclick=send('${getBoards }?pageno="+prev_pageno+"&category="+category+"')>[이전]</a>";
            for(var i=page_sno; i<=page_eno; i++){ 
               pageText+="<a class='paging' href='#' onclick=send('${getBoards }?pageno="+i+"&category="+category+"')>";
               if(pageno == i){ 
                  pageText+="["+i+"]";
               }else{ 
                  pageText+=""+i+""; 
               } 
               pageText+="</a>";
               <%--   콤마    --%>   
               if(i<page_eno){
                  pageText+="<span class='paging'> , </span>";
               } 
            } 
            pageText+="<a style='color:#323A45;' class='paging' href='#' onclick=send('${getBoards }?pageno="+next_pageno+"&category="+category+"')>[다음]</a>";         
            pageText+="<a style='color:#323A45;' class='paging' href='#' onclick=send('${getBoards }?pageno="+total_page+"&category="+category+"')>[맨뒤로]</a><br class='paging'>";            
            $("#page").append(pageText);
         },
         error : function(xhr, status, error) {
         },
         "Content-Type" : "application/x-www-form-urlencoded;charset=utf-8"
      });
   });
 
	function send(inputUrl){
		var url=inputUrl;
		var htmlText="";
		var total_record=1;
		$(".delete").remove();	

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
										var record_end_no = pageno
												* page_per_record_cnt;
										var record_start_no = record_end_no
												- (page_per_record_cnt - 1);
										if (record_end_no > total_record) {
											record_end_no = total_record;
										}
										var total_page = Math
												.floor(total_record
														/ page_per_record_cnt
														+ (total_record
																% page_per_record_cnt > 0 ? 1
																: 0));
										if (pageno > total_page) {
											pageno = total_page;
										}
										//             현재 페이지(정수) / 한페이지 당 보여줄 페지 번호 수(정수) + (그룹 번호는 현제 페이지(정수) % 한페이지 당 보여줄 페지 번호 수(정수)>0 ? 1 : 0)
										var group_no = Math.floor(pageno
												/ group_per_page_cnt)
												+ (pageno % group_per_page_cnt > 0 ? 1
														: 0);
										//               현재 그룹번호 = 현재페이지 / 페이지당 보여줄 번호수 (현재 페이지 % 페이지당 보여줄 번호 수 >0 ? 1:0)   
										//            ex)    14      =   13(몫)      =    (66 / 5)      1   (1(나머지) =66 % 5)           

										page_eno = group_no
												* group_per_page_cnt;
										//               현재 그룹 끝 번호 = 현재 그룹번호 * 페이지당 보여줄 번호 
										//            ex)    70      =   14   *   5
										page_sno = page_eno
												- (group_per_page_cnt - 1);
										//                현재 그룹 시작 번호 = 현재 그룹 끝 번호 - (페이지당 보여줄 번호 수 -1)
										//            ex)    66   =   70 -    4 (5 -1)

										if (page_eno > total_page) {
											//               현재 그룹 끝 번호가 전체페이지 수 보다 클 경우      
											page_eno = total_page;
											//               현재 그룹 끝 번호와 = 전체페이지 수를 같게
										}

										var prev_pageno = page_sno
												- group_per_page_cnt; // <<  *[이전]* [21],[22],[23]... [30] [다음]  >>
										//               이전 페이지 번호   = 현재 그룹 시작 번호 - 페이지당 보여줄 번호수   
										//            ex)      46      =   51 - 5            
										var next_pageno = page_sno
												+ group_per_page_cnt; // <<  [이전] [21],[22],[23]... [30] *[다음]*  >>
										//               다음 페이지 번호 = 현재 그룹 시작 번호 + 페이지당 보여줄 번호수
										//            ex)      56      =   51 - 5
										if (prev_pageno < 1) {
											//               이전 페이지 번호가 1보다 작을 경우      
											prev_pageno = 1;
											//               이전 페이지를 1로
										}
										if (next_pageno > total_page) {
											//               다음 페이지보다 전체페이지 수보가 클경우      
											next_pageno = Math.floor(total_page
													/ group_per_page_cnt)
													* group_per_page_cnt + 1;
											//               next_pageno=total_page
											//               다음 페이지 = 전체페이지수 / 페이지당 보여줄 번호수 * 페이지당 보여줄 번호수 + 1 
											//            ex)            =    76 / 5 * 5 + 1   ????????       
										}

										var pageText = "";
										pageText += "<a class='paging' href='#' onclick=send('${getBoards }?pageno=1&category="
												+ category + "')>[맨앞으로]</a>";
										pageText += "<a class='paging' href='#' onclick=send('${getBoards }?pageno="
												+ prev_pageno
												+ "&category="
												+ category + "')>[이전]</a>";
										for (var i = page_sno; i <= page_eno; i++) {
											pageText += "<a class='paging' href='#' onclick=send('${getBoards }?pageno="
													+ i
													+ "&category="
													+ category + "')>";
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
										pageText += "<a class='paging' href='#' onclick=send('${getBoards }?pageno="
												+ next_pageno
												+ "&category="
												+ category + "')>[다음]</a>";
										pageText += "<a class='paging' href='#' onclick=send('${getBoards }?pageno="
												+ total_page
												+ "&category="
												+ category
												+ "')>[맨뒤로]</a><br class='paging'>";
										$("#page").append(pageText);
									},
									error:function(xhr, status, error) {
									},
									"Content-Type" : "application/x-www-form-urlencoded;charset=utf-8"
								});
					});

	
</script>
</html>