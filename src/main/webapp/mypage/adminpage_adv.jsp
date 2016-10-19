<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
<jsp:include page="/layout/whatjs.jsp"></jsp:include>
</head>
<body>


   <div class="container-fluid">
      <div class="row">
         <jsp:include page="/layout/header.jsp"></jsp:include>
      </div>
      <br> <br>

		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="dividerHeading">
						<h4>
							<span>관리자 계정 (광고배너 관리)&nbsp;&nbsp;<a
								href="adminpage_adv.jsp" style="color: #27AB99;"><i
									class="fa fa-chevron-circle-right"></i></a>
							</span>
						</h4>
					</div>
					<label class="col-sm-3 control-label"></label>
					<br> <br>
					<div class="row sub_content">
						<div class="col-lg-12 col-md-12 col-sm-12">
							<form id="form" class="form-horizontal" role="form" method="post"
								action="#">
								<div class="form-group">
									<label class="col-sm-3 control-label" for="image">배너
										이미지 등록</label>
									<div class="col-sm-3">
										<input id="image" type="file"></input>
										<div id="preview">
											<img id="imagePreview" />
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label" for="image">광고 제목</label>
									<div class="col-sm-3">
										<input type="text" 
											class="form-control col-sm-3" id="adsTitle"></input>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label" for="image">광고 링크</label>
									<div class="col-sm-3">
										<input type="url"  class="form-control col-sm-3"
											id="link"> 
									</div>
								</div>
								<!-- <div class="form-group">
									<label class="col-sm-3 control-label" for="image">관리자
										ID</label>
									<div class="col-sm-3">
										<input type="text" path="adminId"
											class="form-control col-sm-3" id="adminId"></input>
									</div>
								</div> -->
								<br>
								<div class="form-group">
									<div class="col-sm-12 text-center">
										<button class="btn btn-primary" type="button"
											style="background-color:orange; border-color:#fff;" id="adjoin">
                 						 광고 등록<i class="fa fa-check spaceLeft"></i>
										</button>
									</div>
								</div>
      

            <div class="row">
               <jsp:include page="/layout/footer.jsp"></jsp:include>
            </div>
         </div>
      </div>
   </div>




</body>

