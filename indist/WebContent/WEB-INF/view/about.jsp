<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>about</title>
    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/nanoscroller.css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/noto.sans.korea.css" />
    <link rel="stylesheet" href="css/template/template.css"/>
	<link rel="shortcut icon" type="image/x-icon" href="/img/Logo/favicon.ico" />
    <style>
        
        /*about stylesheet*/
        #content{
            margin: auto;
            width:1000px;
        }
        #aboutTitle{
            margin-top: 20px;
            font-size: 30px;
            font-weight: bold;
            color:#99cccc;
        }
        #aboutText{
            margin: auto;
            margin-top:10px;
            margin-bottom: 20px;
            width: 994px;
            height: 300px;
            /*border: 3px solid #99cccc;*/
            font-size: 15px;
            font-weight: bold;
            color:#424242;
            line-height: 40px;
        }
        #memberTitle{
            margin-top: 20px;
            font-size: 30px;
            font-weight: bold;
            color:#99cccc;
        }
        #memberBox{
            width: 1000px;
            height: 500px;
            margin: auto;
            margin-top: 30px;
            margin-bottom:35px;

        }
        .member{
            width: 248px;
            height: 248px;
            border: 1px solid #424242;
            background-color: gray;
            float: left;
            position: relative;
            cursor: pointer;
        }
        .name{
            display: none;
        }
        .lim{
            background-image: url("img/about/수림기본.jpg");
            background-size: cover;
        }
        .lim:hover{
            background-image: url("img/about/수림포즈.jpg");
             background-size: cover;
            transition: .3s;
        }
        .member:hover .name{
            display: block;
            font-size: 25px;
            color:#99cccc;
            position: absolute;
            left: 95px;
            bottom: 20px;
            text-shadow: 1px 1px 1px #424242;
        }
        .mook{
            background-image: url("img/about/수목기본.jpg");
            background-size: cover;
        }
        .mook:hover{
            background-image: url("img/about/수목포즈.jpg");
            background-size: cover;
            transition: .3s;

        }
        .eun{
            background-image: url("img/about/은기기본.jpg");
            background-size: cover;
        }
        .eun:hover{
            background-image: url("img/about/은기포즈.jpg");
            background-size: cover;
            transition: .3s;

        }
        .sim{
            background-image: url("img/about/심온기본.jpg");
            background-size: cover;
        }
        .sim:hover{
            background-image: url("img/about/심온포즈.jpg");
            background-size: cover;
            transition: .3s;

        }
        .shin{
            background-image: url("img/about/신애기본.jpg");
            background-size: cover;
        }
        .shin:hover{
            background-image: url("img/about/신애포즈.jpg");
            background-size: cover;
            transition: .3s;

        }
        .sung{
            background-image: url("img/about/성문기본.jpg");
            background-size: cover;
        }
        .sung:hover{
            background-image: url("img/about/성문포즈.jpg");
            background-size: cover;
            transition: .3s;

        }
        .yeon{
            background-image: url("img/about/연화기본.jpg");
            background-size: cover;
        }
        .yeon:hover{
            background-image: url("img/about/연화포즈.jpg");
            background-size: cover;
            transition: .3s;

        }
        .group{
            background-image: url("img/about/그룹.jpg");
            background-size: cover;
        }
    </style>
</head>
<body>
	<c:import url="../view/template/header.jsp"></c:import>

<div id="content">
    <h1 id="aboutTitle">About</h1>
    <div id="aboutText">
        <p>당나귀조는 4월25일목요일 아이티인재개발원에서 2차 프로젝트를 위해 모였다. 당나귀라는 조이름은 조원들이 자주 가는 서울시 관악구 서울대 입구 근체 당나귀 술집이름에서 시작했다. 당나귀란 당신과 나의 귀한 인연이라는 뜻으로 2차프로젝트를 위해 모인 인연이라고 할 수 있겠다.</p>
        <p>인디스트는 아이참 바쁘다 애매하네 근대 우리 싸이트 왜만든거지 우리싸이트이용하는 사람 있자나 걔네가 왜우리 싸잍 이용하는지 풀어서써 거창하게 말하면 힘들자나 사용자 일반 노래듣는 유저 구지 인디만 있는데 듣는 애들은 괜히 유니크한거 들어야되는애들 약간 소통의 기능하고 싶어서 프리인애들 루키인 애들은 재능이 뛰어나진 않지만 마음 맞는 사람들 연결해주는 그것땜에 오는거지</p>
    </div>
    <h1 id="memberTitle">Member</h1>
    <div id="memberBox">
        <div class="member lim">
            <span class="name">강수림</span>
        </div>
        <div class="member eun">
            <span class="name">박은기</span>
        </div>
        <div class="member shin">
            <span class="name">차신애</span>
        </div>
        <div class="member sim">
            <span class="name">김심온</span>
        </div>
        <div class="member mook">
            <span class="name">이수목</span>
        </div>
        <div class="member sung">
            <span class="name">최성문</span>
        </div>
        <div class="member yeon">
            <span class="name">김연화</span>
        </div>
        <div class="member group"></div>
    </div>
</div>

	<c:import url="../view/template/footer.jsp"></c:import>
<script src="js/jquery-3.2.1.min.js"></script>
<script>
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

