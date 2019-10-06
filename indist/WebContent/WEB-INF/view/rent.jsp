<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>공연장 대관 안내</title>
    
	<c:import url="template/link.jsp"></c:import>
    <link rel="stylesheet" href="css/kakao.font.css"/>
    <style>
        body{
            font-family:'Kakao', sans-serif;
        }

        #wrap{
            width: 1000px;
            margin: auto;
        }

        #wrap h1{
            margin-bottom: 20px;
            margin-top: 20px;
            font-size: 25px;
            font-weight: bold;
        }

        #contentImg {
            position: relative;

        }

        #contentImg img{
            width: 300px;
            height: 150px;
            cursor: pointer;
        }

        #concertStep img, #serviceCharge img{
             width: 1000px;
             margin-top: 30px;
        }

        #contactMap {
            margin-bottom: 40px;
        }

        #gray .con_img_up{
            position: absolute;
            top: 50%;
            left: 50%;

            margin-top: -200px;
            margin-left: -340px;

            width: 600px;
            height: 400px;
            display: none;
        }

        #gray {
            position: absolute;
            top: 0;
            left:0;
            width: 100%;
            height: 100%;
            display: none;
            z-index: 1;
        }
        
		.btn_click{
		    width: 150px;
		    height: 40px;
		    border: 1px solid #99cccc;
		    background-color: #99cccc;
		    color: white;
		    font-size: 20px;
		    font-weight: bold;
		    border-radius: 10px;
		    text-align: center;
		    line-height: 40px;
		    display: inline-block;
		    cursor: pointer;
		}
		
		.btn_click>a{
			text-decoration: none;
			display: inline-block;
			color: white;
		}
		
		.box_click_btn {
		    width: 1000px;
		    height: 100px;
		    text-align: center;
		    line-height: 100px;
		}
		
    </style>
</head>
<body>
	<c:import url="template/header.jsp">
	</c:import>
 
<div id="content">
<div id="wrap">

    <div id="concertImg">
        <h1>당나귀 홀 공연장 내부, 외부 사진</h1>
        <div id="contentImg">
            <img src="img/concert/공연장내부외부사진1.png"/>
            <img src="img/concert/공연장내부외부사진2.png"/>
            <img src="img/concert/공연장내부외부사진3.png"/>
            <img src="img/concert/공연장내부외부사진4.png"/>
            <img src="img/concert/공연장내부외부사진5.png"/>
            <img src="img/concert/공연장내부외부사진6.png"/>
            <img src="img/concert/공연장내부외부사진7.png"/>
            <img src="img/concert/공연장내부외부사진8.png"/>
            <img src="img/concert/공연장내부외부사진9.png"/>
            <img src="img/concert/공연장내부외부사진10.png"/>
            <img src="img/concert/공연장내부외부사진11.png"/>
            <img src="img/concert/공연장내부외부사진12.png"/>
            <!-- 확대되는 이미지 -->
            <div id="gray">
            <img src="img/concert/공연장내부외부사진1.png" class="con_img_up"/>
            </div>
        </div><!-- //#contentImg  -->
    </div><!-- //#concertImg  -->
    <div id="concertStep">
        <img src="img/concert/당나귀홀_대관절차.png"/>
    </div><!-- //#concertStep  -->
    <div id="serviceCharge">
        <img src="img/concert/당나귀홀_대관료안내.png"/>
    </div><!-- //#serviceCharge  -->
    <div id="directions">
        <h1>당나귀 홀 오시는 길</h1>
        <div id="contactMap" style="width:100%;height:350px;"></div>
    </div><!-- //#directions  -->
   <div class="box_click_btn">
        <div class="btn_click">
            <a href="concertForm">대관신청</a>
        </div><!--//btn_ticket -->
    </div><!--//box_ticketing_btn -->

</div><!-- //#wrap  -->
</div>
	<c:import url="template/footer.jsp">
	</c:import>
<script src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=ff0b5d47787f5de0113d9930f6e326b3"></script>
<script>
    var mapContainer = document.getElementById('contactMap'), // 지도를 표시할 div
        mapOption = {
            center: new daum.maps.LatLng(37.5583619,126.92156299999999), // 지도의 중심좌표
            level: 3 // 지도의 확대 레벨
        };

    var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

    // 마커가 표시될 위치입니다
    var markerPosition  = new daum.maps.LatLng(37.5583619,126.92156299999999);

    // 마커를 생성합니다
    var marker = new daum.maps.Marker({
        position: markerPosition
    });

    // 마커가 지도 위에 표시되도록 설정합니다
    marker.setMap(map);

    // 아래 코드는 지도 위의 마커를 제거하는 코드입니다
    // marker.setMap(null);



    var $img = $("#contentImg img");

    var imgSrc;

    var $conImgUp =  $(".con_img_up");

    var $gray = $("#gray");

    $img.click(function () {

        //var index = $(this).index();
        imgSrc= $(this).attr("src");

        //alert(imgSrc);
        //alert(index);

        $conImgUp.css("display","block");
        $conImgUp.attr("src",imgSrc);
        $gray.fadeIn(500);
    });//click



    $gray.click(function () {
        $(this).fadeOut(500);
    });

    var $click=$(".click");
    var $myAlertBox=$(".myAlertBox");
    var $alert=$("#alert");
    var $alertBox=$(".alertBox");
    var $body=$("body");
    var $topBtn = $("#topBtn")
    $(window).scroll(function() {
        if ($(window).scrollTop() >= $(document).height() - $(window).height()-80) {
//                alert('End of Window');
            $topBtn.css("bottom","120px")

        } else(
            $topBtn.css("bottom","10px")
        )
    });
    $click.on("click",function () {

        $myAlertBox.toggleClass("on");
        $alertBox.removeClass("show");
        return false;
    });

    $alert.on("click",function () {

        $alertBox.toggleClass("show");
        $myAlertBox.removeClass("on");
        return false;
    });
    
    $body.click(function () {
        if($myAlertBox.hasClass("on")){
            $myAlertBox.removeClass("on");
        }
        if($alertBox.hasClass("show")) {
            $alertBox.removeClass("show");
        }
    });
    
</script>
</body>
</html>