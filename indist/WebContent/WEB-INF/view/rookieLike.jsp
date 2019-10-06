<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>루키팬</title>
    
    <c:import url="../view/template/link.jsp"></c:import>
    <link rel="stylesheet" href="css/template/myPage.css"/>
    <style>

        /*루키목록들*/
        .card_rookie {
            width: 230px;
            height: 320px;
            background-color: #fff;
            position: relative;
            float: left;
            margin: 10px;

            /*외곽선 추가*/
            box-shadow: 0 0 1px #424242;
        }

        .card_rookie:hover {
            cursor: pointer;

        }

        .card_rookie span {
            color: #969696;
            display: block;
            position: absolute;
        }

        .card_rookie em {
            text-align: center;
            display: block;
            width: 180px;
            color: #99cccc;
            position: absolute;
            top: 180px;
            left: 25px;
            font-size: 20px;
        }

        .card_rookie_profile {
            width: 148px;
            height: 148px;
            border-radius: 200px;
            position: absolute;
            top: 20px;
            left: 40px;
            border: 1px solid #99cccc;
        }
        
        .card_rookie_profile img{
        	width: 148px;
        	height: 148px;
        	border-radius: 74px;
        }

        .rookie_genre {
            width: 80px;
            height: 8px;
            border-radius: 20px;
            text-align: center;
            line-height: 6px;
            font-size: 15px;
            background-color: rgba(0, 0, 0, .2);
            color: #424242;
            padding: 10px;
            position: absolute;
            top: 210px;
            left: 65px;
        }

        .c_audio {
            top: 245px;
            left: 75px;
            font-size: 14px;
        }

        .c_video {
            top: 245px;
            right: 75px;
            font-size: 14px;
        }

        .c_follow {
            width: 100px;
            text-align: center;
            top: 280px;
            left: 65px;
            font-size: 16px;
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

        <li class="on">
            <span>팬 맺기</span>
            <ul class="snb_sub_list">
                <li>
                    <a href="indieLike">인디</a>
                </li>
                <li class="on">
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
    <ul>
    <c:choose>
    <c:when test="${rookieLike.isEmpty() }">
    <li>아직 좋아요가 없습니다</li>
    </c:when>
    <c:otherwise>
    <c:forEach items="${rookieLike }" var="rookie">
        <li>
            <div class="card_rookie">
                <a class="cover" href="contentDetail"></a>
                <div class="card_rookie_profile" class="bg">
                	<img src="img/rookie/rookieProfile/${rookie.profile }" />
                </div><!--//card_rookie_profile-->
                <em class="overflow">${rookie.name }</em>
                <div class="rookie_genre" class="overflow">${rookie.genre }</div><!--//rookie_genre-->
                <span class="c_audio"><i class="fa fa-headphones"></i> ${rookie.music }</span>
                <span class="c_video"><i class="fa fa-video-camera"></i> ${rookie.video }</span>
                <span class="c_follow"><i class="fa fa-users"></i> ${rookie.likes }</span>
            </div><!--//card_rookie -->
        </li>
        </c:forEach>
        </c:otherwise>
        </c:choose>
    </ul>
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