<script>
   var reader;
   var adsImg;

   /* 읽어온 이미지를 미리보기에 쏴준다 */
   $("#image").change(function() {
      readUploadImage(this);
   });

	function readUploadImage(inputObject) {
		if (window.File && window.FileReader) {
			if (inputObject.files && inputObject.files[0]) {
				/* 이미지 파일인지도 체크 */
				if (!(/image/i).test(inputObject.files[0].type)) {
					alert("이미지 파일을 선택해 주세요!");
					return false;
				}
				/* FileReader 를 준비 한다. */
				var reader = new FileReader();
				var file = inputObject.files[0];
				var fileSize = 0;
				reader.onload = function(e) {
					/* reader가 다 읽으면 imagePreview에 뿌려 주는 로직 부분  */
					if (window.File && window.FileReader && window.FileList
							&& window.Blob) {
						//파일사이즈를 fsize에 넣는다.
						var fsize = file.size;
						if (fsize > 1548576) // 1 mb 기준 (1048576) 여기에서 파일 사이즈 체크 하는 로직
						{
							alert(fsize
									+ " bites\n 사이즈가 너무 큽니다. 150KB 미만으로 해주세요!");
							inputObject.files[0] = null;
							adsImg = null;
							// 미리보기 부분을 null로 바꾼다.
						} else {
							$('#imagePreview').attr('src', e.target.result);
							$('#imagePreview').css('weight', "150px");
							$('#imagePreview').css('height', "50px");
							//썸네일로 미리보기 된 결과값(base64로 인코딩)을  result에 넣는다 
							//문자열 앞에 ""를 넣기 위해 앞뒤로 추가
							adsImg = "\"" + e.target.result + "\"";
							
							$("#adsImg").val(adsImg);
							adsImg = "\"" + e.target.result + "\"";
						}
					} else {
						alert("HTML5를 지원하는 브라우저에서 접속해 주세요");
					}
					/* console.log(result+"결과"); */
				}
				/* input file에 있는 파일 하나를 읽어온다. */
				reader.readAsDataURL(inputObject.files[0]);
			}
		} else {
			alert("HTML5를 지원하는 브라우저에서 접속해 주세요");
		}
	}
	
	/*  광고 데이타베이스에 저장  */

	<c:url value="/insertAd" var="insertAd"/>
	$("#adjoin").on("click", function(){
		
		allData={
			"adsTitle":$("#adsTitle").val(),
			"adsImg":adsImg,
			"link":$("#link").val(),
			"adminId":"${admin.adminId}"
		};
		
		$.ajax({
			type:"post",
			url:"${insertAd }",
			data: allData,
			success:function(data){
				if(data=="저장"){
					alert("저장되었습니다.");
					<%-- location.href="<%=request.getContextPath()%>/"; --%>
				}else{
					alert("저장 실패");
				}
			},
			error:function(xhr, status, error){
				alert(error);
			},
			ContentType:"application/x-www-form-urlencoded;charset=UTF-8"
		});
	});
   function readUploadImage(inputObject) {
      if (window.File && window.FileReader) {
         if (inputObject.files && inputObject.files[0]) {
            /* 이미지 파일인지도 체크 */
            if (!(/image/i).test(inputObject.files[0].type)) {
               alert("이미지 파일을 선택해 주세요!");
               return false;
            }
            /* FileReader 를 준비 한다. */
            var reader = new FileReader();
            var file = inputObject.files[0];
            var fileSize = 0;
            reader.onload = function(e) {
               /* reader가 다 읽으면 imagePreview에 뿌려 주는 로직 부분  */
               if (window.File && window.FileReader && window.FileList
                     && window.Blob) {
                  //파일사이즈를 fsize에 넣는다.
                  var fsize = file.size;
                  if (fsize > 1548576) // 1 mb 기준 (1048576) 여기에서 파일 사이즈 체크 하는 로직
                  {
                     alert(fsize
                           + " bites\n 사이즈가 너무 큽니다. 150KB 미만으로 해주세요!");
                     inputObject.files[0] = null;
                     adsImg = null;
                     // 미리보기 부분을 null로 바꾼다.
                  } else {
                     $('#imagePreview').attr('src', e.target.result);
                     $('#imagePreview').css('weight', "150px");
                     $('#imagePreview').css('height', "50px");
                     //썸네일로 미리보기 된 결과값(base64로 인코딩)을  result에 넣는다 
                     //문자열 앞에 ""를 넣기 위해 앞뒤로 추가
                     adsImg = "\"" + e.target.result + "\"";
                     
                     $("#adsImg").val(adsImg);
                     adsImg = "\"" + e.target.result + "\"";
                  }
               } else {
                  alert("HTML5를 지원하는 브라우저에서 접속해 주세요");
               }
               /* console.log(result+"결과"); */
            }
            /* input file에 있는 파일 하나를 읽어온다. */
            reader.readAsDataURL(inputObject.files[0]);
         }
      } else {
         alert("HTML5를 지원하는 브라우저에서 접속해 주세요");
      }
   }
   
   /*  광고 데이타베이스에 저장  */

   <c:url value="/insertAd" var="insertAd"/>
   $("#adjoin").on("click", function(){
      
      allData={
         "adsTitle":$("#adsTitle").val(),
         "adsImg":adsImg,
         "link":$("#link").val(),
         "adminId":"${admin.adminId}"
      };
      
      $.ajax({
         type:"post",
         url:"${insertAd }",
         data: allData,
         success:function(data){
            if(data=="저장"){
               alert("저장되었습니다.");
                location.href="<%=request.getContextPath()%>/mypage/adminpage_adv_board.jsp";
            }else{
               alert("저장 실패");
            }
         },
         error:function(xhr, status, error){
            alert(error);
         },
         ContentType:"application/x-www-form-urlencoded;charset=UTF-8"
      });
   });

   
</script>
</html>