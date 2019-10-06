<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    
    <c:import url="../view/template/link.jsp"></c:import>
    <link rel="stylesheet" href="css/template/myPage.css"/>
    <title>앨범구매 목록</title>
    <style>

        .wrap_AP{
            width: 1000px;
            /*background-color: red;*/
            margin-top: 30px;
        }

        .txt_AP_date{
            height: 50px;
            position: relative;
            /*background-color: rosybrown;*/
            line-height: 50px;
        }

        .txt_AP_date>span{
            position: absolute;
            left:10px;
            font-size: 30px;
        }

        .txt_AP_status{
            height: 30px;
            position: relative;
            /*background-color: #99cccc;*/
            line-height: 30px;
        }

        .txt_AP_status>span{
            position: absolute;
            right: 10px;
            font-size: 20px;
            font-weight: 700;
            color: blue;
        }

        .box_AP_List{
            margin-top: 10px;
        }

        .tit_AP_group{
            display: block;
            float: left;
            text-align: center;
            height: 30px;
            line-height: 30px;
            font-size: 18px;
            border-top: 1px solid #BDBDBD;
            border-bottom: 1px solid #BDBDBD;
            border-right: 1px solid #BDBDBD;
        }

        .tit_AP_album{
            width: 598px;
            border-left: 1px solid #BDBDBD;
        }

        .tit_AP_price{
            width: 149px;
        }

        .tit_AP_count{
            width: 99px;
        }

        .tit_AP_totalPrice{
            width: 149px;
        }

        .txt_AP_group{
            display: block;
            float: left;
            height: 99px;
            line-height: 99px;
            text-align: center;
            border-bottom: 1px solid #BDBDBD;
            border-right: 1px solid #BDBDBD;
            overflow: hidden;
        }

        .img_AP_album{
            width: 99px;
            /*width 변경*/
            border-left: 1px solid #BDBDBD;
            border-right: 0;
            /*background-color: thistle;*/
        }

        .img_AP_album img{
            width: 80px;
            height: 80px;
            padding: 10px;
        }

        .box_AP_explain{
            width: 499px;
            /*width 수정*/
            /*background-color: skyblue;*/
        }

        .txt_AP_name{
            /*background-color: silver;*/
            height: 30px;
            line-height: 30px;
            text-align: left;
        }

        .txt_AP_explain{
            /*background-color: InfoBackground;*/

            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: normal;
            line-height: 20px;
            text-align: left;
            word-wrap: break-word;
            display: -webkit-box; -webkit-line-clamp: 3; -webkit-box-orient: vertical;
        }

        .txt_AP_price{
            width: 149px;
            border-right: 1px solid #BDBDBD;
            /*background-color: turquoise;*/
        }

        .txt_AP_count{
            width: 99px;
            border-right: 1px solid #BDBDBD;
            /*background-color: palevioletred;*/
        }

        .txt_AP_totalPrice{
            width: 149px;
            /*background-color: antiquewhite;*/
        }

        .txt_AP_AllPrice{
            width: 998px;
            height: 29px;
            line-height: 25px;
            border-right: 1px solid #BDBDBD;
            border-left: 1px solid #BDBDBD;
            border-bottom: 1px solid #BDBDBD;
            position: relative;
            /*background-color: silver;*/
            clear: both;
        }

        .txt_AP_AllPrice>span{
            position: absolute;
            font-size: 15px;
            font-weight: 600;
            right: 120px;
        }

        #boxAlbumSearch{
            width: 1000px;
            height: 60px;
            line-height: 60px;
            /*background-color: #5D4037;*/
            text-align: center;
            border-bottom: 1px solid #BDBDBD;
            margin-top: 50px;
        }
        .btn_AP_search{
            width: 100px;
            height: 40px;
            margin-right: 15px;
            background-color: #99cccc;
            border: none;
            font-family: 'Noto Sans KR', sans-serif;
            color: #fff;
            font-size: 15px;
            cursor: pointer;
        }

        .btn_AP_search:focus{
            outline: none;
        }

        .btn_AP_search:hover{
            background-color: #6b8e8e;
        }

        .btn_AP_search.on{
            background-color: #6b8e8e;
        }

        #MyPageLeftSnb .snb_sub_list.on {
            height: 91px;
        }

        #MyPageLeftSnb a.on {
            color: #2B6396;
            border-color: #2B6396;
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
        <li class="on">
            <span>구매내역</span>

            <ul class="snb_sub_list">
                <li>
                    <a href="TPList">티켓</a>
                </li>
                <li class="on">
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
<div id="boxAlbumSearch">
    <button class="btn_AP_search">오늘</button>
    <button class="btn_AP_search">1주일</button>
    <button class="btn_AP_search">1개월</button>
    <button class="btn_AP_search">3개월</button>
    <button class="btn_AP_search">6개월</button>
    <button class="btn_AP_search">전체보기</button>
