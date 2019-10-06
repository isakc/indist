<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>콘서트 Main</title>
    <link rel="stylesheet" href="css/font-awesome.min.css"/>
    <link rel="stylesheet" href="css/reset.css"/>
    <link rel="stylesheet" href="css/kakao.font.css"/>
    <link rel="stylesheet" href="css/template/template.css"/>
	<link rel="shortcut icon" type="image/x-icon" href="/img/Logo/favicon.ico" />
    <style>
        body{
            font-family:'Kakao', sans-serif;
        }

        #wrap{
            width: 1000px;
            margin: auto;
        }

        #conHeader{
            width: 100%;
            height: 330px;
        }

        .con_img_header{
            width: 100%;
            height: 330px;
            position: absolute;
            left: 0;
            top: 70px;
            transition: .8s ease;
            overflow: hidden;
        }

        .con_img_header img {
            display: block;
            width: 100%;
            height: 330px;
            /*float: left;*/
            transition: .5s ease;
        }

        #conSelect select {
            width: 150px;
            height: 50px;
            font-size: 20px;
            outline: none;
            border: 3px solid #99cccc ;
            position: absolute;
            top: 440px;
            right: 4%;
            padding: 10px;
            font-family:'Kakao', sans-serif;
        }

        button.fa {
            width: 100px;
            height: 100px;
            font-size:60px;
            border: none;
            cursor: pointer;
            border-radius: 50px;
            line-height: 50px;
            color: #757575;
            position: absolute;
            top: 175px;
            background: transparent;
            outline:none;
        }

        button.fa:hover {
            color: #999999;
        }

        #nextBtn {
            left: 15px;
        }

        #pervBtn {
            right: 15px;
        }

        /* 콘서트 카드 */
        #concertPosters {
            position: relative;
            width: 1000px; /* 2017_06_15 신애 변경 */
            min-height: 50px;
            overflow: hidden;
        }

        #expectedConcert {
            width: 1000px;
            min-height: 100px;
            margin: 40px 5px;
            float: left;
            overflow: hidden;

        }

        #concertPosters ul {
            position: relative;
            overflow: hidden;
        }

        #concertPosters .concert_list {
            width: 1000px;
            overflow: hidden;
            cursor: pointer;
        }

        #concertPosters .concert_list>ul {
            position: relative;
            width: 1000px;
            margin-bottom: 5px;
        }

        #concertPosters .concert_list ul li:hover{
            background: #09c;
        }

        #concertPosters .concert_list>ul>li {
            width: 220px; /* 2017_06_15 신애 변경 */
            float: left;
            padding:10px;
        }

        #concertPosters .concert_cover {
            position: relative;
            width: 210px; /* 2017_06_15 신애 변경 */
        }

        #concertPosters .cover {
            position: relative;
            display: block;
            width: 210px; /* 2017_06_15 신애 변경 */
            min-height: 150px;
        }

        #concertPosters .cover:before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            background: transparent;
            width: 220.5px; /* 2017_06_15 신애 변경 */
            transition: .4s ease;
        }

        #concertPosters .cover:hover:before {
            background: rgba(255,255,255,.7);
        }

        #concertPosters .cover img {
            width: 220.5px; /* 2017_06_15 신애 변경 */
            opacity: 1;
        }

        #concertPosters .concert_cast, #concertPosters .concert_price {
            position: absolute;
            left: 0;
            background: silver;
            width: 220px; /* 2017_06_15 신애 변경 */
            opacity: 0;
            transition: .3s ease;
        }

        #concertPosters .concert_cast {
            top: 0;
            height: 70%;
        }

        #concertPosters .concert_price {
            bottom: 0;
            height: 30%;
            font-size: 20px;
            text-align: center;
        }

        #concertPosters .cover:hover .concert_cast, #concertPosters .cover:hover .concert_price {
            opacity: .8;
        }

        #concertPosters .concert_cast h4 {
            padding: 10px;
            text-align: left;
        }

        #concertPosters .concert_cast ul {
            padding: 0 10px;
        }

        #concertPosters .concert_cast li {
            position: relative;
            float: left;
        }

        #concertPosters .concert_list li:hover .concert_info{
            background: #09c;
        }

        #concertPosters .concert_info {
            position: relative;
            background: #99cccc;
            width: 230px;
            min-height: 50px;
            padding: 5px 0;
            color: #eeeeee;
            text-align: center;
        }

        #concertPosters .concert_title, #concertPosters .concert_release, #concertPosters .concert_place {
            display: block;
            width: 220px;
            padding: 2px 5px;
            white-space: nowrap;
            text-overflow: ellipsis;
            overflow: hidden;
        }

        #concertPosters .concert_title a {
            display: inline-block;
            max-width: 220px;
            text-decoration: none;
            font-weight: bold;
            color: #ffffff;
            white-space: nowrap;
            text-overflow: ellipsis;
            overflow: hidden;
        }

        #concertPosters .concert_title:hover a {
            text-decoration: underline;
        }

        /*  2017.6.19 신애 추가 */
        .dangnagui_con {
            position: absolute;
            top: 0;
            right: -10px;
            background: url("img/concert/당나귀_포스터_공연.png") no-repeat center;
            background-size: cover;
            width: 50px;
            height: 42.4px;
            transition: .4s ease;
        }
        /*  2017.6.19 신애 추가 */

        #concertPosters .concert_title {font-size: 18px;}
        #concertPosters .concert_release {font-size: 13px;}
        #concertPosters .concert_place {font-size: 15px;}


    </style>
