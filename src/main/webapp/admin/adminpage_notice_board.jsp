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
						<h4><span>관리자 계정 (알림 관리)&nbsp;&nbsp;<a href="adminpage_board.jsp" style="color:#27AB99;"><i class="fa fa-chevron-circle-right"></i></a> </span></h4>
					</div>
					 <label class="col-sm-3 control-label"></label>
					 <div class="col-sm-6">
					 <center>
          			  <div>
					</div>
               		</div>
               		</center>
               		<button onclick="location='<%=request.getContextPath()%>/admin/adminpage_notice.jsp'" style="background-color:#27AB99;color:#fff;border-style: none;">알림 등록</button>
               		<br>
               		<br>
					<div class="row sub_content">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <table class="table table-striped table-hover">
                    <thead>
                    <tr>
                        <th>NO</th>
                        <th>Target</th>
                        <th>Title</th>
                        <!-- <th>Link</th> -->
                        <th>Content</th>
                        <th>Link</th>
                        <th>Option</th>
                    </tr>
                    </thead>
                    <tbody id = "tbody">
                   
                   <!--동적으로 리스트가 생성됩니다.  -->
                    
                    </tbody>
                </table>
               
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

var notiNo ;
var notiTarget;
var notiTitle;
var notiContent;
var link;

<c:url value="/loadingNoti" var="loadingNoti"/>
$(document).ready(function() {
	listloading();

});/*document ready  */

function listloading(){
	
	$('.onerow>td').remove();
	
	$.ajax({
		 url:"${loadingNoti}",
		 type:"get",

		 success:function(res){

		
		var fromServerToObj = JSON.parse(res);
		
		console.log(fromServerToObj);
		
		var row="";
		
		$.each(fromServerToObj,function(index,item){
		
	/*데이터를 받아 변수에 삽입하는 부분  */
		 notiNo = item.notiNo;
		 notiTitle= item.notiTitle;
		 notiTarget= item.notiTarget;
		 link= item.link;
		 notiContent= item.notiMessage;
		
		/*동적으로 각 태그 id를 만들기 위한 변수  */	
		 noAdsNo = notiNo+"notiNo";
		 regiAdsNo =notiNo+"regi";
		 stopAdsNo = notiNo+"stop";
		 delAdsNo = notiNo+"del";

		 
		if(notiTarget==0){
			console.log("0은 전체알림 입니다");
		row = "<tr class ='onerow'>"
		+"<td id='"+noAdsNo+"'>"
		+notiNo+"</td>"
		+"<td>전체</td>"
		+"<td>"+notiTitle+"</td>"
		+"<td>"+notiContent+"</td>"
		+"<td>"+link+"</td>"
		+"<td>"
		
		
		+"<Button style='background-color:#27AB99;color:#fff;border-style: none;' onclick=delAd('"+notiNo+"') id = '"+delAdsNo+"'>삭제</Button>"
		
		+"</td>"
		+"</tr>";
		
		}
		
		else if(notiTarget==1){
			console.log("1은 수신동의 입니다");
		row = "<tr class ='onerow'>"
		+"<td id='"+noAdsNo+"'>"
		+notiNo+"</td>"
		+"<td>수신동의</td>"
		+"<td>"+notiTitle+"</td>"
		+"<td>"+notiContent+"</td>"
		+"<td>"+link+"</td>"
		+"<td>"
		
		
		+"<Button style='background-color:#27AB99;color:#fff;border-style: none;' onclick=delAd('"+notiNo+"') id = '"+delAdsNo+"'>삭제</Button>"
		
		+"</td>"
		+"</tr>";
		
		}
		
		else if(notiTarget==2){
			console.log("2는 직장인입니다");
		row = "<tr class ='onerow'>"
		+"<td id='"+noAdsNo+"'>"
		+notiNo+"</td>"
		+"<td>직장인</td>"
		+"<td>"+notiTitle+"</td>"
		+"<td>"+notiContent+"</td>"
		+"<td>"+link+"</td>"
		+"<td>"
		
		
		+"<Button style='background-color:#27AB99;color:#fff;border-style: none;' onclick=delAd('"+notiNo+"') id = '"+delAdsNo+"'>삭제</Button>"
		
		+"</td>"
		+"</tr>";
		
		}
		
		else if(notiTarget==3){
			console.log("3은 학생입니다");
		row = "<tr class ='onerow'>"
		+"<td id='"+noAdsNo+"'>"
		+notiNo+"</td>"
		+"<td>학생</td>"
		+"<td>"+notiTitle+"</td>"
		+"<td>"+notiContent+"</td>"
		+"<td>"+link+"</td>"
		+"<td>"
		
		
		+"<Button style='background-color:#27AB99;color:#fff;border-style: none;' onclick=delAd('"+notiNo+"') id = '"+delAdsNo+"'>삭제</Button>"
		
		+"</td>"
		+"</tr>";
		
		}
		
		else if(notiTarget==4){
			console.log("4는 기타입니다");
		row = "<tr class ='onerow'>"
		+"<td id='"+noAdsNo+"'>"
		+notiNo+"</td>"
		+"<td>기타</td>"
		+"<td>"+notiTitle+"</td>"
		+"<td>"+notiContent+"</td>"
		+"<td>"+link+"</td>"
		+"<td>"
		
		
		+"<Button style='background-color:#27AB99;color:#fff;border-style: none;' onclick=delAd('"+notiNo+"') id = '"+delAdsNo+"'>삭제</Button>"
		
		+"</td>"
		+"</tr>";
		
		}
		
		
		$('tbody').append(row);
		
		
	});/*$each  */
		
		
	},

	error:function(xhr,status,error){
	    console.log("불러오기 실패:"+error);
	}

	});
	}

<c:url value="/delNoti" var="delNoti"/>
var delAd = function(notiNo){
	
	$.ajax({
	 url:"${delNoti}",
	 type:"get",
	 data:{"notiNo":notiNo},
		success:function(res){
		console.log("삭제 요청 전송 성공");
		alert(res);
		listloading();
	
		},

 		error:function(xhr,status,error){
  			console.log("넘버전송 실패:"+error);
		}

	});
	
	
} 


  
 
 
 















</script>
</html>