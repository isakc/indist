<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>공연등록 폼</title>
    <link rel="stylesheet" href="css/font-awesome.min.css"/>
    <link rel="stylesheet" href="css/reset.css"/>
    <link rel="stylesheet" href="css/kakao.font.css"/>
    <link rel="stylesheet" href="css/concert/calendar.css"/><!-- 2017.06.18 신애 변경 -->
    <link rel="stylesheet" href="css/concert/search_artist.css"/><!-- 2017.06.19 신애 변경 -->
    <link rel="stylesheet" href="css/template/template.css"/>
	<link rel="shortcut icon" type="image/x-icon" href="/img/Logo/favicon.ico" />
    <style>
        #wrap{
            width: 1000px;
            margin: auto;
            font-size: 12px;
            padding-top: 70px;
        }

        /* 여기부터는 header */

        body{
            font-family:'Kakao', sans-serif;
            line-height:1.3em ;
        }

        li>a{
            text-decoration: none;
        }

        #box_cont>#box_cont_tab>.cont_tab>a{
            color: #444444;
            width: 183px;
            height: 50px;
            display: block;
        }

        #box_cont>#box_cont_tab>.cont_tab>a:hover {
            color: #999999;
        }

        #concertDetailPoster {
            width:1000px;
            margin: auto;
            overflow: hidden;
            border: 1px solid #E0E0E0;
            margin-top: 40px;
        }

        #concertDetailPoster .con_img_poster img {
        	cursor:pointer;
            width: 200px;
            height: 300px;
        }

        .con_img_poster, .con_info{
            margin: 10px;
            float: left;
        }

        #con_add>.con_input_add{
            width: 150px;
            height: 30px;
            border: 1px solid #99cccc;
            color: white;
            text-align: center;
            line-height: 30px;
            cursor: pointer;
            background: #0099cc;
            outline: none;
        }

        #con_add{
            width: 524px;
        }

        .add_info_input{
            width: 250px;
            height: 30px;
            border: 1px solid #424242;
            margin-right: 5px;
            margin-bottom: 5px;
        }

        .con_info>h2{
            margin-top: 10px;
            font-weight: bold;
        }

        .con_input{
            width: 700px;
            height: 20px;
        }

        .con_time{
            width: 700px;
            height: 100px;
        }



        #concert_footer>img{
            margin-top: 80px;
            width: 1000px;
        }

        /* //header */

        p{
            font-size: 20px;
            margin-bottom: 10px;
            margin-top: 38px;
        }

        #box_artist_checking>p{
            margin-top: 0px;
        }

        #box_artist_checking>.tit_sub_float{
            margin-top: 40px;
        }

        #list_artist{
            list-style: none;
            overflow: hidden;
        }

        #list_artist>li {
            float: left;
            width: 80px;
            text-align: center;
            font-size: 15px;
            margin-left: 20px;
        }

        #list_artist li a{
            color:#424242;
            text-decoration: none;
        }

        #list_artist>li>span>img{
            width: 80px;
            height: 80px;
            border: 1px dotted #F5F5F5;
            border-radius: 50px;
            cursor: pointer;
        }

        #box_concert_checking>a{
            width: 300px;
            height: 300px;
            text-decoration: none;
            color: #676767;
            font-weight: bold;
            font-size: 20px;
            float: left;
            margin-top: 160px;
        }

        #box_concert_checking{
            width: 1000px;
            height: 300px;
            overflow: hidden;
        }

        .con_dmg_img>img{
            width: 130px;
            height: 200px;
            cursor: pointer;
        }

        .con_dmg_img{
            float: left;
        }

        .con_input_price, .seat_input{
            width: 110px;
            height: 20px;
        }

        .price_sr{
            margin-top: 10px;
            margin-left: 10px;
        }

        .ticket_notice {
            margin-top: 10px;
            width: 700px;
            height: 500px;
            border: 1px solid #999999;
        }

        #box_img_content {
            margin-bottom: 40px;
            width: 1000px;
            margin: auto;
        }

        #box_register_btn{
            width: 1000px;
            height: 42px;
            margin: auto;
            margin-bottom: 80px;
        }

        .register_btn{
            width: 170px;
            height: 45px;
            border: 1px solid #99cccc;
            background-color: #99cccc;
            color: white;
            font-size: 20px;
            font-weight: bold;
            border-radius: 10px;
            text-align: center;
            line-height: 45px;
            display: inline-block;
            margin-left: 250px;
            margin-top: 30px;
        }

        .register_btn button{
            border:none;
            font-size: 20px;
            background-color: #99cccc;
            color: white;
        }
        
        .register_btn button:focus{
        	outline: none;
        }



        #box_link,#box_link2, #field>div{
            width: 270px;
            margin: 20px;
            padding: 20px;
            overflow: hidden;
        }

        #box_link span, #field>div span,#box_link2 span{
            margin-right: 10px;
            margin-top: 10px;
        }


        #field>div{
            border-top: 1px dotted #424242;
        }

        .link_name, .seat_name{
            margin-bottom: 10px;
        }

        .btn_add{
            width: 1000px;
            height: 100px;
            margin-top: 20px;
            margin-left: 60px;
        }

        .btn_add>img{
            width: 100px;
            height: 100px;
            cursor: pointer;
        }

        #box_ticket_notice{
            width: 1000px;
            margin: auto;
        }

        #box_dng_price{
            display: none;
        }

        .price_seat_sr, .price_standing {
            display: none;
        }

        #box_link2 #btn_exo, #field>div #btn_exo{
            float: right;
            font-size: 25px;
            margin-top: -5px;
            cursor: pointer;
        }

        #box_link2{
            display: none;
        }

        #btn_exo{
            width: 35px;
            height: 35px;
            line-height: 35px;
            text-align: center;
        }

        #btn_exo2{
            width: 35px;
            height: 35px;
            line-height: 35px;
            text-align: center;
            cursor: pointer;
            font-size: 25px;
            float: right;
        }

        #field2>div>.seat_name>input{
            margin-left: 29px;
        }

        #field2>div>#seat_price2>input{
            margin-left: 54px;
        }

        #box_price3>#seat_price>input{
            margin-left: 55px;
        }

        #field2>div{
            overflow: hidden;
            border-top: 1px dotted #424242;
        }

        #field2>div #btn_exo{
            font-size: 25px;
            margin-top: -5px;
            cursor: pointer;
        }

        #box_price3, #box_price2, #field2>div{
            width: 250px;
            height: 62px;
            margin: 20px;
            padding: 20px;
        }

        #box_price2{
            display: none;
        }

        textarea,input{
            outline: none;
        }
		
		#inputImgUpload {
			display: none;
			background: red;
		}



    </style>
