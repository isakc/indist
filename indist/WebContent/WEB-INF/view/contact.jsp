<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>contact</title>
    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/noto.sans.korea.css" />
	<link rel="shortcut icon" type="image/x-icon" href="/img/Logo/favicon.ico" />
    <style>
        body{
            margin :0;
            font-family: 'NotoSansKR', sans-serif;
        }
        #header{
            width:100%;
            height:70px;
            background-color:#99cccc;
        }
        #headerBox{
            width:1000px;
            height:70px;
            background-color:#99cccc;
            margin:auto;
            position:relative;
        }
        #headerLogo{
            background-image:url("img/headerLogo.png");
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            width:140px;
            height:60px;
            position: absolute;
            left:-23px;
            top:10px;
        }
        #menuTabBox{
            width:560px;
            height:60px;
            position: absolute;
            left: 205px;
            top:5px;
            text-align: center;
        }
        .menu{
            width:140px;
            height:60px;
            line-height: 60px;
            float: left;
            cursor: pointer;
        }
        .menu a{
            font-weight: bold;
            color:white;
            text-decoration: none;
        }
        .menu a:hover{
            color:#0099cc;
        }
        #player{
            background-color: transparent;
            border: none;
            outline: none;
            cursor: pointer;
            width:50px;
            height:64px;
            background-image:url("img/player.png");
            background-size: contain;
            background-repeat: no-repeat;
            background-position: center;
            position: absolute;
            right: 80px;
            top:2px;
            transition: .3s ease;

        }
        #player:hover {
            transform: rotate(20deg);
        }
        #profileBox{
            width:75px;
            height:64px;
            position: absolute;
            right:0px;
            top:3px;
        }
        #profile{
            width:64px;
            height:64px;
            border-radius: 32px;
            background-color: yellow;
            position: relative;
        }
        #profile img{
            width:64px;
            height:64px;
            border-radius: 32px;
        }
        #profile:hover .click{
            display: block;
        }
        #profile .click{
            width:64px;
            height:64px;
            border-radius: 32px;
            background-color: rgba(255, 192, 203, .3);
            color:white;
            position: absolute;
            top:0px;
            left:0px;
            text-align: center;
            line-height: 64px;
            display: none;
            cursor: pointer;
        }
        /*jquery로하기*/
        #profileBox .myAlertBox{
            width: 98px;
            height: 149px;
            border: 1px dotted #424242;
            border-radius: 10px;
            position: relative;
            bottom:0;
            right:17px;
            background-color: white;
            display: none;
        }
        #profileBox .myAlertBox.on{
            display: block;
        }
        #profileBox .myAlert{
            width: 98px;
            height:49px;
            text-align: center;
            line-height: 50px;
        }
        #profileBox .myAlert a{
            color:#0099cc;

        }
        #profileBox .myAlert:hover{
            background-color: orange;
            cursor: pointer;
        }
        #profileBox .myAlert:hover a{
            background-color: orange;
            color:white;
        }
        .myInfo{
            border-radius: 10px 10px 0 0 ;
        }
        .myBand{
            border-top:1px dotted #424242;
            border-bottom: 1px dotted #424242;
        }
        .logout{
            border-radius: 0 0 10px 10px;
        }
        #profileBox .myAlert a{
            text-decoration: none;
        }
        #alert{
            width: 26px;
            height: 26px;
            background-image:url("img/alert.png");
            background-size: contain;
            background-repeat: no-repeat;
            background-position: center;
            background-color: transparent;
            border:none;
            position: absolute;
            right: 0px;
            top:35px;
            cursor: pointer;
            outline: none;
            transition: .3s ease;
            transform-origin: 30% 0%;

        }
        #alert:hover {
            transform: rotate(30deg);
        }
        .alertBox{
            width:199px;
            height: 199px;
            border:1px solid #424242;
            background-color: red;
            position: absolute;
            right:0;
            top:64px;
            display: none;
        }
        .alertBox.show{
            display: block;
        }
        #footer {
            width:100%;
            height:90px;
            background:#99cccc;
            line-height: 90px;
        }
        #topBtn{
            width: 60px;
            height: 60px;
            background-color: #99cccc;
            text-decoration: none;
            text-align: center;
            color:white;
            line-height: 60px;
            display: block;
            position: fixed;
            right:8%;
            /*transition: .3s ease;*/
        }
        #footerBox{
            width: 1000px;
            height: 90px;
            margin: auto;
            line-height: 90px;
            position: relative;
        }
        #policy{
            font-weight: bold;
            width:300px;
            height: 30px;
            line-height: 30px;
            position: absolute;
            right:105px;
            top:20px;
        }
        #policy ul {
            text-align: right;
        }

        #policy li {
            display: inline;
            border-left:1px solid #ddd;
            margin-right:9px;
            padding-left: 8px;
        }
        #policy li:first-child {
            border:none;
        }
        #policy a{
            color:white;
            text-decoration: none;
        }
        #policy a:hover {
            color:#0099cc;
        }
        #address{
            font-weight: bold;
            width:367px;
            height:30px;
            line-height: 30px;
            position: absolute;
            right: 105px;
            bottom: 10px;
            color:#5D4037;
        }
        #footerLogo{
            background-image:url("img/footerLogo.png");
            background-size: 100%;
            background-repeat: no-repeat;
            background-position: center;
            width:160px;
            height:100px;
            position: absolute;
            right:-50px;
            top:10px;
        }
        /*content stylesheet*/
        #content{
            margin: auto;
            width:1000px;
        }
        #contactText{
            margin: auto;
            margin-top:10px;
            margin-bottom: 20px;
            width: 994px;
            height: 300px;
            /*border: 3px solid #99cccc;*/
            font-size: 15px;
            font-weight: bold;
            color:#424242;
            line-height: 40px;
        }
        #contactText h2{
            font-size: 20px;
            font-weight: bold;
            color:#424242;
        }
        #contactTitle{
            margin-top: 20px;
            font-size: 30px;
            font-weight: bold;
            color:#99cccc;
        }
        #contactMap{
            margin: auto;
            margin-top:20px;
            margin-bottom: 20px;
            width: 994px;
            height: 300px;
            /*border: 3px solid #99cccc;*/
        }
        #mapTitle{
            font-size: 30px;
            font-weight: bold;
            color:#99cccc;
        }
    </style>
</head>
<body>

	<c:import url="../view/template/header.jsp"></c:import>
<div id="content">
    <h1 id="contactTitle">Contact</h1>
    <div id="contactText">
        <h2>인디스트</h2>
        <div id="contactText1">
        <p>Office Hour : Mon-Fri | AM 10:00~PM 7:00(Lunch Time | PM 1:00~2:00)</p>
        <p>Tel : +82-2-6083-6535</p>
        <p>Fax : +82-2-323-6535</p>
        <p>E-mail : indistkorea@gmail.com</p>
        </div>
        <div id="contactText2">
        <p>서울특별시 마포구 월드컵북로4길 47(도교동 204-30)2층(우)03993</p>
        <p>2F 47,World Cup buk-ro-4-gil,Mapo-gu,Seoul,Korea(03993)</p>
        </div>
    </div>
    <h1 id="mapTitle">Map</h1>
    <div id="contactMap" style="width:100%;height:350px;"></div>
</div>

	<c:import url="../view/template/footer.jsp"></c:import>
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
    })



            $("#player").click(function () {


        window.open("player.html", "_blank", 'width=400,height=381, location=no, menubar=no, status=no, titlebar=no, scrollbars=no');
    })


</script>
</body>
</html>