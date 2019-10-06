<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>공연상세페이지</title>
    <link rel="stylesheet" href="css/font-awesome.min.css"/>
    <link rel="stylesheet" href="css/reset.css"/>
    <link rel="stylesheet" href="css/kakao.font.css"/>
    <link rel="stylesheet" href="css/concert/conDetail_header.css"/>
    <link rel="stylesheet" href="css/concert/ticketTable.css"/><!--2017.06.18 신애 추가 -->
    <link rel="stylesheet" href="css/template/template.css"/>
	<link rel="shortcut icon" type="image/x-icon" href="/img/Logo/favicon.ico" />
    <style>
        #wrap{
            width: 1000px;
            margin: auto;
            font-size: 12px;
            padding-top: 70px;
        }

        body{
            font-family:'Kakao', sans-serif;
            line-height:1.3em ;
        }

        #box_cont_tab>.cont_tab_info>a{
            border-bottom: 1px solid #0099cc;
        }

        p{
            font-size: 20px;
            margin-bottom: 10px;
            margin-top: 38px;
        }

        #box_artist_checking>p{
            margin-top: 0px;
        }

        #list_artist{
            list-style: none;
            overflow: hidden;
        }

        #list_artist>li {
            float: left;
            width: 80px;
            text-align: center;
            font-size: 15px;
            margin-left: 20px;
        }

        #list_artist>li>span>img{
            width: 80px;
            height: 80px;
            border: 1px dotted #F5F5F5;
            border-radius: 50px;
        }

        #list_artist li a{
            color:#424242;
            text-decoration: none;
        }


    </style>
</head>
<body>
	<c:import url="template/header.jsp">
	</c:import>

	<c:import url="template/conDetailHeader.jsp">
	</c:import>
    <div id="box_artist_checking">
        <p class="tit_sub_float">
            출연진
            <span class="btn_flexible">
                <span></span>
            </span>
        </p>
        <ul id="list_artist">
            <li class="first">
                <span class="crop">
                    <img src="img/concert/콘서트_장미여관.jpg" />
                </span>
                <a href="" class="txt_name">
                    <strong class="singer">장미여관</strong>
                </a>
            </li>
            <li>
                <span class="crop">
                    <img src="img/concert/콘서트_윤딴딴.jpg" />
                </span>
                <a href="" class="txt_name">
                    <strong class="singer">윤딴딴</strong>
                </a>
            </li>
            <li>
                <span class="crop">
                    <img src="img/concert/콘서트_신현희와김루트.jpg" />
                </span>
                <a href="" class="txt_name">
                    <strong class="singer">신현희와김루트</strong>
                </a>
            </li>
            <li>
                <span class="crop">
                    <img src="img/concert/콘서트_제이레빗.png" />
                </span>
                <a href="" class="txt_name">
                    <strong class="singer">제이레빗</strong>
                </a>
            </li>
            <li>
                <span class="crop">
                    <img src="img/concert/콘서트_출연진_기본이미지.png" />
                </span>
                <a href="" class="txt_name">
                    <strong class="singer"></strong>
                </a>
            </li>
        </ul>
    </div><!-- //box_artist_checking -->
    <div id="box_concert_time">
        <p class="tit_sub_float">공연시간</p>
        <span>
            2017년 6월 28일(수)~ 7월 16일(일)
            <br>
            수, 목, 금 오후 6시 / 토 오후 6시/ 월 오후 6시
        </span>
    </div><!-- //box_concert_time -->
    <div id="box_bace_price">
        <p class="tit_sub_float">기본가</p>
        <ul class="list_seat">
            <li>
                <span class="seat_color"></span>
                <span class="seat_name">S석</span>
                <span class="price">55,000원</span>
            </li>
            <li>
                <span class="seat_color"></span>
                <span class="seat_name">R석</span>
                <span class="price">45,000원</span>
            </li>
        </ul>
    </div><!-- //box_bace_price -->
    <div id="box_ticke_notice">
        <p class="tit_sub_float">예매 공지사항</p>
        <span>
            ※ 티켓오픈 : 2017년 6월 23일(금) 오후 6시<br>
            ※ 매수제한 : 회원별 1인 8매 <br>
            - 아이디가 여러개인 경우, 본인인증 받으신 모든 아이디를 합산하여 적용됩니다. <br>
            ※ 일괄배송 : 6월 26일(월)<br>
            <br>
            [예매안내] <br>
            * 당나귀 입장권은 본 공연 예매자에 한하여 별도의 예매페이지에서 구매 가능합니다.<br>
             <br>
            [가격안내]<br>
            * S석 55,000원 <br>
            * R석 45,000원  <br>
            <br>
            [관람안내]<br>
            * 공연 시작 후에도 입장이 가능하며, 입장 후 자유롭게 출입이 가능합니다. <br>
            * 술, 음료수, 음식을 판매합니다.<br>
        </span>
    </div><!-- //box_ticke_notice -->
    <div id="box_img_content">
        <p class="tit_sub_float">작품설명</p>
        <p>
            <img src="img/concert/콘서트_작품설명.png" width="700px"/>
        </p>
    </div><!-- //box_img_content -->
    <div id="box_agency">
        <p class="tit_sub_float">기획사 정보</p>
        <img src="img/concert/콘서트_기획사_정보.png" />
    </div><!-- //box_agency -->
    <div id="box_product_notice">
        <p class="tit_sub_float">상품정보제공 고시</p>
        <p>
            <img src="img/concert/콘서트_상품정보제공고시.png"/>
        </p>
    </div><!-- //box_product_notice -->
    <div id="concert_footer">
        <img src="img/concert/콘서트_하단.png"/>
    </div><!-- //concert_footer -->
</div><!-- //wrap -->
	<c:import url="template/footer.jsp">
	</c:import>

<script src="js/jquery-3.2.1.min.js"></script>

	<c:import url="template/conHeaderSript.jsp">
	</c:import>

</body>
</html>