</head>
<body>
	<c:import url="template/header.jsp">
	</c:import>

<div id="wrap">
    <!-- conDetail_header부분 -->
    <div id="concertDetailPoster">
        <div class="con_img_poster">
            <label><img src="img/concert/콘서트_default_poster.jpg" onclick="imgClick()"/> 
            <input type="file" form="formUserUpdate" name="profile" id="inputImgUpload" accept="image/*" />
			</label>
            
        </div><!--//con_img_poster -->
        <div class="con_info">
            <h2>제목</h2>
            <input type="text" class="con_input" name="title"/>
            <h2>부 제목</h2>
            <input type="text" class="con_input" name="subTitle"/>
            <h2>관람시간</h2>
            <input type="text" class="con_input" name="runningT"/>
            <h2>공연장</h2>
            <div id="con_add">
                <input type="text" id="sample6_postcode" class="add_info_input"
                       placeholder="우편번호">
                <input type="button" class="con_input_add" onclick="sample6_execDaumPostcode2()" value="공연장 주소"><br>
                <input type="text" id="sample6_address" class="add_info_input"
                       placeholder="주소" >
                <input type="text" id="sample6_address2" class="add_info_input"
                       placeholder="상세주소">
            </div>
            <h2>관람등급</h2>
            <label><input type="radio" name="all" value="rc"/>전체관람가</label>
            <label><input type="radio" name="all" value="rc"/>12세이상 관람가</label>
            <label><input type="radio" name="all" value="rc"/>15세이상 관람가</label>
            <label><input type="radio" name="all" value="rc"/>청소년 관람불가가</label>
        </div><!--//con_info -->
    </div><!--//concertDetailPoster -->
    <!-- //conDetail_header부분 -->
    <div id="box_artist_checking">
        <p class="tit_sub_float">
            출연진
            <span class="btn_flexible">
                <span></span>
            </span>
        </p>
        <ul id="list_artist">
            <li class="first">
                <span class="crop">
                    <img src="img/concert/콘서트_출연진_기본이미지.png" />
                </span>
                <a href="#" class="txt_name">
                    <strong class="singer"></strong>
                </a>
            </li>
            <li>
                <span class="crop">
                    <img src="img/concert/콘서트_출연진_기본이미지.png" />
                </span>
                <a href="" class="txt_name">
                    <strong class="singer"></strong>
                </a>
            </li>
            <li>
                <span class="crop">
                    <img src="img/concert/콘서트_출연진_기본이미지.png" />
                </span>
                <a href="" class="txt_name">
                    <strong class="singer"></strong>
                </a>
            </li>
            <li>
                <span class="crop">
                    <img src="img/concert/콘서트_출연진_기본이미지.png" />
                </span>
                <a href="" class="txt_name">
                    <strong class="singer"></strong>
                </a>
            </li>
            <li>
                <span class="crop">
                    <img src="img/concert/콘서트_출연진_기본이미지.png" />
                </span>
                <a href="" class="txt_name">
                    <strong class="singer"></strong>
                </a>
            </li>
        </ul>
        <div class="search_artist">
            <div id="searchForm">
                <form id="indieSearchForm" action="" method="post">
                    <input id="q" name="q" placeholder="검색어를 입력하세요"/>
                    <button class="btn_search"><i class="fa fa-search"></i></button>
                </form> <!-- // #indieSearchForm -->
                <div class="exo">
                    <i class="fa fa-close"></i>
                </div>
            </div>
            <div id="artistNameCard">
                <ul>
                    <li>
                        <div class="nameCard_rookie">
                            <a class="overflow">장미여관</a>
                            <span><i class="fa fa-users"></i> 6940</span>
                            <div class="nameCard_rookie_profile" class="bg">
                            	<img src="img/concert/콘서트_장미여관.jpg" />
                            </div><!--//nameCard_rookie_profile-->
                        </div><!--//nameCard_rookie -->
                    </li>
                    <li>
                        <div class="nameCard_rookie">
                            <a class="overflow">윤딴딴</a>
                            <span><i class="fa fa-users"></i> 2476</span>
                            <div class="nameCard_rookie_profile" class="bg">
                            	<img src="img/concert/콘서트_윤딴딴.jpg" />
                            </div><!--//nameCard_rookie_profile-->
                        </div><!--//nameCard_rookie -->
                    </li>
                    <li>
                        <div class="nameCard_rookie">
                            <a class="overflow">신현희와 김루트</a>
                            <span><i class="fa fa-users"></i> 1224</span>
                            <div class="nameCard_rookie_profile" class="bg">
                            	<img src="img/concert/콘서트_신현희와김루트.jpg" />
                            </div><!--//nameCard_rookie_profile-->
                        </div><!--//nameCard_rookie -->
                    </li>
                    <li>
                        <div class="nameCard_rookie">
                            <a class="overflow">제이레빗</a>
                            <span><i class="fa fa-users"></i> 323</span>
                            <div class="nameCard_rookie_profile" class="bg">
                            	<img src="img/concert/콘서트_제이레빗.png" />
                            </div><!--//nameCard_rookie_profile-->
                        </div><!--//nameCard_rookie -->
                    </li>
                    <li>
                        <div class="nameCard_rookie">
                            <a class="overflow">노브레인</a>
                            <span><i class="fa fa-users"></i> 12333</span>
                            <div class="nameCard_rookie_profile" class="bg">
                            	<img src="img/concert/콘서트_노브레인.png" />
                            </div><!--//nameCard_rookie_profile-->
                        </div><!--//nameCard_rookie -->
                    </li>
                    <li>
                        <div class="nameCard_rookie">
                            <a class="overflow">몽니</a>
                            <span><i class="fa fa-users"></i> 72</span>
                            <div class="nameCard_rookie_profile" class="bg">
                            	<img src="img/concert/콘서트_몽니.png" />
                            </div><!--//nameCard_rookie_profile-->
                        </div><!--//nameCard_rookie -->
                    </li>
                </ul>
            </div>
        </div>
    </div><!-- //box_artist_checking -->
    <div id="box_concert_checking">
        <p>대관 신청</p>
        <div class="con_dmg_img">
            <img src="img/concert/당나귀_플레이리스트_버튼3.png" />
        </div>
        <a href="rent" target="_blank">공연장 대여정보는?</a>
    </div><!-- //box_concert_checking -->
    <!-- 2017.06.19 신애 변경 -->
    <!-- 캘린더 -->
    <div class="divcalendar">

        <div id="calendaroverallcontrols">
            <!-- <div id="year"></div> -->

            <div id="calendarmonthcontrols">
                <a id="btnPrevYr" href="#" title="Previous Year"><span><<</span></a>

                <a id="btnPrev" href="#" title="Previous Month"><span><</span></a>

                <!-- <input type="button" src="images/btnprevmonth.png" alt="Submit" id="btnPrev"/>-->

                <!-- <div id="month"></div>-->

                <div id="monthandyear"></div>

                <!--<input type="button" src="images/btnnextmonth.png" alt="Submit" id="btnNext"/>-->

                <a id="btnNext" href="#" title="Next Month"><span>></span></a>

                <a id="btnNextYr" href="#" title="Next Year"><span>>></span></a>
            </div>
        </div>

        <div id="divcalendartable"></div>

        <div class="con_pfm">
            <div class="con_check_input">
                <label><input type="checkbox" /> 1회차 (10:00~13:00)</label>
            </div>
            <div class="con_check_input">
                <label><input type="checkbox" /> 2회차 (14:00~17:00)</label>
            </div>
            <div class="con_check_input">
                <label><input type="checkbox" /> 3회차 (18:00~21:00)</label>
            </div>
            <div class="btb_con_check">
                <div class="btn_check_pre">
                    <a href="#"><span>이전</span></a>
                </div>
                <div class="btn_check_nxt">
                    <a href="#"><span>예약</span></a>
                </div>
            </div>
        </div>
    </div>
    <!-- 캘린더 -->
    <!-- 2017.06.19 신애 변경 -->
    <div id="box_ticket_link">
        <p>대표 티켓 구매 링크</p>
        <div id="box_link">
            <div class="link_name">
                <span>링크 이름</span>
                <input type="text" class="link_input"/>
                <br>
            </div>
            <div class="link_add">
                <span>링크 주소</span>
                <input type="text" class="link_input"/>
            </div>
        </div>
        <div id="box_link2">
            <div id="btn_exo" onclick="remove_item(this)">
                <i class="fa fa-close"></i>
            </div>
            <div class="link_name">
                <span>링크 이름</span>
                <input type="text" class="link_input"/>
                <br>
            </div>
            <div class="link_add">
                <span>링크 주소</span>
                <input type="text" class="link_input"/>
            </div>
        </div>
        <div id="field"></div>
        <div class="btn_add">
            <img  onclick="add_item()" src="img/concert/콘서트_추가_btn.png"/>
        </div>
    </div><!-- //box_ticket_link -->
    <div id="box_concert_time">
        <p class="tit_sub_float">공연시간</p>
        <textarea type="text" class="con_time" name="timeNotice"></textarea>
    </div><!-- //box_concert_time -->
    <div id="box_price">
        <div id="box_dng_price">
            <div id="box_seat_dng">
                <p class="tit_sub_float">좌석 종류 선택</p>
                <label><input type="radio" value="1" name="seat"/>스탠딩</label>
                <label><input type="radio" value="2" name="seat"/>S석, R석</label>
            </div><!-- //box_seat_dng -->
            <div class="box_seat_price">
                <div class="price_standing">
                    <span>스탠딩석</span>
                    <input type="text" class="con_input_price price_sr" />
                    <span>원</span>
                </div><!-- //price_standing -->
                <div class="price_seat_sr">
                    <span>R석(대표가)</span>
                    <input type="text" class="con_input_price price_sr" />
                    <span>원</span>
                    <br>
                    <span>S석</span>
                    <input type="text" class="con_input_price price_sr" />
                    <span>원</span>
                </div><!-- //price_seat_sr -->
            </div><!-- //box_seat_price -->
        </div><!-- //box_dng_price -->
        <div id="box_other_price">
            <p>좌석 종류 작성</p>
            <div id="box_price3">
                <div class="seat_name">
                    <span>좌석 이름(대표)</span>
                    <input type="text" class="seat_input"/>
                    <span>석</span>
                    <br>
                </div><!-- //seat_name -->
                <div id="seat_price">
                    <span>가격</span>
                    <input type="text" class="seat_input"/>
                    <span>원</span>
                </div><!-- //seat_price -->
            </div><!-- //box_price -->
            <div id="box_price2">
                <div id="btn_exo2" onclick="remove_item2(this)">
                    <i class="fa fa-close"></i>
                </div>
                <div class="seat_name">
                    <span>좌석 이름</span>
                    <input type="text" class="seat_input"/>
                    <span>석</span>
                    <br>
                </div><!-- //seat_name -->
                <div id="seat_price2">
                    <span>가격</span>
                    <input type="text" class="seat_input"/>
                    <span>원</span>
                </div><!-- //seat_price -->
            </div><!-- //box_price2 -->

            <div id="field2"></div>

            <div class="btn_add">
                <img onclick="add_item2()" src="img/concert/콘서트_추가_btn.png"/>
            </div><!-- //btn_add -->
        </div><!-- //box_other_price -->

    </div><!-- //box_price -->
    <div id="box_ticket_notice">
        <p class="tit_sub_float">예매 공지사항</p>
        <textarea type="text" class="ticket_notice" ></textarea>
    </div><!-- //box_ticke_notice -->
    <div id="box_img_content">
        <p class="tit_sub_float">작품설명</p>
        <input type="file" class="img_content" />
    </div><!-- //box_img_content -->
    <div id="box_register_btn">
        <div class="register_btn">
        <form action="concert" method="post">
        	<button>
            공연등록 신청
        	</button>
        </form>
        </div>
    </div><!-- //box_register_btn -->
