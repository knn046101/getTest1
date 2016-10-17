<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>

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
							<span><a href="adminpage_adv_board.jsp"
								style="color: #27AB99;"><i class="fa fa-chevron-circle-left"></i></a>&nbsp;&nbsp;관리자
								계정 (광고배너 관리)&nbsp;&nbsp; </span>
						</h4>
					</div>
					<label class="col-sm-3 control-label"></label> <br> <br>
					<div class="row sub_content center">
						<div class="col-lg-12 col-md-12 col-sm-12">
							<div class="col-lg-2 col-md-2 col-sm-2"></div>
							<c:url value="/addAdv" var="addAdv" />
							<form id="form" class="form-horizontal" role="form" method="post"
								action="${addAdv}">
								<div class="form-group">
									<label class="col-sm-3 control-label" for="image">배너
										이미지 등록</label>
									<div class="col-sm-6">
										<input id="image" type="file" path="adsImg"></input>
										<div id="preview">
											<img id="imagePreview" />
										</div>
									</div>
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2"></div>
								<div class="form-group">
									<label class="col-sm-3 control-label" for="adsTitle">광고
										제목</label>
									<div class="col-sm-3">
										<input type="text" path="adsTitle"
											class="form-control col-sm-3" id="adsTitle"></input>
									</div>
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2"></div>
								<div class="form-group">
									<label class="col-sm-3 control-label" for="link">광고 링크</label>
									<div class="col-sm-3">
										<input type="text" path="link" class="form-control col-sm-3"
											id="link"></input>
									</div>
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2"></div>
								<div class="form-group">
									<label class="col-sm-3 control-label" for="image">관리자
										ID</label>
									<div class="col-sm-3">
										<input type="text" path="adminId"
											class="form-control col-sm-3" id="adminId"></input>
									</div>
								</div>
								<br>
								<div class="form-group">
									<div class="col-sm-12 text-center">
										<button class="btn btn-primary"
											style="background-color: orange; border-color: #fff;">
											광고 등록<i class="fa fa-check spaceLeft"></i>
										</button>
									</div>
								</div>

							</form>
						</div>

					</div>
					<!--./row-->
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
	var profileImg;

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
						if (fsize > 150000000) // 1 mb 기준 (1048576) 여기에서 파일 사이즈 체크 하는 로직
						{
							alert(fsize
									+ " bites\n 사이즈가 너무 큽니다. 150KB 미만으로 해주세요!");
							inputObject.files[0] = null;
							adsImg = null;
							// 미리보기 부분을 null로 바꾼다.
						} else {
							$('#imagePreview').attr('src', e.target.result);
							$('#imagePreview').css('weight', "1300px");
							$('#imagePreview').css('height', "620px");
							//썸네일로 미리보기 된 결과값(base64로 인코딩)을  result에 넣는다 
							//문자열 앞에 ""를 넣기 위해 앞뒤로 추가
							adsImg = "\"" + e.target.result + "\"";
							$("#adsImg").val(adsImg);
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
</script>
</html>