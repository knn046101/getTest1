<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>뭐 하 지 ?</title>
<meta name="description" content="">
<%@include file="/layout/whatcss.jsp"%>
<%@include file="/layout/whatjs.jsp"%>
<!-- CSS FILES -->
<!-- <link rel="stylesheet" href="../css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" type="text/css" href="../css/style.css" media="screen" data-name="skins">
    <link rel="stylesheet" href="../css/layout/wide.css" data-name="layout">

    <link rel="stylesheet" href="../css/fractionslider.css"/>
    <link rel="stylesheet" href="../css/style-fraction.css"/>

    <link rel="stylesheet" type="text/css" href="../css/switcher.css" media="screen" /> -->
</head>
<style>
body {
    background: #fafafa;
}
.container {
    margin: 20px;
}


.btn2 {
    cursor:pointer;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    border-radius: 5px;
    
    border:1px solid #a6a6a6;
    border-top-color:#bdbdbd;
    border-bottom-color:#8b8a8b;
    
    padding:9px 14px 9px;
    
    color:#666666;
    font-size:11px;
    background-position:0px 0px;
    
    text-shadow: 0 1px 0 #fff;
    font-weight:bold;
    
    background-color: #ffffff;
    background-image: -webkit-gradient(linear, left top, left bottom, from(#ffffff), to(#e8e8e8)); /* Saf4+, Chrome */
    background-image: -webkit-linear-gradient(top, #ffffff, #e8e8e8); /* Chrome 10+, Saf5.1+, iOS 5+ */
    background-image:    -moz-linear-gradient(top, #ffffff, #e8e8e8); /* FF3.6 */
    background-image:     -ms-linear-gradient(top, #ffffff, #e8e8e8); /* IE10 */
    background-image:      -o-linear-gradient(top, #ffffff, #e8e8e8); /* Opera 11.10+ */
    background-image:         linear-gradient(top, #ffffff, #e8e8e8);
    
    -moz-box-shadow: 0 1px 1px rgba(0,0,0,0.2);
    -webkit-box-shadow: 0 1px 1px rgba(0,0,0,0.2);
    box-shadow: 0 1px 1px rgba(0,0,0,0.2);
    
    
}

.btn2:hover {
    color:#333;
    border-color:#999;
    background-image: -webkit-gradient(linear, left top, left bottom, from(#ffffff), to(#f6f6f6)); /* Saf4+, Chrome */
    background-image: -webkit-linear-gradient(top, #ffffff, #f6f6f6); /* Chrome 10+, Saf5.1+, iOS 5+ */
    background-image:    -moz-linear-gradient(top, #ffffff, #f6f6f6); /* FF3.6 */
    background-image:     -ms-linear-gradient(top, #ffffff, #f6f6f6); /* IE10 */
    background-image:      -o-linear-gradient(top, #ffffff, #f6f6f6); /* Opera 11.10+ */
    background-image:         linear-gradient(top, #ffffff, #f6f6f6);
}
.btn2:active{
    background-image: -webkit-gradient(linear, left top, left bottom, from(#e8e8e8), to(#ffffff)); /* Saf4+, Chrome */
    background-image: -webkit-linear-gradient(top, #e8e8e8, #ffffff); /* Chrome 10+, Saf5.1+, iOS 5+ */
    background-image:    -moz-linear-gradient(top, #e8e8e8, #ffffff); /* FF3.6 */
    background-image:     -ms-linear-gradient(top, #e8e8e8, #ffffff); /* IE10 */
    background-image:      -o-linear-gradient(top, #e8e8e8, #ffffff); /* Opera 11.10+ */
    background-image:         linear-gradient(top, #e8e8e8, #ffffff);
}
.btn2:focus {
    outline: none;
    border-color:#BD4A39;
}


/* Follow Button Styles */

button.followButton{
    width:160px;
}
button.followButton.following{
    background-color: #57A957;
    background-repeat: repeat-x;
    background-image: -khtml-gradient(linear, left top, left bottom, from(#62c462), to(#57a957));
    background-image: -moz-linear-gradient(top, #62c462, #57a957);
    background-image: -ms-linear-gradient(top, #62c462, #57a957);
    background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #62c462), color-stop(100%, #57a957));
    background-image: -webkit-linear-gradient(top, #62c462, #57a957);
    background-image: -o-linear-gradient(top, #62c462, #57a957);
    background-image: linear-gradient(top, #62c462, #57a957);
    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#62c462', endColorstr='#57a957', GradientType=0);
    text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
    border-color: #57A957 #57A957 #3D773D;
    border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
    color:#fff;
}
button.followButton.unfollow{
    background-color: #C43C35;
    background-repeat: repeat-x;
    background-image: -khtml-gradient(linear, left top, left bottom, from(#ee5f5b), to(#c43c35));
    background-image: -moz-linear-gradient(top, #ee5f5b, #c43c35);
    background-image: -ms-linear-gradient(top, #ee5f5b, #c43c35);
    background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #ee5f5b), color-stop(100%, #c43c35));
    background-image: -webkit-linear-gradient(top, #ee5f5b, #c43c35);
    background-image: -o-linear-gradient(top, #ee5f5b, #c43c35);
    background-image: linear-gradient(top, #ee5f5b, #c43c35);
    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ee5f5b', endColorstr='#c43c35', GradientType=0);
    text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
    border-color: #C43C35 #C43C35 #882A25;
    border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
}
</style>
<body>
	<jsp:include page="../layout/header.jsp"></jsp:include>
	<div class="container-fluid">
		<div class="row sub_content">
			<div class="col-lg-12 col-md-12 col-sm-12">
				<div class="dividerHeading">
					<h4>
						<span>모임</span>
					</h4>

				</div>
			</div>
		</div>
		<section class="wrapper">
			<section class="content left_sidebar">
				<div class="container">
					<div class="row">
						<!--Sidebar Widget-->
						<div class="col-lg-3">
							<div class="sidebar">
								<div class="widget widget_categories">
									<ul class="arrows_list sidenav">
										<li><img src="${login.profileImg }" class="img-circle"
											alt="${login.nickname }" width="150" height="150" hspace="50">
											<br></li>
										<h4 align="center">
											${login.nickname } 
													 <button class="btn2 followButton" rel="6">Follow</button>
											
										</h4>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</section>
	</div>
	<jsp:include page="../layout/footer.jsp"></jsp:include>

</body>
<script>
$('button.followButton').live('click', function(e){
    e.preventDefault();
    $button = $(this);
    if($button.hasClass('following')){
        
        //$.ajax(); Do Unfollow
        
        $button.removeClass('following');
        $button.removeClass('unfollow');
        $button.text('Follow');
    } else {
        
        // $.ajax(); Do Follow
        
        $button.addClass('following');
        $button.text('Following');
    }
});

$('button.followButton').hover(function(){
     $button = $(this);
    if($button.hasClass('following')){
        $button.addClass('unfollow');
        $button.text('Unfollow');
    }
}, function(){
    if($button.hasClass('following')){
        $button.removeClass('unfollow');
        $button.text('Following');
    }
});
</script>
</html>