</head>
<body>
	<c:import url="template/header.jsp">
	</c:import>
<div id="content">
    <div id="wrap">
        <div id="conHeader">
            <div class="con_img_header">
                <img src="img/concert/콘서트_메인1.png" class="con_img_1" alt="티켓오픈"/>
                <img style="cursor: pointer;"
                	 src="img/concert/콘서트_메인2.png" class="con_img_2" alt="공연장대관상세정보" onclick="rent()"/>
                <img src="img/concert/콘서트_메인3.png" class="con_img_3" alt="핫콘서트"/>
            </div><!-- //.con_img_header  -->
            <button id="nextBtn" class="fa fa-chevron-left"></button>
            <button id="pervBtn" class="fa fa-chevron-right"></button>
        </div><!-- //#conHeader  -->
        <div id="conSelect">
            <select>
                <option>지역순</option>
                <option>구매순</option>
                <option>마감임박순</option>
            </select>
        </div>
        <div id="concertPosters">
            <div id="expectedConcert">
                <div class="concert_list">
                    <ul>  <!-- width 값 변수처리 : 242.5 * x) -->
                        <li>
                            <div class="concert_cover">
                        <span class="cover">
                            <img src="img/concert/콘서트_poster_1.png" alt="optimize"/>
                            <div class="concert_cast">
                                <h4>출연진</h4>
                                <ul>
                                    <li>볼빨간사춘기</li>
                                </ul>
                            </div>
                            <span class="concert_price">
                                <i class="fa fa-won"></i>
                                44,000
                            </span>
                        </span>
                            </div>
                            <div class="concert_info">
                        <span class="concert_title">
                            <a href="concertDetail">윤딴딴 단독콘서트</a>
                        </span>
                                <span class="concert_release">
                            2017년 3월 25일 (토) 오후 6시
                        </span>
                                <span class="concert_place">
                            올림픽공원 뮤즈라이브홀
                        </span>
                            </div>
                        </li>
                        <li>
                            <div class="concert_cover">
                        <span class="cover">
                            <img src="img/concert/콘서트_poster_2.png" alt="optimize"/>
                            <div class="concert_cast">
                                <h4>출연진</h4>
                                <ul>
                                    <li>볼빨간사춘기</li>
                                </ul>
                            </div>
                            <span class="concert_price">
                                <i class="fa fa-won"></i>
                                25,000
                            </span>
                        </span>
                            </div>
                            <div class="concert_info">
                        <span class="concert_title">
                            <a href="">문문 THANK YOU Concert</a>
                        </span>
                                <span class="concert_release">
                            2017년 6월 25일 (일) 오후 6시
                        </span>
                                <span class="concert_place">
                            홍대 KT&G 상상마당
                        </span>
                            </div>
                        </li>
                        <li>
                            <div class="concert_cover">
                        <span class="cover">
                            <!--  2017.6.19 신애 추가 -->
                            <div class="dangnagui_con"></div>
                            <!--  2017.6.19 신애 추가 -->
                            <img src="img/concert/콘서트_poster_3.png" alt="optimize"/>
                            <div class="concert_cast">
                                <h4>출연진</h4>
                                <ul>
                                    <li>볼빨간사춘기</li>
                                </ul>
                            </div>
                            <span class="concert_price">
                                <i class="fa fa-won"></i>
                                20,000
                            </span>
                        </span>
                            </div>
                            <div class="concert_info">
                        <span class="concert_title">
                            <a href="">문문 2nd EP 발매 기념 공연</a>
                        </span>
                                <span class="concert_release">
                            2017년 5월 5일(금) 오후 7시
                        </span>
                                <span class="concert_place">
                            홍대 레드빅스페이스
                        </span>
                            </div>
                        </li>
                        <li>
                            <div class="concert_cover">
                        <span class="cover">
                            <img src="img/concert/콘서트_poster_4.png" alt="optimize"/>
                            <div class="concert_cast">
                                <h4>출연진</h4>
                                <ul>
                                    <li>볼빨간사춘기</li>
                                </ul>
                            </div>
                            <span class="concert_price">
                                <i class="fa fa-won"></i>
                                25,000
                            </span>
                        </span>
                            </div>
                            <div class="concert_info">
                        <span class="concert_title">
                            <a href="">홀로그램필름 단독 콘서트</a>
                        </span>
                                <span class="concert_release">
                            2016년 1월 23일 (토) 오후 6시
                        </span>
                                <span class="concert_place">
                            웨스트브릿지
                        </span>
                            </div>
                        </li>
                        <li>
                            <div class="concert_cover">
                        <span class="cover">
                            <img src="img/concert/콘서트_poster_5.png" alt="optimize"/>
                            <div class="concert_cast">
                                <h4>출연진</h4>
                                <ul>
                                    <li>볼빨간사춘기</li>
                                </ul>
                            </div>
                            <span class="concert_price">
                                <i class="fa fa-won"></i>
                                25,000
                            </span>
                        </span>
                            </div>
                            <div class="concert_info">
                        <span class="concert_title">
                            <a href="">이건일 X 박상훈 콘서트</a>
                        </span>
                                <span class="concert_release">
                            2016년 1월 30일 (토) 오후 7시
                        </span>
                                <span class="concert_place">
							믹스페이스 믹스홀
                        </span>
                            </div>
                        </li>
                        <li>
                            <div class="concert_cover">
                        <span class="cover">
                            <img src="img/concert/콘서트_poster_6.png" alt="optimize"/>
                            <div class="concert_cast">
                                <h4>출연진</h4>
                                <ul>
                                    <li>볼빨간사춘기</li>
                                </ul>
                            </div>
                            <span class="concert_price">
                                <i class="fa fa-won"></i>
                                25,000
                            </span>
                        </span>
                            </div>
                            <div class="concert_info">
                        <span class="concert_title">
                            <a href="">프린세스 디지즈 쇼케이스</a>
                        </span>
                                <span class="concert_release">
                            2016년 5월 6일 (금) 오후 8시
                        </span>
                                <span class="concert_place">
                            네스트나다
                        </span>
                            </div>
                        </li>
                        <li>
                            <div class="concert_cover">
                        <span class="cover">
                            <img src="img/concert/콘서트_poster_7.png" alt="optimize"/>
                            <div class="concert_cast">
                                <h4>출연진</h4>
                                <ul>
                                    <li>볼빨간사춘기</li>
                                </ul>
                            </div>
                            <span class="concert_price">
                                <i class="fa fa-won"></i>
                                25,000
                            </span>
                        </span>
                            </div>
                            <div class="concert_info">
                        <span class="concert_title">
                            <a href="">2016 첫 번째 콘서트</a>
                        </span>
                                <span class="concert_release">
                            2016년 2월 27일 (토) 오후 8시
                        </span>
                                <span class="concert_place">
                            복합문화공간 두잉
                        </span>
                            </div>
                        </li>
                        <li>
                            <div class="concert_cover">
                        <span class="cover">
                            <img src="img/concert/콘서트_poster_8.png" alt="optimize"/>
                            <div class="concert_cast">
                                <h4>출연진</h4>
                                <ul>
                                    <li>볼빨간사춘기</li>
                                </ul>
                            </div>
                            <span class="concert_price">
                                <i class="fa fa-won"></i>
                                25,000
                            </span>
                        </span>
                            </div>
                            <div class="concert_info">
                        <span class="concert_title">
                            <a href="">The Monotones (더 모노톤즈) 단독공연</a>
                        </span>
                                <span class="concert_release">
                            2015년 12월 19일 (토) 오후 7시
                        </span>
                                <span class="concert_place">
                            현대카드 UNDERSTAGE
                        </span>
                            </div>
                        </li>
                        <li>
                            <div class="concert_cover">
                        <span class="cover">
                            <img src="img/concert/콘서트_poster_9.png" alt="optimize"/>
                            <div class="concert_cast">
                                <h4>출연진</h4>
                                <ul>
                                    <li>볼빨간사춘기</li>
                                </ul>
                            </div>
                            <span class="concert_price">
                                <i class="fa fa-won"></i>
                                35,000
                            </span>
                        </span>
                            </div>
                            <div class="concert_info">
                        <span class="concert_title">
                            <a href="">ADOY (아도이) [CATNIP] EP 쇼케이스</a>
                        </span>
                                <span class="concert_release">
                            2017년 6월 30일 (금) 오후 8시
                        </span>
                                <span class="concert_place">
                            홍대 왓에버 (구 벨로주)
                        </span>
                            </div>
                        </li>
                        <li>
                            <div class="concert_cover">
                        <span class="cover">
                            <img src="img/concert/콘서트_poster_10.png" alt="optimize"/>
                            <div class="concert_cast">
                                <h4>출연진</h4>
                                <ul>
                                    <li>볼빨간사춘기</li>
                                </ul>
                            </div>
                            <span class="concert_price">
                                <i class="fa fa-won"></i>
                                25,000
                            </span>
                        </span>
                            </div>
                            <div class="concert_info">
                        <span class="concert_title">
                            <a href="">홍대 앞 그녀들
