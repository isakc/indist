<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>공연후기</title>
    
    <c:import url="../view/template/link.jsp"></c:import>
    <link rel="stylesheet" href="css/template/myPage.css"/>
    <style>

        #wrapConcertReview {
            /*background-color: peru;*/
            height: 500px;
            margin-top: 40px;
        }

        #wrapConcertReview > .list_my_ticket> span {
            font-size: 30px;
        }

        .concertPosters {
            position: relative;
            width: 990px;
            min-height: 50px;
            padding: 5px 0;
            overflow: hidden;
        }

        .expectedConcert {
            /*background: red;*/
            width: 970px;
            min-height: 100px;
            margin: 0 5px;
            float: left;
            overflow: hidden;
        }

        .concertPosters ul {
            position: relative;
            padding: 5px 0;
            /*background: blue;*/
            overflow: hidden;
        }

        .concertPosters .concert_list {
            overflow: auto;
        }

        .concertPosters .concert_list > ul {
            width: 970px;
        }

        .concertPosters .concert_list > ul > li {
            position: relative;
            margin: 0 6px;
            float: left;
            box-shadow: 0 0 1px #424242;
        }

        .concertPosters .conert_cover {
            position: relative;
            width: 230.5px;
            min-height: 150px;
        }

        .concertPosters .cover {
            position: relative;
            display: block;
            width: 230.5px;
            min-height: 150px;
        }

        .concertPosters .cover:before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            background: transparent;
            width: 230.5px;
            min-height: 150px;
            transition: .4s ease;
        }

        .concertPosters .cover:hover:before {
            background: rgba(255, 255, 255, .7);
        }

        .concertPosters .cover img {
            width: 230.5px;
            min-height: 150px;
            opacity: 1;
        }

        .concertPosters .concert_cast, .concertPosters .concert_price {
            position: absolute;
            left: 0;
            background: silver;
            width: 230px;
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
            margin: 0 6px;
            float: left;
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

        .concertPosters .concert_title {
            font-size: 18px;
        }

        .concertPosters .concert_release {
            font-size: 13px;
        }

        .concertPosters .concert_place {
            font-size: 15px;
        }

    </style>
</head>
<body>

<c:import url="../view/template/header.jsp"></c:import>
    
<div id="MyPageLeftSnb">
    <ul class="snb_main_list">
        <li>
            <a href="myInfo">내정보</a>
        </li>
        <li>
            <span>구매내역</span>

            <ul class="snb_sub_list">
                <li>
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

        <li class="on">
            <span>내 게시글</span>
            <ul class="snb_sub_list">
                <li>
                    <a href="QnA">QnA</a>
                </li>
                <li class="on">
                    <a href="concertReview">콘서트 리뷰</a>
                </li>
            </ul>
        </li>
    </ul>
</div><!-- #MyPageLeftSnb end-->
<div id="content">
    <div id="wrapConcertReview">
        <div class="list_my_ticket">
            <span>관람 내역</span>
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
                                                            <li>10cm</li>
                                                            <li>10cm</li>
                                                            <li>볼빨간사춘기</li>
                                                            <li>소란</li>
                                                            <li>브로콜리너마저</li>
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
                        </ul>
                    </div>
                </div> <!-- // #expectedConcert -->
            </div> <!-- // #concertPosters -->
        </div>
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