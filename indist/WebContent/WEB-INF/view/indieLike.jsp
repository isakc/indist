<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>인디팬</title>
    
    <c:import url="../view/template/link.jsp"></c:import>
    <link rel="stylesheet" href="css/template/myPage.css"/>
    <style>
        /*인디목록들*/
        #indieList {
            width: 1000px;
            overflow: hidden;
        }

        #indieList li {
            position: relative;
            width: 230px;
            height: 300px;
            margin: 10px;
            text-align: center;
            float: left;
            box-shadow: 0 0 1px #424242;
        }

        #indieList .indie_profile {
            position: absolute;
            top: 20px;
            left: 40px;
            width: 150px;
            height: 150px;
            border-radius: 75px;
            box-shadow: 0 0 1px #424242;
            overflow: hidden;
        }

        #indieList .indie_profile img {
            width: 150px;
            height: 150px;
        }

        #indieList .musician_name {
            position: absolute;
            top: 180px;
            left: 10px;
            width: 200px;
            height: 20px;
            padding: 5px;
            font-size: 20px;
            white-space: nowrap;
            text-overflow: ellipsis;
            overflow: hidden;
        }

        #indieList .musician_name a {
            text-decoration: none;
            color: #99cccc;
        }

        #indieList .musician_name a:hover {
            text-decoration: underline;
        }

        #indieList .rep_genre_box {
            position: absolute;
            top: 210px;
            left: 10px;
            width: 200px;
            height: 20px;
            padding: 5px;
            line-height: 15px;
        }

        #indieList .rep_genre {
            position: relative;
            display: inline-block;
            background: silver;
            height: 15px;
            padding: 2px 10px;
            border-radius: 7.5px;
            margin: auto;
            font-size: 15px;
        }

        #indieList .musician_contents {
            position: relative;
            top: 240px;
            left: 0;
            display: block;
            width: 210px;
            height: 20px;
            margin: auto;
            font-size: 12px;
            overflow: hidden;
        }

        #indieList .musician_contents em {
            font-weight: bold;
        }

        #indieList .musician_content {
            position: relative;
            top: 4px;
            height: 20px;
            margin: 0 5px;
        }

        #indieList .musician_likes {
            position: absolute;
            bottom: 10px;
            left: 5px;
            width: 220px;
            height: 25px;
            font-size: 20px;
            line-height: 25px;
        }

        .fa{
            color: red;
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
                <li class="on">
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
    <div id="indieList">
        <ul>
        <c:forEach items="${indieLike }" var="indie">
            <li>
                                <span class="indie_profile">
                                    <img src="img/indie/profile/${indie.name }/${indie.profile }"/>
                                </span>
                <span class="musician_name">
                                    <a href="">${indie.name }</a>
                                </span>
                <span class="rep_genre_box">
                                    <span class="rep_genre">
                                        ${indie.genre }
                                    </span>
                                </span>
                <span class="musician_contents">
                                    <span class="musician_content album">
                                        <em>${indie.albums }</em> Album
                                    </span>
                                    <span class="musician_content concert">
                                        <em>${indie.concerts }</em> Concert</span>
                                    </span>
                <span class="musician_likes">
                                    <i class="fa fa-heart"></i>
                                    <em>${indie.likes }</em>
                                </span>
            </li>
            </c:forEach>
        </ul>
    </div> <!-- // #indieList -->

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