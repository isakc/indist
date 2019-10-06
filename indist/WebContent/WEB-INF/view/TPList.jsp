<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>티켓구매 내역</title>
    
    <c:import url="../view/template/link.jsp"></c:import>
    <link rel="stylesheet" href="css/template/myPage.css"/>
    <style>
        .list_my_ticket{
            margin-top: 30px;
        }
        .list_my_ticket>span{
            font-size: 30px;
        }
        .concertPosters {
            position: relative;
            width: 1000px; /* 2017_06_15 신애 변경 */
            min-height: 50px;
            overflow: hidden;
        }

        .expectedConcert {
            width: 1000px;
            min-height: 100px;
            margin: 40px 5px;
            float: left;
            overflow: hidden;

        }

        .concertPosters ul {
            position: relative;
            overflow: hidden;
        }

        .concertPosters .concert_list {
            width: 1000px;
            overflow: hidden;
        }

        .concertPosters .concert_list>ul {
            position: relative;
            width: 1000px;
            margin-bottom: 5px;
        }

        .concertPosters .concert_list ul li:hover{
            background: #09c;
        }

        .concertPosters .concert_list>ul>li {
            width: 220px; /* 2017_06_15 신애 변경 */
            float: left;
            padding:10px;
        }

        .concertPosters .concert_cover {
            position: relative;
            width: 210px; /* 2017_06_15 신애 변경 */
        }

        .concertPosters .cover {
            position: relative;
            display: block;
            width: 210px; /* 2017_06_15 신애 변경 */
            min-height: 150px;
        }

        .concertPosters .cover:before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            background: transparent;
            width: 220.5px; /* 2017_06_15 신애 변경 */
            transition: .4s ease;
        }

        .concertPosters .cover:hover:before {
            background: rgba(255,255,255,.7);
        }

        .concertPosters .cover img {
            width: 220.5px; /* 2017_06_15 신애 변경 */
            opacity: 1;
        }

        .concertPosters .concert_cast, .concertPosters .concert_price {
            position: absolute;
            left: 0;
            background: silver;
            width: 220px; /* 2017_06_15 신애 변경 */
            opacity: 0;
            transition: .3s ease;
        }

        .concertPosters .concert_cast {
            top: 0;
            height: 70%;
        }

        .concertPosters .concert_price {
            bottom: 0;
            height: 30%;
            font-size: 20px;
            text-align: center;
        }

        .concertPosters .cover:hover .concert_cast, .concertPosters .cover:hover .concert_price {
            opacity: .8;
        }

        .concertPosters .concert_cast h4 {
            padding: 10px;
            text-align: left;
        }

        .concertPosters .concert_cast ul {
            padding: 0 10px;
        }

        .concertPosters .concert_cast li {
            position: relative;
            /*float: left;*/
        }

        .concertPosters .concert_list li:hover .concert_info{
            background: #09c;
        }

        .concertPosters .concert_info {
            position: relative;
            background: #99cccc;
            width: 230px;
            min-height: 50px;
            padding: 5px 0;
            color: #eeeeee;
            text-align: center;
        }

        .concertPosters .concert_title, .concertPosters .concert_release, .concertPosters .concert_place {
            display: block;
            width: 220px;
            padding: 2px 5px;
            white-space: nowrap;
            text-overflow: ellipsis;
            overflow: hidden;
        }

        .concertPosters .concert_title a {
            display: inline-block;
            max-width: 220px;
            text-decoration: none;
            font-weight: bold;
            color: #ffffff;
            white-space: nowrap;
            text-overflow: ellipsis;
            overflow: hidden;
        }

        .concertPosters .concert_title:hover a {
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

        .concertPosters .concert_title {font-size: 18px;}
        .concertPosters .concert_release {font-size: 13px;}
        .concertPosters .concert_place {font-size: 15px;}

    </style>
</head>

<body>
<c:import url="../view/template/header.jsp"></c:import>

<div id="MyPageLeftSnb">
    <ul class="snb_main_list">
        <li>
            <a href="myInfo">내정보</a>
        </li>
        <li class="on">
            <span>구매내역</span>

            <ul class="snb_sub_list">
                <li class="on">
                    <a href="TPList">티켓</a>
                </li>
                <li>
                    <a href="APList">앨범</a>
                </li>
            </ul>

        </li>

        <li>
            <a href="cart">장바구니</a>
        </li>

        <li>
            <span>좋아요</span>
            <ul class="snb_sub_list">
                <li>
                    <a href="contentLike">컨텐츠</a>
                </li>
                <li>
                    <a href="albumLike">앨범</a>
                </li>
            </ul>
        </li>

        <li>
            <span>팬 맺기</span>
            <ul class="snb_sub_list">
                <li>
                    <a href="indieLike">인디</a>
                </li>
                <li>
                    <a href="rookieLike">루키</a>
                </li>
            </ul>
        </li>

        <li>
            <span>내 게시글</span>
            <ul class="snb_sub_list">
                <li>
                    <a href="QnA">QnA</a>
                </li>
                <li>
                    <a href="concertReview">콘서트 리뷰</a>
                </li>
            </ul>
        </li>
    </ul>
</div><!-- #MyPageLeftSnb end-->

<div id="content">
    <div class="list_my_ticket">
        <span>사용예정 티켓</span>
        <div class="concertPosters">
            <div class="expectedConcert">
                <div class="concert_list">
                    <ul>  <!-- width 값 변수처리 : 242.5 * x) -->
                        <li>
                            <div class="concert_cover">
                        <span class="cover">
                            <img src="img/concert/브로콜리너마저_포스터.png" alt="optimize"/>
                            <div class="concert_cast">
                                <h4>출연진</h4>
                                <ul>
                                    <li>장미여관</li>
                                    <li>윤딴딴 </li>
                                    <li>신현희와김루트 </li>
                                    <li>제이레빗 </li>
                                    <li>노브레인</li>
                                </ul>
                            </div>
                            <span class="concert_price">
                                <i class="fa fa-won"></i>
                                55,000
                            </span>
                        </span>
                            </div>
                            <div class="concert_info">
                        <span class="concert_title">
                            <a href="">브로콜리너마저 여름 장기 공연 '이른 열대야'</a>
                        </span>
                                <span class="concert_release">
                            2017년 6월 30일 (금) 오후 8시
                        </span>
                                <span class="concert_place">
                            홍대 왓에버 (구 벨로주)
                        </span>
                            </div>
                        </li>
                    </ul>
                </div>
            </div> <!-- // #expectedConcert -->
        </div> <!-- // #concertPosters -->
    </div>

    <div class="list_my_ticket">
        <span>사용한 티켓</span>
        <div class="concertPosters">
            <div class="expectedConcert">
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
                                25,000
                            </span>
                        </span>
                            </div>
                            <div class="concert_info">
                        <span class="concert_title">
                            <a href="">윤딴딴 단독콘서트</a>
                        </span>
                                <span class="concert_release">
                            2017년 3월 25일 (토) 오후 6시
                        </span>
                                <span class="concert_place">
                            딴칸방
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
                            2017년 6월 18일 (일) 오후 5시
                        </span>
                                <span class="concert_place">
                            VIRGIN FOREST
                        </span>
                            </div>
                        </li>
                    </ul>
                </div>
            </div> <!-- // #expectedConcert -->
        </div> <!-- // #concertPosters -->
    </div>
</div><!-- #content end -->

<c:import url="../view/template/footer.jsp"></c:import>
    
<script src="js/jquery-3.2.1.min.js"></script>
<script>

    /*header, footer*/
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