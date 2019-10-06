<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>QnA</title>
    
    <c:import url="../view/template/link.jsp"></c:import>
    <link rel="stylesheet" href="css/template/myPage.css"/>
    <style>

        #boxQnAChoice {
            height: 30px;
            line-height: 30px;
            margin-top: 50px;
            /*background-color: #DD9292;*/
        }

        #boxQnAChoice > span {
            font-size: 20px;
            margin-left: 10px;
        }

        #boxQnAChoice > select {
            margin-left: 10px;
            height: 25px;
            font-family: 'Noto Sans KR', sans-serif;
        }

        #boxQnAList {
            margin-top: 30px;
            /*background-color: #5D4037;*/
            position: relative;
        }

        .tit_QnA_group {
            display: block;
            float: left;
            text-align: center;
            height: 30px;
            line-height: 30px;
            font-size: 18px;
            border-top: 1px solid #BDBDBD;
            border-bottom: 1px solid #BDBDBD;
        }

        .tit_QnA_number {
            width: 100px;
            /*background-color: palevioletred;*/
        }

        .tit_QnA_cate {
            width: 150px;
            /*background-color: #0099cc;*/
        }

        .tit_QnA_title {
            width: 450px;
            /*background-color: #424242;*/
        }

        .tit_QnA_writer {
            width: 100px;
            /*background-color: #9695A6;*/
        }

        .tit_QnA_regDate {
            width: 150px;
            /*background-color: #0277BD;*/
        }

        .tit_QnA_hit {
            width: 50px;
            /*background-color: wheat;*/
        }

        .txt_QnA_group {
            display: block;
            float: left;
            height: 30px;
            line-height: 30px;
            text-align: center;
            border-bottom: 1px solid #BDBDBD;
            padding-top: 5px;
            padding-bottom: 5px;
            /*background-color: #0099cc;*/
        }

        .txt_QnA_number {
            width: 100px;
            /*background-color: orange;*/
        }

        .txt_QnA_cate {
            width: 150px;
            /*background-color: rosybrown;*/
            color: #DD9292;
        }

        .txt_QnA_title {
            width: 450px;
            /*background-color: sienna;*/
            text-align: left;
        }

        .txt_QnA_title a {
            margin-left: 20px;
            text-decoration: none;
            color: #000;
        }

        .txt_QnA_title a:hover {
            text-decoration: underline;
        }

        .txt_QnA_writer {
            width: 100px;
            /*background-color: slategrey;*/
        }

        .txt_QnA_regDate {
            width: 150px;
            /*background-color: seashell;*/
        }

        .txt_QnA_hit {
            width: 50px;
            /*background-color: salmon;*/
        }

        #boxQnASearch {
            width: 990px;
            margin-top: 10px;
            padding-left: 10px;
            /*background-color: #000;*/
            height: 50px;
            float: left;
        }

        #boxQnASearch > select {
            font-family: 'Noto Sans KR', sans-serif;
            display: inline-block;
            vertical-align: middle;
        }

        #inputQnASearch {
            display: inline-block;
            vertical-align: middle;
            font-family: 'Noto Sans KR', sans-serif;
            width: 180px;
        }

        #btnQnASearch {
            width: 80px;
            background-color: #99cccc;
            font-family: 'Noto Sans KR', sans-serif;
            font-size: 15px;
            color: #fff;
            border: none;
            cursor: pointer;
            display: inline-block;
            vertical-align: middle;
        }

        #btnQnASearch:hover {
            background-color: #6b8e8e;
        }

        #btnQnASearch:focus {
            outline: none;
        }

        li {
            overflow: hidden;
        }

        .box_QnA_answer {
            /*background-color: #2B6396;*/
            position: relative;
            width: 700px;
            padding-left: 300px;
            display: none;
        }

        .txt_QnA_answer {
            width: 100px;
            text-align: right;
            font-size: 16px;
            position: absolute;
            left: 100px;
            top: 10px;
            /*background-color: #0099cc;*/
        }

        .txt_QnA_content {
            width: 500px;
            display: inline-block;
            min-height: 40px;
             /*background-color: #5C6BC0;*/
            line-height: 1.5em;
        }

        .box_QnA_answer.on {
            display: block;
        }

        .txt_QnA_date{
            /*background-color: red;*/
            display: inline-block;
            vertical-align: middle;
        }

        .paging{
            margin-top: 150px;
            /*background-color: #2B6396;*/
            text-align: center;
            font-size: 20px;
        }

        .paging>span{
            margin-right: 20px;
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
                <li class="on">
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
    <div id="boxQnAChoice">
        <span>분류 선택</span>
        <select>
            <option>작성 일자별</option>
            <option>분류별</option>
        </select>
    </div>

    <div id="boxQnAList">
        <ul>
            <li>
                <div class="tit_QnA_group tit_QnA_number"><span>번호</span></div>
                <div class="tit_QnA_group tit_QnA_cate"><span>분류</span></div>
                <div class="tit_QnA_group tit_QnA_title"><span>제목</span></div>
                <div class="tit_QnA_group tit_QnA_writer"><strong>작성자</strong></div>
                <div class="tit_QnA_group tit_QnA_regDate"><time>작성일</time></div>
                <div class="tit_QnA_group tit_QnA_hit"><span>조회</span></div>
            </li>

            <!-- 질문 -->
            <c:forEach items="${myQnA }" var="QnA">
            <c:choose>
            <c:when test="${QnA.seq == QnA.no }">
            <li>
                <div class="txt_QnA_group txt_QnA_number"><span>${QnA.no }</span></div>
                <div class="txt_QnA_group txt_QnA_cate"><span>${QnA.typeName}</span></div>
                <div class="txt_QnA_group txt_QnA_title">
                    <a href="#">${QnA.contents }</a>
                </div>
                <div class="txt_QnA_group txt_QnA_writer"><span>${QnA.userName }</span></div>
                <div class="txt_QnA_group txt_QnA_regDate"><span>${QnA.regDate }</span></div>
                <div class="txt_QnA_group txt_QnA_hit"><span>3</span></div>
            </li>
            </c:when> 

			<c:otherwise>
            <!-- 답변 -->
            <li class="box_QnA_answer">
                <span class="txt_QnA_answer">ㄴ답변</span>
                <span class="txt_QnA_content">${QnA.contents } </span>
                <span class="txt_QnA_date">${QnA.regDate }</span>
            </li>
            </c:otherwise>
            </c:choose>
            </c:forEach>

            <li>
                <div id="boxQnASearch">
                    <select>
                        <option>제목</option>
                        <option>내용</option>
                        <option>제목+내용</option>
                    </select>
                    <input name="query" id="inputQnASearch"/>
                    <button id="btnQnASearch"><i class="fa fa-search"></i> 찾기</button>
                </div>
            </li>
        </ul>
    </div>

    <div class="paging">
        <span><i class="fa fa-arrow-left"></i></span>
        <span> 1 </span>
        <span> 2 </span>
        <span> 3 </span>
        <span> 4 </span>
        <span> 5 </span>
        <span><i class="fa fa-arrow-right"></i></span>
    </div>
</div><!-- #content end -->

<c:import url="../view/template/footer.jsp"></c:import>
    
<script src="js/jquery-3.2.1.min.js"></script>
<script>
    $(".txt_QnA_title>a").click(function () {
        $(this).parents("li").next().toggleClass("on");
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

</body>
</html>