</div> <!--#boxTicketSearch end -->
    <div class="wrap_AP">
        <div class="txt_AP_date"><span>2017년 6월 23일</span></div>
        <div class="txt_AP_status"><span>배송상태: 배송준비중</span></div>

        <div class="box_AP_List">
            <ul>
                <li>
                    <div class="tit_AP_group tit_AP_album"><span>앨범</span></div>
                    <div class="tit_AP_group tit_AP_price"><span>금액</span></div>
                    <div class="tit_AP_group tit_AP_count"><span>수량</span></div>
                    <div class="tit_AP_group tit_AP_totalPrice"><span>주문금액</span></div>
                </li><!-- #tit_AP end -->

                <li>
                    <div class="txt_AP_group img_AP_album">
                        <a href="">
                            <img src="img/album/albumCover/Klaps_cover_Good Night.png"/>
                        </a>
                    </div>
                    <div class="txt_AP_group box_AP_explain">
                        <div class="txt_AP_name"><span>Good Night</span></div>
                        <div class="txt_AP_explain">
                            <span>이별한 사람들을 위한 클랩스의 위로
                        ‘클랩스’ 특유의 몽환적인 섬세한 감수성과 폭발적인 절규가 느껴지는 신곡 “Good Night” </span>
                        </div>
                    </div>
                    <div class="txt_AP_group txt_AP_price"><span>15,700원</span></div>
                    <div class="txt_AP_group txt_AP_count"><span>1</span></div>
                    <div class="txt_AP_group txt_AP_totalPrice"><span>15,700원</span></div>
                </li>

                <li>
                    <div class="txt_AP_group img_AP_album">
                        <a href="">
                            <img src="img/album/albumCover/치즈스테레오_cover_Cheezstereo.png"/>
                        </a>
                    </div>
                    <div class="txt_AP_group box_AP_explain">
                        <div class="txt_AP_name"><span>Cheezstereo</span></div>
                        <div class="txt_AP_explain">
                            <span>
                                ‘치즈스테레오’ 6년만에 2집 정규앨범 [Cheezstereo]
                                발매 혼성 3인조로 재편, 홍일점 베이시스트 ‘이현이’ 의 보컬로써의 가능성
                            </span>
                        </div>
                    </div>
                    <div class="txt_AP_group txt_AP_price"><span>14,300원</span></div>
                    <div class="txt_AP_group txt_AP_count"><span>1</span></div>
                    <div class="txt_AP_group txt_AP_totalPrice"><span>14,300원</span></div>
                </li>

                <li>
                    <div class="txt_AP_AllPrice">
                        <span>총 주문금액: 30,000원</span>
                    </div>
                </li>
            </ul>
        </div>
    </div><!-- wrap_AP -->

    <div class="wrap_AP">
        <div class="txt_AP_date"><span>2017년 6월 16일</span></div>
        <div class="txt_AP_status"><span>배송상태: 배송완료</span></div>

        <div class="box_AP_List">
            <ul>
                <li>
                    <div class="tit_AP_group tit_AP_album"><span>앨범</span></div>
                    <div class="tit_AP_group tit_AP_price"><span>금액</span></div>
                    <div class="tit_AP_group tit_AP_count"><span>수량</span></div>
                    <div class="tit_AP_group tit_AP_totalPrice"><span>주문금액</span></div>
                </li><!-- #tit_AP end -->

                <li>
                    <div class="txt_AP_group img_AP_album">
                        <a href="">
                            <img src="img/album/albumCover/45_cover_SCENE%231.png"/>
                        </a>
                    </div>
                    <div class="txt_AP_group box_AP_explain">
                        <div class="txt_AP_name"><span>SCENE #1</span></div>
                        <div class="txt_AP_explain"><span>45 [SCENE #1]</span></div>
                    </div>
                    <div class="txt_AP_group txt_AP_price">13,000원</div>
                    <div class="txt_AP_group txt_AP_count">2</div>
                    <div class="txt_AP_group txt_AP_totalPrice">26,000원</div>
                </li>

                <li>
                    <div class="txt_AP_group img_AP_album">
                        <a href="">
                            <img src="img/album/albumCover/BrossFactory_cover_고래의 숨.png"/>
                        </a>
                    </div>
                    <div class="txt_AP_group box_AP_explain">
                        <div class="txt_AP_name"><span>고래의 숨</span></div>
                        <div class="txt_AP_explain"><span>‘형제공업사’ [고래의 숨]</span></div>
                    </div>
                    <div class="txt_AP_group txt_AP_price">12,000원</div>
                    <div class="txt_AP_group txt_AP_count">1</div>
                    <div class="txt_AP_group txt_AP_totalPrice">12,000원</div>
                </li>

                <li>
                    <div class="txt_AP_AllPrice">
                        <span>총 주문금액: 38,000원</span>
                    </div>
                </li>
            </ul>
        </div>
    </div><!-- wrap_AP -->


</div><!-- #content end -->
<c:import url="../view/template/footer.jsp"></c:import>
    
</body>
<script src="js/jquery-3.2.1.min.js"></script>
<script>
    var $btn_AP_search = $(".btn_AP_search");
    var $wrap_AP = $(".wrap_AP");
    var $paging = $(".paging");

    //기간버튼 클릭 시 on클래스, 배경색 변경
    $btn_AP_search.click(function () {
        $($btn_AP_search).removeClass("on");
        $(this).addClass("on");
    })

    $btn_AP_search.eq(0).click(function () {
        $wrap_AP.eq(1).css("display", "none");
        $paging.css("display", "none");
    })


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

</html>