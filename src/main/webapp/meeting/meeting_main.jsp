
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>뭐 하 지 ?</title>
	<meta name="description" content="">
	
	<!-- CSS FILES -->
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/style.css" media="screen" data-name="skins">
    <link rel="stylesheet" href="css/layout/wide.css" data-name="layout">

    <link rel="stylesheet" href="css/fractionslider.css"/>
    <link rel="stylesheet" href="css/style-fraction.css"/>
	
    <link rel="stylesheet" type="text/css" href="css/switcher.css" media="screen" />
 	<style>
 		.term{
 			height:400px;
 		}
 	 	 body, div, img, ul, li
        {
       	     margin: 0;
            padding: 0;
        }
        body
        {
            font-size: 12px;
            background-color: #fff;
            min-width: 1200px;
        }
        ul, ul li
        {
            list-style: none;
        }
        .clear
        {
            clear: both;
        }       
        .box
        {
            position: relative;
            width: 630px;
            margin-left: 300px;
           
          
        }
        .lineF, .lineS
        {
            position: absolute;
            visibility: visible;
        }
        .lineS
        {
            top: 91px;
            left: 53px;
        }
        .boxF, .boxS, .boxT, .overlay
        {
            width: 100px;
            height: 125px;
            overflow: hidden;
        }
        .boxF, .boxS
        {
            visibility: hidden;
        }
        .boxF
        {
            transform: rotate(120deg);
            float: left;
            margin-left: 5px;
            -ms-transform: rotate(120deg);
            -moz-transform: rotate(120deg);
            -webkit-transform: rotate(120deg);
        }
        .boxS
        {
            transform: rotate(-60deg);
            -ms-transform: rotate(-60deg);
            -moz-transform: rotate(-60deg);
            -webkit-transform: rotate(-60deg);
        }
        .boxT
        {
            transform: rotate(-60deg);
            background: no-repeat 50% center;
            background-size: 125% auto;
            -ms-transform: rotate(-60deg);
            -moz-transform: rotate(-60deg);
            -webkit-transform: rotate(-60deg);
            visibility: visible;
        }
        .overlay
        {
            transition: all 250ms ease-in-out 0s;
            display: none;
            position: relative;
        }
        .overlay:hover
        {
            background-color: rgba(0,0,0,0.6);
        }
        .boxT:hover .overlay
        {
            display: block;
        }
        .overlay a
        {
            display: inline-block;
            position: absolute;
            left: 50%;
            top: 50%;
            margin: -16px 0 0 -16px;
            border-radius: 4px;
            text-align: center;
            line-height: 32px;
            width: 32px;
            height: 32px;
            text-decoration: none;
            color: White;
            font-size: 15px;
            font-weight: bolder;
        }
 </style>
</head>
<body>

	<jsp:include page="/layout/header.jsp"></jsp:include>
	<br>
	
	<br>
	<div class="clients">
	<button style="float:right;background-color:#27AB99;color:white;" onclick="location='meeting_make.jsp'">모임생성</button>
			<div class="container">
				<div class="row sub_content">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="dividerHeading">
							<h4><span>모임</span></h4>
						</div>
						
					<div class="our_clients">
						 <div class="box">
						 
      						  <!--첫째 줄(lineFirst)-->
       						  <div class="lineF">
     							 <div class="boxF">
					                <div class="boxS">
					                    <div class="boxT" style="background-color:#27AB99;">
					                        <div class="overlay">
					                            <a href="#">서울</a>
					                        </div>
					                    </div>
					                </div>
					            </div>
					            <div class="boxF">
					                <div class="boxS">
					                    <div class="boxT" style="background-color:#27AB99;">
					                        <div class="overlay">
					                            <a href="#">경기</a>
					                        </div>
					                    </div>
					                </div>
					            </div>
					             <div class="boxF">
					                <div class="boxS">
					                    <div class="boxT" style="background-color:#27AB99;">
					                        <div class="overlay">
					                            <a href="#">충남</a>
					                        </div>
					                    </div>
					                </div>
					            </div>
					             <div class="boxF">
					                <div class="boxS">
					                    <div class="boxT" style="background-color:#27AB99;">
					                        <div class="overlay">
					                            <a href="#">충북</a>
					                        </div>
					                    </div>
					                </div>
					            </div>
								 <div class="boxF">
					                <div class="boxS">
					                    <div class="boxT" style="background-color:#27AB99;">
					                        <div class="overlay">
					                            <a href="#">전남</a>
					                        </div>
					                    </div>
					                </div>
					            </div>
					        </div>
					        
					        <!--둘째 줄(lineSecond)-->
					        <div class="lineS">
					         <div class="boxF">
					                <div class="boxS">
					                    <div class="boxT" style="background-color:#27AB99;">
					                        <div class="overlay">
					                            <a href="#">전북</a>
					                        </div>
					                    </div>
					                </div>
					            </div>
					            <div class="boxF">
					                <div class="boxS">
					                    <div class="boxT" style="background-color:#27AB99;">
					                        <div class="overlay">
					                            <a href="#">경남</a>
					                        </div>
					                    </div>
					                </div>
					            </div>
					            <div class="boxF">
					                <div class="boxS">
					                    <div class="boxT" style="background-color:#27AB99;">
					                        <div class="overlay">
					                            <a href="#">경북</a>
					                        </div>
					                    </div>
					                </div>
					            </div>
					             <div class="boxF">
					                <div class="boxS">
					                    <div class="boxT" style="background-color:#27AB99;">
					                        <div class="overlay">
					                            <a href="#">강원</a>
					                        </div>
					                    </div>
					                </div>
					            </div>
					          </div>
					          
					    </div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
	
   <div class="term"></div>

	<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
 <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
     <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/retina-1.1.0.min.js"></script>
    <script type="text/javascript" src="js/jquery.cookie.js"></script> <!-- jQuery cookie -->
    <script src="js/jquery.fractionslider.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript" src="js/jquery.smartmenus.min.js"></script>
    <script type="text/javascript" src="js/jquery.smartmenus.bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery.jcarousel.js"></script>
    <script type="text/javascript" src="js/jflickrfeed.js"></script>
    <script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
    <script type="text/javascript" src="js/jquery.isotope.min.js"></script>
    <script type="text/javascript" src="js/swipe.js"></script>
    <script type="text/javascript" src="js/jquery-scrolltofixed-min.js"></script>

    <script src="js/main.js"></script>
</html>