</div><!-- //wrap -->


	<c:import url="template/footer.jsp">
	</c:import>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>

    var $dmgBtn = $(".con_dmg_img>img");
    var $link = $("#box_ticket_link");
    var $danPrice= $("#box_dng_price");
    var $otherPrice=$("#box_other_price");

    var $conpfm= $(".con_pfm");
    var $divcalendar = $(".divcalendar");
    var $btnPre= $(".btn_check_pre");
    var $btnNxt= $(".btn_check_nxt");


    var $cropImg = $(".crop>img");
    var $artistCard =$(".search_artist");
    var $btnExo =$(".exo");
    
    var $posterImg = $(".con_img_poster>label>img");
    
    
  		function imgClick() {
    	$("#inputImgUpload").change(function name() {
        	$posterImg.prop("src","../img/concert/콘서트_poster_21.png");
		})
    	
    	
	} 
     
     
     $(".nameCard_rookie").click(function () {
    	 $artistCard.css("display","none");
	});
     
     $(".register_btn").click(function () {
		alert("공연등록(대관신청)이 완료되었습니다. 신청승인 결과는 2~3일 소요됩니다.");
	});
     
     $("#list_artist>li").click(function () {
    	
    	var artistNum = $("#list_artist>li").index(this);
    	
        $artistCard.css("display","block");
        
      if(artistNum==0){
    	  $("#list_artist>li:eq("+artistNum+") img").attr("src","../img/concert/콘서트_장미여관.jpg");
    	  $("#list_artist>li:eq("+artistNum+") strong").html("장미여관");	 
    }else if(artistNum==1){
    	   $("#list_artist>li:eq("+artistNum+") img").attr("src","../img/concert/콘서트_윤딴딴.jpg");
    	   $("#list_artist>li:eq("+artistNum+") strong").html("윤딴딴");	
    }else if(artistNum==2){
    	   $("#list_artist>li:eq("+artistNum+") img").attr("src","../img/concert/콘서트_신현희와김루트.jpg");
    	   $("#list_artist>li:eq("+artistNum+") strong").html("신현희와김루트");	
    }else if(artistNum==3){
    	   $("#list_artist>li:eq("+artistNum+") img").attr("src","../img/concert/콘서트_제이레빗.png");
    	   $("#list_artist>li:eq("+artistNum+") strong").html("제이레빗");	
    }
       

    });

    $btnExo.click(function () {
        $artistCard.css("display","none");
    });

    function add_item2(){
        // pre_set 에 있는 내용을 읽어와서 처리..
        var div = document.createElement('div');
        div.innerHTML = document.getElementById('box_price2').innerHTML;
        document.getElementById('field2').appendChild(div);
    }

    function remove_item2(obj){
        // obj.parentNode 를 이용하여 삭제
        document.getElementById('field2').removeChild(obj.parentNode);
    }

    function add_item(){
        // pre_set 에 있는 내용을 읽어와서 처리..
        var div = document.createElement('div');
        div.innerHTML = document.getElementById('box_link2').innerHTML;
        document.getElementById('field').appendChild(div);
    }

    function remove_item(obj){
        // obj.parentNode 를 이용하여 삭제
        document.getElementById('field').removeChild(obj.parentNode);
    }


    $dmgBtn.click(function () {
        toggle();
    });

    function toggle() {

        var test = $divcalendar.css("display");

        if(test=="none"){
            $divcalendar.css("display","block");
            $link.css("display","none");
            $danPrice.css("display","block");
            $otherPrice    .css("display","none");
        }else {
            $divcalendar.css("display","none");
            $link.css("display","block");
            $danPrice.css("display","none");
            $otherPrice.css("display","block");
        }

    };


    $("input:radio[name=seat]").click(function () {

        var st = $(this).val();
        if(st=="1"){
            $(".price_standing").css("display","block");
            $(".price_seat_sr").css("display","none");
        }else if(st=="2"){
            $(".price_seat_sr").css("display","block");
            $(".price_standing").css("display","none");
        }

    });

    //캘린더
    var Calendar = function(o) {
        //Store div id
        this.divId = o.ParentID;

        // Days of week, starting on Sunday
        this.DaysOfWeek = o.DaysOfWeek;

        console.log("this.DaysOfWeek == ", this.DaysOfWeek);

        // Months, stating on January
        this.Months = o.Months;

        console.log("this.Months == ", this.Months);

        // Set the current month, year
        var d = new Date();

        console.log("d == ", d);

        this.CurrentMonth = d.getMonth();

        console.log("this.CurrentMonth == ", this.CurrentMonth);

        this.CurrentYear = d.getFullYear();

        console.log("this.CurrentYear == ", this.CurrentYear);

        var f=o.Format;

        console.log("o == ", o);

        console.log("f == ", f);

        //this.f = typeof(f) == 'string' ? f.charAt(0).toUpperCase() : 'M';

        if(typeof(f) == 'string') {
            this.f  = f.charAt(0).toUpperCase();
        } else {
            this.f = 'M';
        }

        console.log("this.f == ", this.f);
    };

    // Goes to next month
    Calendar.prototype.nextMonth = function() {
        console.log("Calendar.prototype.nextMonth = function() {");

        if ( this.CurrentMonth == 11 ) {
            console.log("this.CurrentMonth == ", this.CurrentMonth);

            this.CurrentMonth = 0;

            console.log("this.CurrentMonth == ", this.CurrentMonth);

            console.log("this.CurrentYear == ", this.CurrentYear);

            this.CurrentYear = this.CurrentYear + 1;

            console.log("this.CurrentYear == ", this.CurrentYear);
        } else {
            console.log("this.CurrentMonth == ", this.CurrentMonth);

            this.CurrentMonth = this.CurrentMonth + 1;

            console.log("this.CurrentMonth + 1 == ", this.CurrentMonth);
        }

        this.showCurrent();
    };

    // Goes to previous month
    Calendar.prototype.previousMonth = function() {
        console.log("Calendar.prototype.previousMonth = function() {");

        if ( this.CurrentMonth == 0 ) {
            console.log("this.CurrentMonth == ", this.CurrentMonth);

            this.CurrentMonth = 11;

            console.log("this.CurrentMonth == ", this.CurrentMonth);

            console.log("this.CurrentYear == ", this.CurrentYear);

            this.CurrentYear = this.CurrentYear - 1;

            console.log("this.CurrentYear == ", this.CurrentYear);
        } else {
            console.log("this.CurrentMonth == ", this.CurrentMonth);

            this.CurrentMonth = this.CurrentMonth - 1;

            console.log("this.CurrentMonth - 1 == ", this.CurrentMonth);
        }

        this.showCurrent();
    };

    //
    Calendar.prototype.previousYear = function() {
        console.log(" ");

        console.log("Calendar.prototype.previousYear = function() {");

        console.log("this.CurrentYear == " + this.CurrentYear);

        this.CurrentYear = this.CurrentYear - 1;

        console.log("this.CurrentYear - 1 i.e. this.CurrentYear == " + this.CurrentYear);

        this.showCurrent();
    };

    //
    Calendar.prototype.nextYear = function() {
        console.log(" ");

        console.log("Calendar.prototype.nextYear = function() {");

        console.log("this.CurrentYear == " + this.CurrentYear);

        this.CurrentYear = this.CurrentYear + 1;

        console.log("this.CurrentYear - 1 i.e. this.CurrentYear == " + this.CurrentYear);

        this.showCurrent();
    };

    // Show current month
    Calendar.prototype.showCurrent = function() {
        console.log(" ");

        console.log("Calendar.prototype.showCurrent = function() {");

        console.log("this.CurrentYear == ", this.CurrentYear);

        console.log("this.CurrentMonth == ", this.CurrentMonth);

        this.Calendar(this.CurrentYear, this.CurrentMonth);
    };

    // Show month (year, month)
    Calendar.prototype.Calendar = function(y,m) {
        console.log(" ");

        console.log("Calendar.prototype.Calendar = function(y,m){");

        typeof(y) == 'number' ? this.CurrentYear = y : null;

        console.log("this.CurrentYear == ", this.CurrentYear);

        typeof(y) == 'number' ? this.CurrentMonth = m : null;

        console.log("this.CurrentMonth == ", this.CurrentMonth);

        // 1st day of the selected month
        var firstDayOfCurrentMonth = new Date(y, m, 1).getDay();

        console.log("firstDayOfCurrentMonth == ", firstDayOfCurrentMonth);

        // Last date of the selected month
        var lastDateOfCurrentMonth = new Date(y, m+1, 0).getDate();

        console.log("lastDateOfCurrentMonth == ", lastDateOfCurrentMonth);

        // Last day of the previous month
        console.log("m == ", m);

        var lastDateOfLastMonth = m == 0 ? new Date(y-1, 11, 0).getDate() : new Date(y, m, 0).getDate();

        console.log("lastDateOfLastMonth == ", lastDateOfLastMonth);

        console.log("Print selected month and year.");

        // Write selected month and year. This HTML goes into <div id="year"></div>
        //var yearhtml = '<span class="yearspan">' + y + '</span>';

        // Write selected month and year. This HTML goes into <div id="month"></div>
        //var monthhtml = '<span class="monthspan">' + this.Months[m] + '</span>';

        // Write selected month and year. This HTML goes into <div id="month"></div>
        var monthandyearhtml = '<span id="monthandyearspan">' + this.Months[m] + ' - ' + y + '</span>';

        console.log("monthandyearhtml == " + monthandyearhtml);

        var html = '<table>';

        // Write the header of the days of the week
        html += '<tr>';

        console.log(" ");

        console.log("Write the header of the days of the week");

        for(var i=0; i < 7;i++) {
            console.log("i == ", i);

            console.log("this.DaysOfWeek[i] == ", this.DaysOfWeek[i]);

            html += '<th class="daysheader">' + this.DaysOfWeek[i] + '</th>';
        }

        html += '</tr>';

        console.log("Before conditional operator this.f == ", this.f);

        //this.f = 'X';

        var p = dm = this.f == 'M' ? 1 : firstDayOfCurrentMonth == 0 ? -5 : 2;

        /*var p, dm;

         if(this.f =='M') {
         dm = 1;

         p = dm;
         } else {
         if(firstDayOfCurrentMonth == 0) {
         firstDayOfCurrentMonth == -5;
         } else {
         firstDayOfCurrentMonth == 2;
         }
         }*/

        console.log("After conditional operator");

        console.log("this.f == ", this.f);

        console.log("p == ", p);

        console.log("dm == ", dm);

        console.log("firstDayOfCurrentMonth == ", firstDayOfCurrentMonth);

        var cellvalue;

        for (var d, i=0, z0=0; z0<6; z0++) {
            html += '<tr>';

            console.log("Inside 1st for loop - d == " + d + " | i == " + i + " | z0 == " + z0);

            for (var z0a = 0; z0a < 7; z0a++) {
                console.log("Inside 2nd for loop");

                console.log("z0a == " + z0a);

                d = i + dm - firstDayOfCurrentMonth;

                console.log("d outside if statm == " + d);

                // Dates from prev month
                if (d < 1){
                    console.log("d < 1");

                    console.log("p before p++ == " + p);

                    cellvalue = lastDateOfLastMonth - firstDayOfCurrentMonth + p++;

                    console.log("p after p++ == " + p);

                    console.log("cellvalue == " + cellvalue);

                    html += '<td class="prevmonthdates">' +
                        '<span class="cellvaluespan">' + (cellvalue) + '</span><br/>'+
                        '</td>';

                    // Dates from next month
                } else if ( d > lastDateOfCurrentMonth){
                    console.log("d > lastDateOfCurrentMonth");

                    console.log("p before p++ == " + p);

                    html += '<td class="nextmonthdates">' + (p++) + '</td>';

                    console.log("p after p++ == " + p);


                    // +'<ul id="cellvaluelist"><li>1회차</li><li>2회차</li><li>3회차</li></ul>' +

                    // Current month dates
                } else {
                    html += '<td class="currentmonthdates">' + (d)
                        +'<ul class="cellvaluelist"><li>1회차</li><li>2회차</li><li>3회차</li></ul>'
                        + '</td>';

                    console.log("d inside else { == " + d);

                    p = 1;

                    console.log("p inside } else { == " + p);
                }

                if (i % 7 == 6 && d >= lastDateOfCurrentMonth) {
                    console.log("INSIDE if (i % 7 == 6 && d >= lastDateOfCurrentMonth) {");

                    console.log("i == " + i);

                    console.log("d == " + d);

                    console.log("z0 == " + z0);

                    z0 = 10; // no more rows
                }

                console.log("i before i++ == " + i);

                i++;

                console.log("i after i++ == " + i);
            }

            html += '</tr>';
        }

        // Closes table
        html += '</table>';

        // Write HTML to the div
        //document.getElementById("year").innerHTML = yearhtml;

        //document.getElementById("month").innerHTML = monthhtml;

        document.getElementById("monthandyear").innerHTML = monthandyearhtml;

        document.getElementById(this.divId).innerHTML = html;
    };

    // On Load of the window
    window.onload = function() {

        // Start calendar
        var c = new Calendar({
            ParentID:"divcalendartable",

            DaysOfWeek:[
                'MON',
                'TUE',
                'WED',
                'THU',
                'FRI',
                'SAT',
                'SUN'
            ],

            Months:['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec' ],

            Format:'dd/mm/yyyy'
        });

        c.showCurrent();

        // Bind next and previous button clicks
        getId('btnPrev').onclick = function(){
            c.previousMonth();
        };

        getId('btnPrevYr').onclick = function(){
            c.previousYear();
        };

        getId('btnNext').onclick = function(){
            c.nextMonth();
        };

        getId('btnNextYr').onclick = function(){
            c.nextYear();
        };
    };

    // Get element by id
    function getId(id) {
        return document.getElementById(id);
    };

    // 2017.6.19 신애 수정

    $btnPre.click(function () {
        $conpfm.css("display","none");
    });

    $btnNxt.click(function () {
        $conpfm.css("display","none");
        $divcalendar.css("display","none");
    });

    $("#divcalendartable").on("click",".currentmonthdates",function () {
        $conpfm.css("display","block");
        return false;
    });

    /*
     li를 클릭으로 하게 되었을 때 자식으로 다시 넘어가니 false를 걸어준다.

     $("#divcalendartable").on("click",".cellvaluelist li",function () {
     alert("나나나나");
     return false;
     });
     */

    //주소창
    function sample6_execDaumPostcode2() {
        new daum.Postcode({
            oncomplete: function(data) {

                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
    }

    $(".con_info>.con_input_add").click(function() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
                // 예제를 참고하여 다양한 활용법을 확인해 보세요.
            }
        }).open();

    });

</script>
</body>
</html>