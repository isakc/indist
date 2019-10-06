<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>공연장 정보</title>
    <link rel="stylesheet" href="css/font-awesome.min.css"/>
    <link rel="stylesheet" href="css/reset.css"/>
    <link rel="stylesheet" href="css/kakao.font.css"/>
    <link rel="stylesheet" href="css/concert/conDetail_header.css"/>
    <link rel="stylesheet" href="css/concert/ticketTable.css"/><!--2017.06.18 신애 추가 -->
    <link rel="stylesheet" href="css/template/template.css"/>
	<link rel="shortcut icon" type="image/x-icon" href="/img/Logo/favicon.ico" />
    <style>
        body{
            font-family:'Kakao', sans-serif;
            line-height:1.3em ;
        }

        #wrap{
            width: 1000px;
            margin: auto;
            padding-top: 70px;
        }

        .box_logo_thumb>img{
            width: 180px;
            height: 136px;
        }

        #contactMap {
            margin-bottom: 40px;
        }

        .box_concert_profile_in{
            width: 1000px;
            height: 140px;
            overflow: hidden;
        }

        .box_concert_txt, .box_logo_thumb{
            float: left;
        }

        .tit_concert_area>a{
            text-decoration: none;
            color: black;
            font-size: 20px;
        }

        .box_concert_txt {
            margin-left: 20px;
            margin-top: 10px;
        }

        .list_profile{
            margin-top: 30px;
        }

        #box_concert_api>.tit_sub_float{
            margin-bottom: 10px ;
            margin-top: 40px;
            font-weight: 400;
        }

        #box_cont_tab>.cont_tab_hall>a{
            border-bottom: 1px solid #0099cc;
        }


    </style>
</head>
<body>
	<c:import url="template/header.jsp">
	</c:import>

	<c:import url="template/conDetailHeader.jsp">
	</c:import>
    <div class="box_concert_profile_in">
        <div class="box_logo_thumb">
            <img src="img/concert/콘서트_당나귀홀_IMG.png"/>
        </div><!-- //box_logo_thumb -->
        <div class="box_concert_txt">
            <p class="tit_concert_area">
                <a href="rent">당나귀 홀</a>
            </p>
            <ul class="list_profile">
                <li>서울 관악구 남부순환로 1820 에그옐로우빌딩 14층</li>
                <li>1588-0077</li>
                <li>-</li>
            </ul>
        </div><!-- //box_consert_txt -->
    </div><!-- //box_consert_profile_in -->
    <div id="box_concert_api">
        <p class="tit_sub_float">공연장 위치</p>
        <div id="contactMap" style="width:100%;height:350px;"></div>
    </div>
    <div id="concert_footer">
        <img src="img/concert/콘서트_하단.png"/>
    </div><!-- //concert_footer -->
</div><!-- //wrap -->

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
</script>
	<c:import url="template/conHeaderSript.jsp">
	</c:import>
</body>
</html>