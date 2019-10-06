<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>join</title>
    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/nanoscroller.css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/noto.sans.korea.css" />
	<link rel="shortcut icon" type="image/x-icon" href="/img/Logo/favicon.ico" />
    <style>
        body{
            padding: 0px;
            margin: 0px;
            background-image: url("img/indexBg/bandImg6.jpg");
            background-repeat: no-repeat;
            background-size: cover;
        }
        #wrap{
            width: 100%;
            height: 100%;
            background: rgba(0,0,0,.7);
            position: fixed;
            left: 0;
            top: 0;

        }
        #loginHeader{
            width: 100%;
            height: 70px;
            position: fixed;

        }
        #loginTitle{
            background-color: white;
            width:100px;
            height: 40px;
            display: block;
            text-align: center;
            line-height: 40px;
            border-radius: 20px;
            position: absolute;
            right:40px;
            top:35px;
            cursor: pointer;
        }
        #loginTitle a{
            color: rgba(0,0,0,.5);
            font-weight: bold;
            font-size:15px;
            text-decoration: none;
        }
        #headerLogo{
            background-image:url("img/Logo/headerLogo.png");
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            width:140px;
            height:60px;
            position: absolute;
            left:30px;
            top:30px;
        }
        input{
            border: 1px solid #E1E1E1;
            width: 300px;
            height: 26px;
            font-size: 16px;
            font-family: 'bon', sans-serif;
            font-weight: 500;
            color:#606060;
            transition: .2s ease;
            padding: 5px 18px;
            border-bottom: 1px solid rgba(154,151,161,0.2);

        }
        #joinBox input:focus{
            outline: none;
        }
        #id{
            width: 213px;
            border-radius: 10px 0 0 0;
        }
        #idBox button{
            vertical-align: bottom;
            width:90px;
            height: 38px;
            margin-left: -8px;
            border-radius: 0 10px 0 0;
            background-color:  #07bb91;
            border:none;
            color: #fff;
        }
        #birthDate select{
            width:73px;
            height: 30px;
        }
        #birthDate {
            padding-left: 20px;
            background-color: white;
            color: #606060;
            font-size: 17px;
            display: inline-block;
            width:318px;
        }
        #phone {
            padding-left: 20px;
            display: inline-block;
            width:318px;
            background-color: white;
            color: #606060;
           font-size: 20px;
           font-weight: 900;
        }
        #phone1{
            margin-right: 3px;
        }
        #phone2  {
           margin-right:3px;
           margin-left: 5px;
        }
        #phone3  {
           margin-left: 3px;
        }
        #phone select{
            width:73px;
            height: 35px;
            vertical-align: bottom;
        }
        #phone input{
            width:35px;
            height: 23px;
            font-size: 18px;
        }
        #address{
            color: #606060;
            font-size: 20px;
            font-weight: bold;
            height: 76px;
            display: inline-block;
            vertical-align: middle;

        }

        #address input{
            width:210px;
            height: 26px;
        }
        #address #addressBtn{
            vertical-align: bottom;
            width:90px;
            height: 38px;
            margin-left:-7px;
            background-color:  #07bb91;
            color: #fff;
            border:none;
            font-size: 13px;
        }
        #address #basicAddress{
            width:300px;
        }
        #detailAddress{
            border-radius: 0 0 10px 10px;
        }
        label{
            width:160px;
            display: inline-block;
            font-size:18px;
            text-align: right;
            margin-right:10px;
            color:white;
            height: 20px;
            line-height:20px;
            vertical-align: middle;

        }
        .joinSubmitInput{
            display: inline-block;
            text-align: center;
            border-radius: 40px;
            margin-top: 16px;
            background-color: #07bb91;
            color: #fff;
            width: 333px;
            height: 48px;
            line-height: 34px;
            margin-bottom: 21px;
            font-size: 18px;
            border: none;
            cursor: pointer;
            position: absolute;
            left: 180px;
            bottom: -3px;
            padding-right:15px ;

        }
        #joinBox{
            width:580px;
            height: 625px;
            position: absolute;
            left: 50%;
            top:50%;
            margin-left: -350px;
            margin-top: -300px;
        }

        #donkeyImg{
            margin-right: 25px;
            margin-top: 10px;

        }
        #joinProfileBox{
            display: block;
            width: 150px;
            height:150px;
            border-radius: 75px;
            position: absolute;
            left: 275px;
            top:15px;
            /*border: 2px solid #606060;*/
        }
        #profileText{
            display: inline-block;
            font-size: 17px;
            position: absolute;
            left:51px;
            top: 58px;
        }
        #joinInfo{
            width: 580px;
            height: 415px;
            position: absolute;
            top: 175px;
        }
    </style>
