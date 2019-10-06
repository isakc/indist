<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>앨범 좋아</title>
    <c:import url="../view/template/link.jsp"></c:import>
    <link rel="stylesheet" href="css/template/myPage.css"/>
    <style>

        /* 앨범 리스트 CSS 시작*/
        #listAlbum{
            width:1000px;
            min-height: 980px;
            /*background-color: greenyellow;*/
        }
        #listAlbum ul{
            width:1000px;
            background-color: blue;
        }
        .list_album{
            width: 200px;
            height: 250px;
            /*background-color: orange;*/
            float: left;
            position: relative;
            transition: .7s ease;
        }
        .desc_album_musician{
            font-size: 15px;
            font-weight: 700;
            color: #0099cc;
        }
        .desc_album_title{
            font-size: 16px;
            font-weight: 700;
            color:#757575;
        }
        /*앨범 리스트 hover 했을시 색변경*/
        .list_album:hover{
            background:#0099cc;
        }
        .list_album:hover .thumb_cover {
            display: block;
        }
        .list_album:hover .inner_album_list{
            background:#0099cc;
        }
        .list_album:hover .desc_album_musician{
            color:#fff;
        }
        .list_album:hover .desc_album_title{
            color:#fff;
        }

        .inner_album_list{
            width: 188px;
            height: 238px;
            position: absolute;
            left: 6px;
            top: 6px;
            /*background-color: firebrick;*/
        }
        #listAlbum a{
            text-decoration: none;
        }
        .thumb_album_list{
            width: 188px;
            height: 188px;
            background: red;
            position: absolute;
            /*top: 5px;*/
        }
        .regdate{
            width:60px;
            height:60px;
            background: #99cccc;
            color:#fff;
            line-height: 28px;
            font-size: 15px;
            font-weight: 800;
            text-align: center;
            opacity: .9;
            position: absolute;
            z-index: 4;
        }
        .thumb_album{
            width:188px;
            height:188px;
            position:absolute;
        }
        /*앨범 hover시 가격 커버*/
        .thumb_cover{
            width: 188px;
            height: 188px;
            background-color: #fff;
            opacity: .6;
            color: #424242;
            position: absolute;
            z-index: 5;
            font-size: 20px;
            font-weight: 600;
            top: 6px;
            left:6px;
            display: none;
        }

        /* 가격 커버의 아이콘 a요소 속성 변경*/
        .thumb_cover a{
            text-decoration: none;
            color: #424242;
        }

        /*앨범 커버 - 추천, 장바구니추가 아이콘*/
        .desc_like_box{
            width:178px;
            height:94px;
            /*background: olive;*/
            text-align: right;
            line-height: 30px;
            padding: 0 10px 0 0 ;
        }
        /* 아이콘 버튼 */
        .desc_like_box button{
            background:olivedrab;
            text-align: center;
            background:transparent;
            border: none;
            cursor: pointer;
        }
        .desc_like_box button:focus,
        .selectBox_album:focus,
        .btn_album_search:focus,
        #albumSearch:focus{
            outline: none;
        }
        .desc_like_box button:active{
            width:25px;
            height:25px;
        }
        .desc_like{
            font-size: 18px;
            color:#e53935;
        }

        /* 앨범리스트 장바구니 아이콘 */
        .desc_cart{
            color: #424242;
            display: inline-block;
            position: absolute;
            top: 33px;
            right: 28px;
            font-size: 18px;
        }
        /* 앨범 커버 가격 */
        .desc_price{
            width:188px;
            height:94px;
            /*background: navajowhite;*/
            text-align: center;
            line-height: 94px;
            font-size: 22px;
            font-weight: 700;
        }
        .desc_price>a{
            color:#fff;
        }
        /* 앨범리스트_곡명_아티스트명 */
        .desc_album_list{
            position:absolute;
            bottom:0;
            text-align: center;
            width:188px;
            height:40px;
            font-size: 15px;
            font-weight: 600;
        }
        /* 앨범 리스트 CSS end*/

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

        <li class="on">
            <span>좋아요</span>
            <ul class="snb_sub_list">
                <li>
                    <a href="contentLike">컨텐츠</a>
                </li>
                <li class="on">
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
    <div id="listAlbum">
        <ul>
        <c:forEach items="${albumLike }" var="album">
            <li class="list_album">
                <a href="#"><!-- 앨범 상세링크 -->
                    <div class="inner_album_list">
                        <div class="thumb_album_list">
                            <div class="regdate">${album.releaseDate }</div>
                            <img class="thumb_album" src="img/album/albumCover/${album.coverImg }" alt="앨범커버"/>
                        </div><!-- 앨범 발행일 -->
                        <dl class="desc_album_list">
                            <dd class="desc_album_musician">${album.indieName }</dd>
                            <dt class="desc_album_title">${album.albumTitle }</dt>
                        </dl>
                    </div><!-- 앨범 커버사진 -->
                </a>
                <div class="thumb_cover">
                    <div class="desc_like_box">
                        <button class="desc_like"><i class="fa fa-heart"></i></button>
                        <span>${album.likes }</span>
                        <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                    </div><!-- 장바구니 좋아요 버튼 -->
                    <a href="" class="desc_price">
                        <div class="desc_price">
                            <span>￦${album.price }</span>
                        </div>
                    </a><!-- 앨범 상세페이지 -->
                </div><!-- thumb_cover end -->
            </li>
            </c:forEach>
        </ul>
    </div>
</div><!-- #content end -->

<c:import url="../view/template/footer.jsp"></c:import>

<script src="js/jquery-3.2.1.min.js"></script>
<script>

    //2016-06-20 박은기 좋아요 버튼 클릭시 아이콘 변경, 갯수 변경
    $(".desc_like").click(function () {
        var $this = $(this);
        var $i = $this.find("i");
        var count = parseInt($this.next("span").text());
        if($i.hasClass("fa-heart-o")){
            $i.attr("class","fa fa-heart");
            $this.next("span").text(++count);
        }else{
            $i.attr("class","fa fa-heart-o");
            $this.next("span").text(--count);
        }
    });

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