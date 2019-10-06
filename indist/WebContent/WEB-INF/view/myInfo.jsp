<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    
    <c:import url="../view/template/link.jsp"></c:import>
    <link rel="stylesheet" href="css/template/myPage.css"/>
    <title>내정보</title>
    <style>
        input{
            font-family: 'Noto Sans KR', sans-serif;
        }

        #boxProfile {
            height: 150px;
            text-align: center;
            margin-top: 50px;
            /*background-color: #0099cc;*/
        }

        #boxProfile img {
            width: 150px;
            height: 150px;
            /*background-color: #2B6396;*/
        }

        #boxProfile .fa-camera {
            font-size: 20px;
            cursor: pointer;
        }

        .box_myPageGroup {
            height: 30px;
            margin-top: 20px;
            position: relative;
            /*background-color: #5D4037;*/
        }

        .box_myPageGroup > label {
            display: block;
            width: 150px;
            height: 30px;
            line-height: 30px;
            position: absolute;
            left: 200px;
            font-size: 20px;
            text-align: right;
            /*background-color: #EF5350;*/
        }

        .input_myPage {
            position: absolute;
            width: 220px;
            height: 25px;
            left: 400px;
            font-size: 15px;
        }

        #boxBirthChoose {
            width: 350px;
            height: 30px;
            position: absolute;
            left: 400px;
            line-height: 20px;
            font-size: 20px;
        }

        #boxBirthChoose > select {
            width: 70px;
            height: 30px;
            font-size: 20px;
        }

        #btnPostcodeSearch {
            position: absolute;
            left: 520px;
        }

        #inputPostcode {
            width: 80px;
        }

        #inputAddress {
            width: 350px;
        }

        #inputAddress2 {
            width: 350px;
        }

        #btnMyInfoUpdate {
            position: absolute;
            left: 430px;
        }

        .btn {
            background-color: #99cccc;
            border: none;
            color: white;
            width: 100px;
            height: 30px;
            cursor: pointer;
            font-family: 'Noto Sans KR', sans-serif;
        }

        .btn:hover {
            background-color: #6b8e8e;
        }

        #inputImgUpload {
            display: none;
        }

        #imgProfile{
            border-radius: 500px;
        }
    </style>
</head>
<body>
<c:import url="../view/template/header.jsp"></c:import>

<div id="MyPageLeftSnb">
    <ul class="snb_main_list">
        <li class="on">
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
	<form id="formUserUpdate" method="post" enctype="multipart/form-data">
	
	</form>
    <form action="/myInfo" method="POST">
    	<input type="hidden" name="_method" value="PUT"/>
   		<input type="hidden" name="profileImg" class="profileImage" />
   		<input type="hidden" name="no" value=${loginUser.no } />
        <fieldset>
            <legend class="screen_out">회원정보 수정</legend>
            <div id="wrapInfo">
                <div id="boxProfile">
                    <img src="img/profile/${user.profile }" alt="프로필 기본사진"
                         id="imgProfile" />
                    <label>
                        <i class="fa fa-camera"></i>
                        <input type="file" form="formUserUpdate" name="imgUpload"
                               id="inputImgUpload" accept="image/*"/>
                    </label>
                </div>

                <div class="box_myPageGroup">
                    <label for="inputId">아이디(이메일)</label>
                    <input class="input_myPage" id="inputId" value="${user.id }" name="id" disabled/>
                </div>

                <div class="box_myPageGroup">
                    <label for="inputPassword">비밀번호</label>
                    <input type="password" class="input_myPage" id="inputPassword" name="pwd"/>
                </div>

                <div class="box_myPageGroup">
                    <label for="inputConfirm">비밀번호 확인</label>
                    <input type="password" class="input_myPage" id="inputConfirm" name="confirm"/>
                </div>

                <div class="box_myPageGroup">
                    <label for="inputName">이름(실명)</label>
                    <input class="input_myPage" id="inputName" value="${user.name }" name="name" disabled/>
                </div>

                <div class="box_myPageGroup">
                    <label for="inputNickname">닉네임</label>
                    <input class="input_myPage" id="inputNickname" value="${user.nickname }" name="nickname"/>
                </div>

                <div class="box_myPageGroup">
                    <label>생년월일</label>
                    <div id="boxBirthChoose">
                        <select name="year" disabled>
                            <option selected>${user.year }</option>
                        </select> <span>년</span>
                        <select name="month" disabled>
                            <option selected>${user.month }</option>
                        </select> <span>월</span>
                        <select name="date" disabled>
                            <option selected>${user.date }</option>
                        </select> <span>일</span>
                    </div>
                </div>

                <div class="box_myPageGroup">
                    <label for="inputPhone">전화번호</label>
                    <input class="input_myPage" id="inputPhone" value="${user.phone }" name="phone"/>
                </div>

                <div class="box_myPageGroup">
                    <label>우편 번호</label>
                    <input class="input_myPage" onclick="sample6_execDaumPostcode()"
                           id="inputPostcode" name="zipcode" value="${user.zipcode }" readonly/>
                    <input type="button" class="btn btn_myPage" id="btnPostcodeSearch"
                           onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
                </div>

                <div class="box_myPageGroup">
                    <label>주소 </label>
                    <input class="input_myPage" id="inputAddress" name="address"
                           value="${user.address }" placeholder="주소" readonly>
                </div>

                <div class="box_myPageGroup">
                    <label>상세 주소</label>
                    <input class="input_myPage" id="inputAddress2" name="detailAdd"
                           value="${user.detailAdd }" placeholder="상세주소"/>
                </div>

                <div class="box_myPageGroup">
                    <button type="submit" class="btn" id="btnMyInfoUpdate">수정하기</button>
                </div>
            </div> <!-- wrapInfo -->
        </fieldset>
    </form>
</div><!-- #content end -->

<c:import url="../view/template/footer.jsp"></c:import>
    

<script src="js/jquery-3.2.1.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
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

    /*header, footer 관련 제이쿼리*/
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

   var regExp = /^image\/[\w]*/;
   var formUserUpdate = $("#formUserUpdate").get(0);
   var $uploadImg = $("#inputImgUpload");
   var uploadImg = $uploadImg.get(0);

   $uploadImg.change(function() {
      
      if(regExp.test(uploadImg.files[0].type)) {
         
         var formData = new FormData(formUserUpdate);
         
         $.ajax("/uploadImage",{
            data: formData,
            processData: false,
            contentType: false,
            type: 'POST',
            success: function(data){ 
               var fileName = data.fileName;
               $("#imgProfile").attr("src","img/profile/"+fileName);
               
               $(".profileImage").val(fileName);
               
            },
            error:function(xhr) {
               alert(xhr.responseText);
            }
         })
      }
   });

</script>
</body>
</html>