<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>뭐 하 지 ?</title>
	<meta name="description" content="">

</head>
<body>
	
	
	<div class="container-fluid">
		<div class="row">
			<jsp:include page="/layout/header.jsp"></jsp:include>
		</div>
		<br>
		<br>
	
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="dividerHeading">
						<h4><span>관리자 계정 (광고글 관리)&nbsp;&nbsp;<a href="adminpage_board.jsp" style="color:#27AB99;"><i class="fa fa-chevron-circle-right"></i></a> </span></h4>
					</div>
					 <label class="col-sm-3 control-label"></label>
					 <div class="col-sm-6">
					 <center>
          			  <div>
          			  		<select style="height:28px;">
          			  			<option>사용자</option>
          			  			<option>글번호</option>
          			  		</select>
							<input class="input-text" name="s" id="search" type="text" />
							<button style="background-color:#27AB99;color:#fff;border-style: none;"><i class="fa fa-search"></i></button>
										</div>
               		</div>
               		</center>
               		<button onclick="location='<%=request.getContextPath()%>/mypage/adminpage_adv.jsp'" style="background-color:#27AB99;color:#fff;border-style: none;">광고 등록</button>
               		<br>
               		<br>
					<div class="row sub_content">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <table class="table table-striped table-hover">
                    <thead>
                    <tr>
                        <th>NO</th>
                        <th>Image</th>
                        <th>Title</th>
                        <!-- <th>Link</th> -->
                        <th>AdminId</th>
                        <th>option</th>
                    </tr>
                    </thead>
                    <tbody id = "tbody">
                   
                   <!--동적으로 리스트가 생성됩니다.  -->
                    
                    </tbody>
                </table>
                <center>
                
               </center>
            </div>
        </div> <!--./row-->
				</div>
			</div>
		</div>
	
		<div class="row">
			<jsp:include page="/layout/footer.jsp"></jsp:include>
		</div>
	</div>


	

</body>

<script>
var noAdsNo ;
var regiAdsNo ;
var stopAdsNo;
var delAdsNo ;

var adsNo ;
var adsTitle;
var adsImg;
var link;
var adminId;
	var optionFlag;
	<c:url value="/loadingAd" var="loadingAd"/>
	$(document).ready(function() {
		listloading();
	});/*document ready  */
	
	function listloading(){
		$('.onerow>td').remove();
		$.ajax({
			 url:"${loadingAd}",
			 type:"get",
			 success:function(res){
				var fromServerToObj = JSON.parse(res);
				console.log(fromServerToObj);
				var row="";
				$.each(fromServerToObj,function(index,item){
					/*데이터를 받아 변수에 삽입하는 부분  */
					adsNo = item.adsNo;
					 adsTitle= item.adsTitle;
					 adsImg= item.adsImg;
					 link= item.link;
					 adminId= item.adminId;
					 optionFlag=item.optionFlag;
			
					/*동적으로 각 태그 id를 만들기 위한 변수  */	
					 noAdsNo = adsNo+"adsNo";
					 regiAdsNo =adsNo+"regi";
					 stopAdsNo = adsNo+"stop";
					 delAdsNo = adsNo+"del";

					 if(optionFlag==0){
						console.log("0입니다");
						row = "<tr class ='onerow'>"
								+"<td id='"+noAdsNo+"'>"
								+adsNo+"</td>"
								+"<td>"+"<img src="+adsImg+"width='60px' height='50px'/>"+"</td>"
								+"<td>"+adsTitle+"</td>"
								/* +"<td>"+link+"</td>" */
								+"<td>"+adminId+"</td>"
								+"<td>"
								+"<Button onclick=uploadAd('"+adsNo+"') id='"+regiAdsNo+"' >광고 올리기</Button>"
								/* +"<Button onclick=stopAd('"+adsNo+"') id ='"+stopAdsNo+"'>광고 내리기</Button>" */
								+"<Button onclick=delAd('"+adsNo+"') id = '"+delAdsNo+"'>영구 삭제</Button>"
								+"</td>"
								+"</tr>";
					}
					else{
						console.log("1입니다");
						row = "<tr class ='onerow'>"
								+"<td id='"+noAdsNo+"'>"
								+adsNo+"</td>"
								+"<td>"+"<img src="+adsImg+"width='60px' height='50px'/>"+"</td>"
								+"<td>"+adsTitle+"</td>"
								/* +"<td>"+link+"</td>" */
								+"<td>"+adminId+"</td>"
								+"<td>"
								/* +"<Button onclick=uploadAd('"+adsNo+"') id='"+regiAdsNo+"' >광고 등록</Button>" */
								 +"<Button onclick=stopAd('"+adsNo+"') id ='"+stopAdsNo+"'>광고 내리기</Button>" 
								+"<Button onclick=delAd('"+adsNo+"') id = '"+delAdsNo+"'>영구 삭제</Button>"
								+"</td>"
								+"</tr>";
					}
					$('tbody').append(row);
				});/*$each  */
			},/*suceess  */
			error:function(xhr,status,error){
		 	   console.log("불러오기 실패:"+error);
			}/*error  */
		});/*ajax  */
	}
	
	
	
	/*버튼 클릭 메소드 1 광고 추가 */
	<c:url value="/uploadAd" var="uploadAd"/>
	var uploadAd = function(adsNo){
		var btn;
		$.ajax({
		 	url:"${uploadAd}",
		 	type:"get",
		 	data:{"adsNo":adsNo},
			success:function(res){
				/* var fromServerToObj = JSON.parse(res); */
				console.log("넘버 전송 성공");
				/* console.log(fromServerToObj+"값"); */
				/* btn = document.getElementById(fromServerToObj); */
				btn = document.getElementById(res);
				console.log("btn:"+btn);
				listloading();
			/* btn.disabled = 'disabled'; */
			/* btn.style.visibility ='hidden'; */
			},/*suceess  */
			error:function(xhr,status,error){
			    console.log("넘버전송 실패:"+error);
			}/*error  */
		});/*ajax  */
	}
	 
	 /*버튼 클릭 메소드 1 광고 추가 */
	<c:url value="/stopAd" var="stopAd"/>
	var stopAd = function(adsNo){
		$.ajax({
			url:"${stopAd}",
			type:"get",
			data:{"adsNo":adsNo},
			success:function(res){
				console.log("넘버 전송 성공");
				btn = document.getElementById(res);
				console.log("btn:"+btn);
				btn.disabled = 'disabled';
				btn.style.visibility ='hidden';
				var regi =adsNo+"regi";
				var regibtn = document.getElementById(regi);
				console.log("regibtn:"+regibtn);
				listloading();
			},/*suceess  */
			error:function(xhr,status,error){
	  			console.log("넘버전송 실패:"+error);
			}/*error  */
		});/*ajax  */
	}
	
	/*버튼 클릭 메소드 1 광고 추가 */
	<c:url value="/delAd" var="delAd"/>
	var delAd = function(adsNo){
		
		$.ajax({
			url:"${delAd}",
			type:"get",
			data:{"adsNo":adsNo},
			success:function(res){
				console.log("삭제 요청 전송 성공");
				alert(res);
				listloading();
			},/*suceess  */
			error:function(xhr,status,error){
				console.log("넘버전송 실패:"+error);
			}/*error  */
		});/*ajax  */
	}

</script>
</html>