</head>
<body>
<div id="wrap">
    <div id="loginHeader">
        <div id="loginHeaderBox">
            <a href="index"><div id="headerLogo"></div></a>
            <div id="loginTitle"><a href="login">로그인</a></div>
        </div>
    </div>
    <div id="joinBox">
        <form action="login" method="POST">
            <fieldset>
            <legend class="screen_out">회원가입폼</legend>
            <div id="joinInfo">
            <div>
                <label for="id">아이디(이메일)</label>
                <span id="idBox">
                <input id="id" name="id"
                       placeholder="영어,숫자로 4~20자 입력"
                       title="영어,숫자로 4~20자 입력"/>
                <button>중복확인</button>
                </span>
            </div>
            <div>
                <label for="password">비밀번호</label>
                <input type="password" id="password"
                       placeholder="4~32자로 입력"
                       title="4~32자로 입력"
                       name="password" />
            </div>
            <div>
                <label for="confirm">비밀번호 확인</label>
                <input type="password" id="confirm"
                       placeholder="위와 동일하게 입력"
                       title="위와 동일하게 입력" />
            </div>
            <div>
                <label for="name">이름(실명)</label>
                <input id="name"
                       placeholder="10자 내로 한글,숫자 입력"
                       title="10자 내로 한글,숫자 입력"
                       name="name"/>
            </div>
            <div>
                <label for="nickname">닉네임</label>
                <input id="nickname"
                       placeholder="10자 내로 영어,한글,숫자 입력"
                       title="10자 내로 영어,한글,숫자 입력"
                       name="nickname"/>
            </div>
            <div>
                <label for="birthDate">생년월일</label>
                    <span id="birthDate">
                        <select id="year" name="year" title="태어난 년도를 입력" placeholder="년">
                        	<c:forEach begin="1980" end="2017" step="1" var="year">
                        		<option>${year }</option>
                        	</c:forEach>
                        </select>
                        년
                        <select id="month" name="month" title="태어난 월을 입력" placeholder="월">
                        <c:forEach begin="1" end="12" step="1" var="month">
                        		<option>${month }</option>
                        </c:forEach>
                        </select>
                        월
                        <select id="date" name="date" title="태어난 일을 입력" placeholder="일">
                        <c:forEach begin="1" end="31" step="1" var="date">
                        		<option>${date }</option>
                        	</c:forEach>
                        </select>
                        일
                    </span>
            </div>
            <div>
                <label for="phone">전화번호</label>
                    <span id="phone">
					<select title="반드시 선택해주세요." name="phone1" id="phone1">
                        <option>010</option>
                        <option>011</option>
                        <option>016</option>
                        <option>017</option>
                        <option>019</option>
					</select>
					-
					<input title="3~4글자 숫자만 입력해주세요." name="phone2" id="phone2"/>
					-
					<input title="4글자 숫자만 입력해주세요." name="phone3" id="phone3"/>
					</span>
            </div>
            <div>
                <label>우편번호</label>
                <div id="address">
                <input id="addressCode" name="postcode1"
                       title="한글" onclick="sample6_execDaumPostcode()" />
                <input id="addressBtn" type="button" onclick="sample6_execDaumPostcode()" value="우편주소"/>
                <div>
                <input id="basicAddress" name="basicAddress"
                       title="한글"/>
                </div>
                </div>
            </div>
            <div>
                <label>상세주소</label>
                <input id="detailAddress" name="detailAddress"
                       placeholder="상세주소 입려해 주세요"
                       title="한글"/>
            </div>
            </div>
                <div id="joinProfile">
                    <label  class="button camera">
                        <div id="joinProfileBox">
                            <input  type="file" id="inputProfileImage" hidden/>
                            <img id="donkeyImg" src="img/Logo/donkey.png" width="90" height="130"/>
                            <span id="profileText">profile</span>
                        </div>
                    </label>
                </div>
            <input class="joinSubmitInput" type="submit" value="회원가입"/>
            </fieldset>
        </form>

    </div>
</div>
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
                document.getElementById('addressCode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('basicAddress').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('detailAddress').focus();
            }
        }).open();
    }
    
    $("#inputProfileImage").change(function name() {
		$("#donkeyImg").attr("src", "img/profile/jungbong.jpg");
		$("#donkeyImg").css({
			"width" : 130,
			"border-radius" :500
		});
		$("#profileText").css("display","none");
	})
</script>
</body>
</html>