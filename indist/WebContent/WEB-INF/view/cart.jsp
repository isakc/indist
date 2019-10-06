<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>장바구니</title>
    
    <c:import url="../view/template/link.jsp"></c:import>
    <link rel="stylesheet" href="css/template/myPage.css"/>
    <style>

        /*list css 시작*/
        .box_cart_process {
            width: 1000px;
            height: 50px;
            margin-top: 30px;
            /*background-color: #5D4037;*/
        }

        .box_cart_process ul {
            width: 480px;
            margin: auto;
        }

        .txt_cart_process > img {
            width: 60px;
            height: 20px;
        }

        .txt_cart_process {
            float: left;
            padding: 10px;
            width: 140px;
            /*background-color: red;*/
        }

        .txt_cart_process.on {
            border-bottom: 3px solid #424242;
            border-color: #99cccc;
        }

        .box_cart_list {
            width: 1000px;
            margin-top: 30px;
            display: none;
            /*background-color: turquoise;*/
        }

        .tit_cart_group {
            height: 28px;
            text-align: center;
            font-size: 15px;
            font-weight: 700;
            line-height: 30px;
            border-top: 1px solid #BDBDBD;
            border-right: 1px solid #BDBDBD;
            border-bottom: 1px solid #BDBDBD;
            float: left;
        }

        .tit_cart_choice {
            width: 48px;
            border-left: 1px solid #BDBDBD;
        }

        .tit_cart_album {
            width: 549px;
        }

        .tit_cart_price {
            width: 149px;
        }

        .tit_cart_count {
            width: 99px;
        }

        .tit_cart_totalPrice {
            width: 149px;
        }

        .txt_cart_group {
            float: left;
            text-align: center;
            font-size: 15px;
            height: 99px;
            line-height: 99px;
            border-right: 1px solid #BDBDBD;
            border-bottom: 1px solid #BDBDBD;
            /*background-color: sienna;*/
        }

        .input_cart_choice {
            width: 48px;
            border-left: 1px solid #BDBDBD;
        }

        .img_cart_album {
            width: 100px;
            border-right: 0;
        }

        .img_cart_album img {
            width: 80px;
            height: 80px;
            padding: 10px;
            /*background-color: #BDBDBD;*/
        }

        .txt_cart_name {
            height: 30px;
            line-height: 30px;
            text-align: left;
        }

        .box_cart_explain {
            width: 449px;
        }

        .txt_cart_explain {
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

        .txt_cart_price {
            width: 149px;
        }

        .txt_cart_count {
            width: 99px;
        }

        .input_cart_count {
            width: 40px;
            height: 15px;
            display: inline-block;
            text-align: center;
        }

        .btn_count {
            width: 23px;
            height: 21px;
            background-color: #99cccc;
            vertical-align: middle;
            border: none;
            color: white;
            cursor: pointer;
            line-height: 21px;
        }

        .btn_count:hover {
            background-color: #6b8e8e;
        }

        button:focus {
            outline: none;
        }

        .txt_cart_totalPrice {
            width: 149px;
        }

        .txt_cart_AllPrice {
            width: 998px;
            height: 29px;
            line-height: 25px;
            border-right: 1px solid #BDBDBD;
            border-left: 1px solid #BDBDBD;
            border-bottom: 1px solid #BDBDBD;
            position: relative;
            clear: both;
        }

        .txt_cart_AllPrice > span {
            position: absolute;
            font-size: 15px;
            font-weight: 600;
            right: 120px;
        }

        #boxCartBtn {
            height: 50px;
            text-align: center;
            /*background-color: #0099cc;*/

            line-height: 50px;
        }

        .btn_cart {
            width: 100px;
            height: 30px;
            background-color: #99cccc;
            border: none;
            color: white;
            font-family: 'Noto Sans KR', sans-serif;
            font-size: 15px;
            cursor: pointer;
            text-decoration: none;
            margin-right: 20px;
        }

        #boxCartBtn a {
            display: inline-block;
            line-height: 30px;
        }

        .btn_cart:hover {
            background-color: #6b8e8e;
        }

        .btn_cart_delete {
            width: 100px;
            height: 29px;
            background-color: #fff;
            border: none;
            border-right: 1px solid #BDBDBD;
            color: #000;
            font-family: 'Noto Sans KR', sans-serif;
            font-size: 15px;
            cursor: pointer;
            float: left;
        }

        .btn_cart_delete:hover {
            background-color: #BDBDBD;
        }

        #boxDelievery {
            margin-top: 30px;
        }

        #txtDelieveryInfo {
            /*background-color: red;*/
            height: 30px;
            line-height: 30px;
            text-align: center;
        }

        #txtDelieveryInfo > h3 {
            font-size: 25px;
        }

        .box_paymentGroup {
            height: 30px;
            margin-top: 20px;
            position: relative;
            /*background-color: wheat;*/
            line-height: 30px;
        }

        .box_paymentGroup > label {
            width: 150px;
            font-size: 20px;
            text-align: right;
            position: absolute;
            left: 280px;
        }

        .input_payment {
            position: absolute;
            left: 450px;
            width: 350px;
            height: 25px;
            font-size: 20px;
        }

        #boxChoiceAddress {
            height: 30px;
            /*background-color: palevioletred;*/
            line-height: 30px;
            position: relative;
            text-align: center;
        }

        #inputPostcode {
            width: 80px;
        }

        #btnPostcodeSearch {
            position: absolute;
            left: 600px;
            display: none;
        }

        #boxPaymentBtn {
            margin-top: 20px;
            height: 50px;
            text-align: center;
        }

        .box_cart_list.on{
            display: block;
        }

        #boxPaymentMessage {
            /*background-color: #0099cc;*/
            height: 100px;
            font-size: 30px;
            margin-top: 50px;
            text-align: center;
        }

        #boxPaymentMessage>span{
            display: block;
        }

        #boxPaymentMessage>a{
            text-decoration: none;
            color: #424242;
            display: block;
            margin-top: 30px;
        }

        #boxPaymentMessage>a:hover{
            color: #99cccc;
        }

        .off{
            display:none;
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

        <li class="on">
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

    <div class="box_cart_process">
        <ul>
            <li class="txt_cart_process on"><img src="img/myPage/step1.JPG"/><label>장바구니</label></li>
            <li class="txt_cart_process"><img src="img/myPage/step2.JPG"/><label>주문결제</label></li>
            <li class="txt_cart_process"><img src="img/myPage/step3.JPG"/><label>주문완료</label></li>
        </ul>
    </div><!-- .box_cart_process end -->

    <div class="box_cart_list on" id="boxCartList">
        <ul>
            <li class="tit_cart">
                <div class="tit_cart_group tit_cart_choice">
                    <input type="checkbox" name="selectAll" id="InputSelectAll"/></div>
                <div class="tit_cart_group tit_cart_album"><span>앨범</span></div>
                <div class="tit_cart_group tit_cart_price"><span>금액</span></div>
                <div class="tit_cart_group tit_cart_count"><span>수량</span></div>
                <div class="tit_cart_group tit_cart_totalPrice"><span>주문금액</span></div>
            </li><!-- #tit_AP end -->

			<c:forEach items="${cart }" var="cart">
            <li>
                <div class="txt_cart_group input_cart_choice">
                    <input type="checkbox" class="input_select_one" name="selectOne"/>
                </div>
                <div class="txt_cart_group img_cart_album">
                    <a href="">
                        <img src="img/album/albumCover/${cart.coverImg }"/>
                    </a>
                </div>
                <div class="txt_cart_group box_cart_explain">
                    <div class="txt_cart_name"><span>${cart.albumTitle }</span></div>
                    <div class="txt_cart_explain">
                        <span>
                          ${cart.explain }
                        </span>
                    </div>
                </div>
                <div class="txt_cart_group txt_cart_price">
                    <span>${cart.price }</span><span>원</span>
                </div>
                <div class="txt_cart_group txt_cart_count">
                    <button class="btn_count btn_minus"><!--
                 --><i class="fa fa-minus"></i></button><!--
                 --><input name="count" class="input_cart_count" value="${cart.count }"/><!--
                 --><button class="btn_count btn_plus"><i class="fa fa-plus"></i>
                </button>
                </div>
                <div class="txt_cart_group txt_cart_totalPrice">
                    <span>${cart.price*cart.count }</span><span>원</span>
                </div>
            </li>
            </c:forEach>
            <li>
                <div class="txt_cart_AllPrice">
                    <button class="btn_cart_delete">선택 삭제</button>
                    <button class="btn_cart_delete">품절 삭제</button>
                    <span>총 주문금액: 30,000원</span>
                </div>
            </li>
        </ul>

        <div id="boxCartBtn">
            <a href="#" class="btn_cart">계속 쇼핑</a>
            <button class="btn_cart" id="btnSelectOrder">선택 주문</button>
            <button class="btn_cart" id="btnAllOrder">전체 주문</button>
        </div>
    </div><!-- #boxCartList end -->

    <div class="box_cart_list" id="boxPayment">
        <ul>
            <li class="tit_cart">
                <div class="tit_cart_group tit_cart_choice"><span>번호</span></div>
                <div class="tit_cart_group tit_cart_album"><span>앨범</span></div>
                <div class="tit_cart_group tit_cart_price"><span>금액</span></div>
                <div class="tit_cart_group tit_cart_count"><span>수량</span></div>
                <div class="tit_cart_group tit_cart_totalPrice"><span>주문금액</span></div>
            </li><!-- #tit_AP end -->

            <li>
                <div class="txt_cart_group input_cart_choice"><span>1</span></div>
                <div class="txt_cart_group img_cart_album">
                    <a href="">
                        <img src="img/album/albumCover/Klaps_cover_Good Night.png"/>
                    </a>
                </div>
                <div class="txt_cart_group box_cart_explain">
                    <div class="txt_cart_name"><span>Good Night</span></div>
                    <div class="txt_cart_explain">
                        <span>
                            이별한 사람들을 위한 클랩스의 위로 ‘클랩스’ 특유의 몽환적인 섬세한 감수성과 폭발적인 절규가 느껴지는 신곡 “Good Night”
                        </span>
                    </div>
                </div>
                <div class="txt_cart_group txt_cart_price">
                    <span>15,700</span><span>원</span>
                </div>
                <div class="txt_cart_group txt_cart_count">
                    <span>1</span>
                </div>
                <div class="txt_cart_group txt_cart_totalPrice">
                    <span>15,700</span><span>원</span>
                </div>
            </li>
            
            <li>
                <div class="txt_cart_AllPrice">
                    <span>총 주문금액: 30,000원</span>
                </div>
            </li>
        </ul>

        <div id="boxDelievery">
            <div id="txtDelieveryInfo">
                <h3>배송 정보</h3>
            </div>

            <div id="boxChoiceAddress">
                <input type="radio" value="default" name="address" id="inputBasicAddress" checked/>
                <label for="inputBasicAddress">기본 배송지</label>
                <input type="radio" value="new" name="address" id="inputNewAddress"/>
                <label for="inputNewAddress">새로운 배송지</label>
            </div>

            <div class="box_paymentGroup">
                <label for="inputPaymentName">이름(실명)</label>
                <input name="name" id="inputPaymentName" class="input_payment"
                       placeholder="이름(실명)" value="김정봉" disabled/>
            </div>

            <div class="box_paymentGroup">
                <label for="inputPaymentPhone">핸드폰 번호</label>
                <input name="phone" id="inputPaymentPhone" class="input_payment"
                       placeholder="핸드폰 번호" value="010-6717-2512" disabled/>
            </div>

            <div class="box_paymentGroup">

                <label>우편 번호</label>
                <input name="postcode1" id="inputPostcode" class="input_payment"
                       value="06267" placeholder="우편 번호" onclick="sample6_execDaumPostcode()"
                       disabled readonly/>
                <input type="button" class="btn_cart" id="btnPostcodeSearch"
                       onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
            </div>

            <div class="box_paymentGroup">
                <label>주소</label>
                <input name="address" id="inputAddress" class="input_payment"
                       value="서울 강남구 강남대로 238 (도곡동, 스카이쏠라빌딩)" placeholder="주소" readonly disabled/>
            </div>

            <div class="box_paymentGroup">
                <label>상세주소</label>
                <input name="detailAdd" id="inputAddress2" class="input_payment"
                       value="1301동 303호" placeholder="상세주소" disabled/>
            </div>

            <div id="boxPaymentBtn">
                <button class="btn_cart" id="btnPayment">결제하기</button>
            </div>
        </div><!-- #boxDelievery end -->
    </div><!-- #boxPayment end -->

    <div class="box_cart_list">
        <ul>
            <li class="tit_cart">
                <div class="tit_cart_group tit_cart_choice"><span>번호</span></div>
                <div class="tit_cart_group tit_cart_album"><span>앨범</span></div>
                <div class="tit_cart_group tit_cart_price"><span>금액</span></div>
                <div class="tit_cart_group tit_cart_count"><span>수량</span></div>
                <div class="tit_cart_group tit_cart_totalPrice"><span>주문금액</span></div>
            </li><!-- #tit_AP end -->

            <li>
                <div class="txt_cart_group input_cart_choice"><span>1</span></div>
                <div class="txt_cart_group img_cart_album">
                    <a href="">
                        <img src="img/album/albumCover/Klaps_cover_Good Night.png"/>
                    </a>
                </div>
                <div class="txt_cart_group box_cart_explain">
                    <div class="txt_cart_name"><span>앨범 이름</span></div>
                    <div class="txt_cart_explain"><span>앨범 설명~~</span></div>
                </div>
                <div class="txt_cart_group txt_cart_price">
                    <span>15,700</span><span>원</span>
                </div>
                <div class="txt_cart_group txt_cart_count">
                    <span>1</span>
                </div>
                <div class="txt_cart_group txt_cart_totalPrice">
                    <span>15,700</span><span>원</span>
                </div>
            </li>

            <li>
                <div class="txt_cart_group input_cart_choice"><span>2</span></div>
                <div class="txt_cart_group img_cart_album">
                    <a href="">
                        <img src="img/album/albumCover/치즈스테레오_cover_Cheezstereo.png"/>
                    </a>
                </div>
                <div class="txt_cart_group box_cart_explain">
                    <div class="txt_cart_name"><span>Cheezstereo</span></div>
                    <div class="txt_cart_explain">
                        <span>
                            ‘치즈스테레오’ 6년만에 2집 정규앨범 [Cheezstereo] 발매 혼성 3인조로 재편, 홍일점 베이시스트 ‘이현이’ 의 보컬로써의 가능성
                        </span>
                    </div>
                </div>
                <div class="txt_cart_group txt_cart_price">
                    <span>14,300</span><span>원</span>
                </div>
                <div class="txt_cart_group txt_cart_count">
                    <span>1</span>
                </div>
                <div class="txt_cart_group txt_cart_totalPrice">
                    <span>14,300</span><span>원</span>
                </div>
            </li>

            <li>
                <div class="txt_cart_AllPrice">
                    <span>총 주문금액: 30,000원</span>
                </div>
            </li>
        </ul>

        <div id="boxPaymentMessage">
            <span> 주문이 완료되었습니다</span>
            <a href="APList.html">주문내역으로 이동</a>
        </div>
    </div>
</div><!-- #content end -->

<c:import url="../view/template/footer.jsp"></c:import>
    
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/jquery.number.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    var $input_payment = $(".input_payment");
    var $InputSelectAll = $("#InputSelectAll");
    var $input_select_one = $(".input_select_one");
    var $btnSelectOrder = $("#btnSelectOrder");
    var $btnAllOrder = $("#btnAllOrder");
    var $txt_cart_process = $(".txt_cart_process");
    var $btn_count_minus = $(".btn_minus");
    var $btn_count_plus = $(".btn_plus");
    var $btnPayment = $("#btnPayment");
    var $box_cart_list = $(".box_cart_list");

    //전체 체크박스 선택, 해제
    $InputSelectAll.click(function () {
        if ($('input:checkbox[id="InputSelectAll"]').is(":checked")) {
            $input_select_one.prop("checked", true);
        } else {
            $input_select_one.prop("checked", false);
        }
    });

    //선택주문 클릭시 주문결제로 이동
    $btnSelectOrder.click(function () {
        /*checkBox에서 체크된 것만 가져오기*/
        if ($('input:checkbox[class="input_select_one"]').is(":checked")) {
            /*화면 바꾸기*/
            $box_cart_list.removeClass("on");
            $box_cart_list.eq(1).addClass("on");

            /*진행상황 바꾸기*/
            $txt_cart_process.removeClass("on");
            $txt_cart_process.eq(1).addClass("on");
        } else {
            alert("선택된 것이 없슴");
        }
    });

    //전체주문 클릭시 주문결제로 이동
    $btnAllOrder.click(function () {
        /*화면 바꾸기*/
        $box_cart_list.removeClass("on");
        $box_cart_list.eq(1).addClass("on");

        /*진행상황 바꾸기*/
        $txt_cart_process.removeClass("on");
        $txt_cart_process.eq(1).addClass("on");

        $InputSelectAll.prop("checked", true);
        $input_select_one.prop("checked", true);
    });

    //수량에서 마이너스 버튼을 클릭했을 경우
    $btn_count_minus.click(function () {
        var value = $(this).next().val();
        if (value <= 1) {
            value = 1;
        } else {
            value--;
        }

        $(this).next().val(value);
        var price = parseInt($(this).parent().prev().children().eq(0).text());
        $(this).parent().next().children().eq(0).text(price*value);
    });

    //수량에서 플러스 버튼을 클릭했을 경우
    $btn_count_plus.click(function () {
        var value = $(this).prev().val();
        value++;

        $(this).prev().val(value);
        var price = parseInt($(this).parent().prev().children().eq(0).text());
        $(this).parent().next().children().eq(0).text(price*value);
    });

    //배송지 선택
    $("input[type=radio]").click(function () {
        //새로운 배송지일 경우 입력창들을 초기화
        var value = $("[type=radio]:checked").val();
        if (value === 'new') {
            $input_payment.val("").prop("disabled", false);
            $("#btnPostcodeSearch").css("display", "block");

        }
        //기본 배송지일 경우
        else {
            $("#btnPostcodeSearch").css("display", "none");
            $("#inputPaymentName").val("김정봉");
            $("#inputPaymentPhone").val("010-6717-2512");
            $("#inputPostcode").val("06267");
            $("#inputAddress").val("서울 관악구 남부순환로 1820 (봉천동, 에그엘로우)");
            $("#inputAddress2").val("14층");
            $input_payment.prop("disabled", true);
            //다시 기본 배송지의 주소를 불러오는 함수를 호출
        }
    });

    //결제하기 버튼을 눌렀을 때
    $btnPayment.click(function () {
        /*화면 바꾸기*/

        $box_cart_list.removeClass("on");
        $box_cart_list.eq(2).addClass("on");

        /*진행상황 바꾸기*/
        $txt_cart_process.removeClass("on");
        $txt_cart_process.eq(2).addClass("on");
    });

    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function (data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if (data.userSelectedType === 'R') {
                    //법정동명이 있을 경우 추가한다.
                    if (data.bname !== '') {
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if (data.buildingName !== '') {
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('inputPostcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('inputAddress').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('inputAddress2').focus();
            }
        }).open();
    }


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