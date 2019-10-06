<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>컨텐츠 좋아</title>
    
    <c:import url="../view/template/link.jsp"></c:import>
    <link rel="stylesheet" href="css/template/myPage.css"/>
    <style>

        .card_rookie_contents {
            width: 230px;
            height: 320px;
            float: left;
            margin-right: 20px;
            margin-top: 20px;
            position: relative;
        }

        .contents_title span {
            font-size: 14px;
            color: #969696;
            display: block;
            position: absolute;
        }

        .contents_title em {
            height: 25px;
            color: black;
            font-size: 20px;
            display: block;

        }

        .contents_title p {
            color: #626262;
            font-size: 12px;
            width: 210px;
            height: 14px;
            position: absolute;
            z-index: 2;
            top: 70px;
        }

        .contents_title strong {
            position: absolute;
            font-size: 13px;
            top: 38px;
            left: 10px;
            color: #969696;
        }

        .cover:hover .like, .cover:hover .view, .cover:hover .comments {
            display: block;
        }

        .sort {
            color: #fff;
            width: 35px;
            height: 35px;
            text-align: center;
            line-height: 35px;
            border-radius: 35px;
            font-size: 20px;
            background-color: rgba(0, 0, 0, .3);
            position: absolute;
            top: 10px;
            left: 10px;
            z-index: 2;
        }

        .contents_rep_image {
            width: 230px;
            height: 160px;
            position: relative;
        }
		.contents_rep_image img{
			width: 230px;
			height: 160px;	
		}
		
        .contents_title {
            width: 210px;
            height: 80px;
            position: relative;
            padding: 10px;
            background-color: #eef;
        }

        .view {
            font-size: 14px;
            color: #eeeeee;
            position: absolute;
            display: none;
            top: 140px;
            left: 10px;

        }

        .comments {
            font-size: 14px;
            color: #eee;
            position: absolute;
            display: none;
            top: 140px;
            left: 70px;
        }

        .like {

            display: none;
            position: absolute;
            top: 140px;
            right: 10px;
            color: #eee;
        }

        .like i {
            color: red;
        }

        .nameCard_rookie {
            position: relative;
            width: 210px;
            height: 40px;
            background-color: #fff;
            padding: 10px;
            color: #969696;
            z-index: 3;
        }

        .nameCard_rookie:hover {
            cursor: pointer;
        }

        .nameCard_rookie a {
            width: 160px;
            height: 20px;
            display: block;
            margin-bottom: 5px;
            color: #99cccc;
            font-size: 20px;
            transition: .2s ease;
        }

        .nameCard_rookie a:hover {
            color: #0099cc;
        }

        .nameCard_rookie_profile {
            width: 50px;
            height: 50px;
            border-radius: 50px;
            border: 1px solid #99cccc;
            position: absolute;
            top: 5px;
            right: 5px;
        }
        
        .nameCard_rookie_profile img{
        	width: 52px;
        	height: 52px;
        	border-radius: 50px;
        }

        .bg{
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
        }
        .overflow{
            overflow: hidden;
            white-space: nowrap;
            text-overflow: ellipsis;
        }
        .cover{
            width: 230px;
            height: 320px;
            position: absolute;
            z-index: 3;
            transition: .4s ease;
        }
        .cover:hover{
            background-color: rgba(100,100,100,.2);
            cursor: pointer;
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

        <li class="on">
            <span>좋아요</span>
            <ul class="snb_sub_list">
                <li class="on">
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
    <div>
        <ul>
        <c:forEach items="${contentsLike }" var ="content">
            <li>
                <div class="card_rookie_contents">
                    <a class="cover">
                        <div class="like"><i class="fa fa-heart"></i>${content.contentLike }</div>
                        <div class="view"><i class="fa fa-eye"></i>${content.hit }</div>
                        <div class="comments"><i class="fa fa-comment-o"></i>${content.replies }</div>
                    </a>

					<c:choose>
					<c:when test="${content.typeNo==6 }">
                    <div class="sort"><i class="fa fa-headphones"></i></div>
                    </c:when>
                    <c:otherwise>
                    <div class="sort"><i class="fa fa-video-camera"></i></div>
                    </c:otherwise>
                    </c:choose>
                    
                    <div class="contents_rep_image" class="bg">
                    	<img src="img/rookie/contentCover/${content.coverImg }" />
                    </div><!--//contents_rep_image-->
                    <div class="contents_title">
                        <em class="overflow">${content.title }</em>

                        <strong>${content.genre }</strong>
                        <p class="overflow"></p>
                    </div><!--//contents_title-->
                    <div class="nameCard_rookie">
                        <a class="overflow">${content.rookieName }</a>
                        <span><i class="fa fa-users"></i> ${content.rookieLike }</span>
                        <div class="nameCard_rookie_profile" class="bg">
                        	 <img src="img/rookie/rookieProfile/${content.rookieImg }"/> 
                        </div><!--//nameCard_rookie_profile-->
                    </div><!--//nameCard_rookie -->
                </div><!--//card_rookie_contents-->
            </li>
            </c:forEach>
        </ul>
    </div>
</div><!-- #content end -->

<<c:import url="../view/template/footer.jsp"></c:import>
    
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