</a>
                        </span>
                                <span class="concert_release">
                            2017년 3월 11일 (토) 오후 5시
                        </span>
                                <span class="concert_place">
                            벨로주 (VELOSO)
                        </span>
                            </div>
                        </li>
                        <li>
                            <div class="concert_cover">
                        <span class="cover">
                            <img src="img/concert/콘서트_poster_11.png" alt="optimize"/>
                            <div class="concert_cast">
                                <h4>출연진</h4>
                                <ul>
                                    <li>볼빨간사춘기</li>
                                </ul>
                            </div>
                            <span class="concert_price">
                                <i class="fa fa-won"></i>
                                25,000
                            </span>
                        </span>
                            </div>
                            <div class="concert_info">
                        <span class="concert_title">
                            <a href="">[HELLO WORLD We Are Sundae]</a>
                        </span>
                                <span class="concert_release">
                            2017년 2월 25일 (토) 6:30PM
                        </span>
                                <span class="concert_place">
							뮤지스땅스
                        </span>
                            </div>
                        </li>
                        <li>
                            <div class="concert_cover">
                        <span class="cover">
                            <img src="img/concert/콘서트_poster_12.png" alt="optimize"/>
                            <div class="concert_cast">
                                <h4>출연진</h4>
                                <ul>
                                    <li>볼빨간사춘기</li>
                                </ul>
                            </div>
                            <span class="concert_price">
                                <i class="fa fa-won"></i>
                                25,000
                            </span>
                        </span>
                            </div>
                            <div class="concert_info">
                        <span class="concert_title">
                            <a href="">가호 EP 발매 기념 쇼케이스</a>
                        </span>
                                <span class="concert_release">
                            2016년 9월 25일 (일) 6PM
                        </span>
                                <span class="concert_place">
                            Cafe Unplugged
                        </span>
                            </div>
                        </li>
                        <li>
                            <div class="concert_cover">
                        <span class="cover">
                            <img src="img/concert/콘서트_poster_13.png" alt="optimize"/>
                            <div class="concert_cast">
                                <h4>출연진</h4>
                                <ul>
                                    <li>볼빨간사춘기</li>
                                </ul>
                            </div>
                            <span class="concert_price">
                                <i class="fa fa-won"></i>
                                25,000
                            </span>
                        </span>
                            </div>
                            <div class="concert_info">
                        <span class="concert_title">
                            <a href="">뚝배기들 [Well, Well? Well!] 발매기념 단독공연</a>
                        </span>
                                <span class="concert_release">
                            2017년 1월 21일 (토) 7PM
                        </span>
                                <span class="concert_place">
                            클럽 Sharp
                        </span>
                            </div>
                        </li>
                        <li>
                            <div class="concert_cover">
                        <span class="cover">
                            <img src="img/concert/콘서트_poster_14.png" alt="optimize"/>
                            <div class="concert_cast">
                                <h4>출연진</h4>
                                <ul>
                                    <li>볼빨간사춘기</li>
                                </ul>
                            </div>
                            <span class="concert_price">
                                <i class="fa fa-won"></i>
                                25,000
                            </span>
                        </span>
                            </div>
                            <div class="concert_info">
                        <span class="concert_title">
                            <a href="">더 한즈 (The Hans)의 첫 번째 단독콘서트</a>
                        </span>
                                <span class="concert_release">
                            2016년 10월 7일 (금) 8PM
                        </span>
                                <span class="concert_place">
                            클럽 프리버드
                        </span>
                            </div>
                        </li>
                        <li>
                            <div class="concert_cover">
                        <span class="cover">
                            <img src="img/concert/콘서트_poster_15.png" alt="optimize"/>
                            <div class="concert_cast">
                                <h4>출연진</h4>
                                <ul>
                                    <li>볼빨간사춘기</li>
                                </ul>
                            </div>
                            <span class="concert_price">
                                <i class="fa fa-won"></i>
                                25,000
                            </span>
                        </span>
                            </div>
                            <div class="concert_info">
                        <span class="concert_title">
                            <a href="">김태춘 [악마의 씨앗]</a>
                        </span>
                                <span class="concert_release">
                            2016년 8월 6일 (토) 7PM
                        </span>
                                <span class="concert_place">
                            홍대 코스모스
                        </span>
                            </div>
                        </li>
                        <li>
                            <div class="concert_cover">
                        <span class="cover">
                            <img src="img/concert/콘서트_poster_17.png" alt="optimize"/>
                            <div class="concert_cast">
                                <h4>출연진</h4>
                                <ul>
                                    <li>볼빨간사춘기</li>
                                </ul>
                            </div>
                            <span class="concert_price">
                                <i class="fa fa-won"></i>
                                25,000
                            </span>
                        </span>
                            </div>
                            <div class="concert_info">
                        <span class="concert_title">
                            <a href="">단편선과 선원들 2집 발매 기념 쇼케이스</a>
                        </span>
                                <span class="concert_release">
                            2016년 4월 23일(토) 4:30PM
                        </span>
                                <span class="concert_place">
                            KT&G 상상마당 홍대 라이브홀
                        </span>
                            </div>
                        </li>
                        <li>
                            <div class="concert_cover">
                        <span class="cover">
                            <img src="img/concert/콘서트_poster_18.png" alt="optimize"/>
                            <div class="concert_cast">
                                <h4>출연진</h4>
                                <ul>
                                    <li>볼빨간사춘기</li>
                                </ul>
                            </div>
                            <span class="concert_price">
                                <i class="fa fa-won"></i>
                                25,000
                            </span>
                        </span>
                            </div>
                            <div class="concert_info">
                        <span class="concert_title">
                            <a href="">쏠라티 첫 정규앨범 발매 기념 단독 콘서트</a>
                        </span>
                                <span class="concert_release">
                            2016년 6월 25일(월) 8PM
                        </span>
                                <span class="concert_place">
                            벨로주
                        </span>
                            </div>
                        </li>
                        <li>
                            <div class="concert_cover">
                        <span class="cover">
                            <img src="img/concert/콘서트_poster_19.png" alt="optimize"/>
                            <div class="concert_cast">
                                <h4>출연진</h4>
                                <ul>
                                    <li>볼빨간사춘기</li>
                                </ul>
                            </div>
                            <span class="concert_price">
                                <i class="fa fa-won"></i>
                                25,000
                            </span>
                        </span>
                            </div>
                            <div class="concert_info">
                        <span class="concert_title">
                            <a href="">동시상영</a>
                        </span>
                                <span class="concert_release">
                            2016년 4월 14일 (목) 8PM
                        </span>
                                <span class="concert_place">
                            카페 언플러그드
                        </span>
                            </div>
                        </li>
                        <li>
                            <div class="concert_cover">
                        <span class="cover">
                            <img src="img/concert/콘서트_poster_20.png" alt="optimize"/>
                            <div class="concert_cast">
                                <h4>출연진</h4>
                                <ul>
                                    <li>볼빨간사춘기</li>
                                </ul>
                            </div>
                            <span class="concert_price">
                                <i class="fa fa-won"></i>
                                25,000
                            </span>
                        </span>
                            </div>
                            <div class="concert_info">
                        <span class="concert_title">
                            <a href="">신현희와김루트 단독공연</a>
                        </span>
                                <span class="concert_release">
                            2015년 12월 20일 (일) 5PM
                        </span>
                                <span class="concert_place">
                            웨스트브릿지
                        </span>
                            </div>
                        </li>
                        <li>
                            <div class="concert_cover">
                        <span class="cover">
                            <img src="img/concert/콘서트_poster_16.png" alt="optimize"/>
                            <div class="concert_cast">
                                <h4>출연진</h4>
                                <ul>
                                    <li>볼빨간사춘기</li>
                                </ul>
                            </div>
                            <span class="concert_price">
                                <i class="fa fa-won"></i>
                                25,000
                            </span>
                        </span>
                            </div>
                            <div class="concert_info">
                        <span class="concert_title">
                            <a href="">김태춘 [악마의 씨앗]</a>
                        </span>
                                <span class="concert_release">
                            2016년 8월 6일 (토) 7PM
                        </span>
                                <span class="concert_place">
                            홍대 코스모스
                        </span>
                            </div>
                        </li>
                    </ul>
                </div>
            </div> <!-- // #expectedConcert -->
        </div> <!-- // #concertPosters -->

    </div><!-- //#wrap  -->
</div>
	<c:import url="template/footer.jsp">
	</c:import>

<script src="js/jquery.js"></script>
<script src="https://naver.github.io/egjs/latest/dist/pkgd/infiniteGrid.pkgd.min.js"></script>
<script>

    var index = 0;
    var $img = $(".con_img_header>img");

    $("#nextBtn").click(function () {

        index +=1;

        if(index>=3) {
            index = 0;
        }

        $img.css("display","none");

        $($img[index]).css("display","block");
		 

    });

    $("#pervBtn").click(function () {

        index -=1;

        if(index<=-1) {
            index = 2;
        }

        $img.css("display","none");

        $($img[index]).css("display","block");

    });
    
    function rent(){
    	 
        //현재창에서 다른페이지로 이동합니다.
        window.location.href="/rent";
    }
    
    $("#concertPosters .concert_list").click(function name() {
    	location.href='concertDetail';
	});



    $(".concert_list>ul ").infiniteGrid();

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
</script>
</body>
</html>