<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>index</title>
    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/noto.sans.korea.css" />
	<link rel="shortcut icon" type="image/x-icon" href="/img/Logo/favicon.ico" />
    <style>
        body{
            padding: 0px;
            margin: 0px;
            background-color:"black";
            font-family: 'NotoSansKR', sans-serif;
        }
        #wrapBox{
            width: 100%;
            height: 100%;
            background-image: url("img/indexBg/bandImg6.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            position: fixed;
            left: 0;
            top: 0;
        }
        #wrap{
            width: 100%;
            height: 100%;
            background: rgba(0,0,0,.7) ;
            position: fixed;
            left: 0;
            top: 0;

        }
        #indexHeader{
            width: 100%;
            height: 70px;
            position: fixed;
            z-index: 9999;
        }
        #startTitle{
            background-color: rgba(255,255,255,.7);
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
        #startTitle a{
            color: rgba(0,0,0,.5);
            font-weight: bold;
            font-size:15px;
            text-decoration: none;
        }
        #indexLogo{
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
        #startTitle>span{
            font-size: 30px;
            font-weight: bold;
            color:#07bb91;
        }
        #sidebarBox{
            display: inline-block;
            color:white;
            font-size: 25px;
            line-height:40px;
            position: absolute;
            right: 42px;
            top: 255px;
            text-align: right;
        }
        #sidebarBox .indexTab{
            display: inline-block;
            transition: .3s ease;
        }
        #sidebarBox .indie{
            color:#07bb91;
            margin-left: 10px;
            letter-spacing: 8px;
            font-size: 22px;
        }
        #sidebarBox .rookie{
            color:white;
            letter-spacing: 6px;
            font-size: 22px;
        }
        #sidebarBox .album{
            color:white;
            letter-spacing: 7px;
            font-size: 22px;
        }
        #sidebarBox .concert{
            color:white;
            letter-spacing: 3px;
            font-size: 22px;
        }
        #indexTextBox {
            transition: .3s ease;

        }
        .indexTxt{
            display: none;
            width: 465px;
            height: 150px;
            position: absolute;
            right:42px;
            top:300px;
            color:rgba(255,255,255,.5);
            text-align: right;
            letter-spacing: 2px;
            line-height:20px;
            font-size: 13px;
            transition: .3s ease;
        }
        .indieText{
            display: block;

        }
        #indexContentsBox{
            width: 750px;
            height: 100%;
            position: fixed;
            left: 50px;
        }
        #indexContents{
            width: 750px;
            height: 590px;
            position: absolute;
            bottom: 10%;

        }
        #indexContents button{
            font-size: 45px;
            border:none;
            background-color: transparent;
            cursor: pointer;
        }
        #indexDownBtn{
            position: absolute;
            left: 354px;
            bottom: -3px;
            color: rgba(255,255,255,.7);

        }
        #indexUpBtn{
            display: none;
            position: absolute;
            left: 354px;
            top:-10px;
            color: rgba(255,255,255,.7);
        }
        #indexMoveContent{
            width:750px;
            height:500px;
            position: absolute;
            top: 41px;
            overflow: hidden;
        }
        #moveBox{
            width:750px;
            height:4000px;
            position: relative;
            top:0;
            transition: .3s ease;
        }
        .contentBox{
            width:750px;
            height:500px;
            position: relative;
        }
        @-webkit-keyframes fadeIn { from { opacity:0; opacity: 1\9; /* IE9 only */ } to { opacity:1; } }
        @-moz-keyframes fadeIn { from { opacity:0; opacity: 1\9; /* IE9 only */ } to { opacity:1; } }
        @keyframes fadeIn { from { opacity:0; opacity: 1\9; /* IE9 only */ } to { opacity:1; } }
        .fade-in {
            opacity:0;  /* make things invisible upon start */
            -webkit-animation:fadeIn ease-in 1;  /* call our keyframe named fadeIn, use animattion ease-in and repeat it only 1 time */
            -moz-animation:fadeIn ease-in 1;
            animation:fadeIn ease-in 1;

            -webkit-animation-fill-mode:forwards;  /* this makes sure that after animation is done we remain at the last keyframe value (opacity: 1)*/
            -moz-animation-fill-mode:forwards;
            animation-fill-mode:forwards;

            -webkit-animation-duration:1s;
            -moz-animation-duration:1s;
            animation-duration:1s;
        }
        .fade-in.one {
            -webkit-animation-delay: 0.7s;
            -moz-animation-delay: 0.7s;
            animation-delay: 0.7s;
        }
        .fade-in.two {
            -webkit-animation-delay: 1.2s;
            -moz-animation-delay:1.2s;
            animation-delay: 1.2s;
        }
        .fade-in.three {
            -webkit-animation-delay: 1.6s;
            -moz-animation-delay: 1.6s;
            animation-delay: 1.6s;
        }
        .fade-in.fade {
            -webkit-animation-delay: 0.1s;
            -moz-animation-delay: 0.1s;
            animation-delay: 0.1s;
        }
        /*indie*/
        .indieContent{
            /*display: block;*/
        }
        .indieCard img{
            width: 195px;
            height: 195px;
        }
        .indieBox .indieOne, .indieBox .indieFour{
            opacity: 1;
            transition: 2s cubic-bezier(.51,.01,.73,.71);
        }
        .indieBox .indieTwo, .indieBox .indieFive{
            opacity: 1;
            transition: 3s cubic-bezier(.51,.01,.73,.71);
        }
        .indieBox .indieThree, .indieBox .indieSix{
            opacity: 1;
            transition: 5s cubic-bezier(.51,.01,.73,.71);
        }
        .indieOne{
            position: absolute;
            left: 67px;
            top: 70px;
            transition: 0s ease;
            opacity: 0;

        }
        .indieTwo{
            position: absolute;
            left: 67px;
            top: 280px;
            transition: 0s ease;
            opacity: 0;

        }
        .indieThree{
            position: absolute;
            left: 277px;
            top: 35px;
            transition: 0s ease;
            opacity: 0;

        }
        .indieFour{
            position: absolute;
            left: 277px;
            top: 245px;
            transition: 0s ease;
            opacity: 0;

        }
        .indieFive{
            position: absolute;
            left: 487px;
            top: 70px;
            transition: 0s ease;
            opacity: 0;

        }
        .indieSix{
            position: absolute;
            left: 487px;
            top: 280px;
            transition: 0s ease;
            opacity: 0;

        }
        /*rookie*/
        .rookieContent{
            /*display: none;*/
            overflow: hidden;
        }
        @keyframes up {
            from{transform: translateY(248px)}
            to{transform: translateY(0px)}

        }
        @keyframes down {
            from{transform: translateY(-248px)}
            to{transform: translateY(0px)}

        }
        @keyframes right {
            from{transform: translateX(-367px)}
            to{transform: translateX(0px)}

        }
        @keyframes left {
            from{transform: translateX(367px)}
            to{transform: translateX(0px)}

        }
        .rookieBox .rookieOne{
            animation: down 1.5s cubic-bezier(0,.51,.76,1);
        }
        .rookieBox .rookieTwo{
            animation: right 1.5s cubic-bezier(0,.51,.76,1);
        }
        .rookieBox .rookieThree{
            animation: left 1.5s cubic-bezier(0,.51,.76,1);
        }
        .rookieBox .rookieFour{
            animation: up 1.5s cubic-bezier(0,.51,.76,1);
        }
        .rookieOne{
            width: 367px;
            height:206px;
            position: absolute;
            top:35px;
        }
        .videoOne {
            width: 367px;
        }
        .rookieTwo{
            width: 367px;
            height:206px;
            position: absolute;
            bottom: 35px;
        }
        .videoTwo {
            width: 367px;
        }
        .rookieThree{
            width: 367px;
            height:206px;
            position: absolute;
            right:0px;
            top:35px;
        }
        .videoThree {
            width: 367px;
        }
        .rookieFour{
            width: 367px;
            height:206px;
            position: absolute;
            right:0px;
            bottom: 35px;
        }
        .videoFour {
            width: 367px;
        }
        /*album*/
        .albumContent{
            position: relative;
            /*background-color: yellow;*/
            /*display: none;*/
        }
        .albumContent #playerBox {
            display: block;
            transition: .3s ease;
        }
        #playerBox{
            width:200px;
            height:500px;
            position: fixed;
            left:10%;
            top: 25%;
            z-index: 10;
            display: none;
        }
        .playerList{
            width:200px;
            height:440px;
            position: absolute;
            top:30px;
        }
        .bar{
            width:3px;
            height:0px;
            background-color: #07bb91;
            position: absolute;
            top:30px;
            left: 13px;
            z-index: 3;
        }
        .unactiveBar{
            width:3px;
            height:440px;
            background-color: rgba(255,255,255,.4);
            position: absolute;
            left: 13px;
            top:30px;
        }
        .track{
            width: 200px;
            height: 88px;
            margin: 0;
            list-style: none;
            position: relative;
            color: rgba(255,255,255,.4);
            font-size: 15px;
        }
        .labelBox{
            width:180px;
            height:88px;
            text-align: left;
            position: absolute;
            top:0;
            right: 0;
        }
        .albumImg{
            width:250px;
            height:250px;

        }
        .albumImg img{
            width:250px;
            height:250px;
            opacity: .6;
            position: absolute;
            right:100px;
            top:125px;
        }
        .albumNumber{
            width: 80px;
            height: 80px;
            font-size: 50px ;
            text-align: center;
            line-height: 80px;
            color:#e1eef6;
            position: absolute;
            right:182px;
            top:170px;
            font-weight: bold;
            text-shadow: 1px 1px 6px #E0E0E0;
        }
        .title{
            text-align: center;
            line-height: 80px;
            color:#EEEEEE;
            font-weight: bold;
            text-shadow: 1px 1px 6px #E0E0E0;
            position: absolute;
            top:230px;

        }
        .albumContentOne .title{
             color:#FFFFF3;
             font-size: 36px ;
             position: absolute;
             right:138px;
         }
        .albumContentTwo .title{
            color:#EEEEEE;
            font-size: 40px ;
            position: absolute;
            right:92px;
        }
        .albumContentThree .title{
            color:#EEEEEE;
            font-size: 50px ;
            position: absolute;
            right:93px;
        }
        .albumContentFour .title{
            color:#EEEEEE;
            font-size: 50px ;
            position: absolute;
            right:60px;
        }
        .albumContentFive .title{
            color:#EEEEEE;
            font-size: 50px ;
            position: absolute;
            right:155px;
        }
        /*concert*/
        .concertContent{
            /*display:block;*/
            overflow:hidden ;
        }
        @keyframes concertDown {
            from{transform: translateY(-485px)}
            to{transform: translateY(0px)}

        }
        @keyframes concertRight {
            from{transform: translateX(-367px)}
            to{transform: translateX(0px)}

        }
        .concertBox .concertContentBox.one .concertOneBox .decoBoxOne{
            opacity: .5;
            animation: concertDown 1.5s cubic-bezier(0,.51,.76,1);
        }
        .concertBox  .concertContentBox.two .concertTwoBox .decoBoxOne{
            opacity: .5;
            animation: concertDown 1.5s cubic-bezier(0,.51,.76,1);
        }
        .concertBox  .concertContentBox.three .concertThreeBox .decoBoxOne{
            opacity: .5;
            animation: concertDown 1.5s cubic-bezier(0,.51,.76,1);
        }
        .concertBox .concertContentBox.one .concertOneBox .decoBoxTwo{
            opacity: .5;
            animation: concertRight 1.5s cubic-bezier(0,.51,.76,1);
        }
        .concertBox .concertContentBox.two .concertTwoBox .decoBoxTwo{
            opacity: .5;
            animation: concertRight 1.5s cubic-bezier(0,.51,.76,1);
        }
        .concertBox .concertContentBox.three .concertThreeBox .decoBoxTwo{
            opacity: .5;
            animation: concertRight 1.5s cubic-bezier(0,.51,.76,1);
        }
        .concertBox .concertContentBox.one .concertOneBox .decoBoxThree{
            opacity: 1;
            transition: 2s cubic-bezier(.51,.01,.73,.71);
        }
        .concertBox .concertContentBox.two .concertTwoBox .decoBoxThree{
              opacity: 1;
              transition: 2s cubic-bezier(.51,.01,.73,.71);
          }
        .concertBox .concertContentBox.three .concertThreeBox .decoBoxThree{
            opacity: 1;
            transition: 2s cubic-bezier(.51,.01,.73,.71);
        }
        .concertBox .concertContentBox.one .concertOneBox .decoBoxFour{
            opacity: 1;
            transition: 3s cubic-bezier(.51,.01,.73,.71);
        }
        .concertBox .concertContentBox.two .concertTwoBox .decoBoxFour{
             opacity: 1;
             transition: 3s cubic-bezier(.51,.01,.73,.71);
         }
        .concertBox .concertContentBox.three .concertThreeBox .decoBoxFour{
            opacity: 1;
            transition: 3s cubic-bezier(.51,.01,.73,.71);
        }
        .concertContentBox{
            width:2250px;
            height:500px;
            position: absolute;
            transition: .3s ease;
            left: 0;
        }
        .concertCard{
            width:750px;
            height: 500px;
            float: left;
            position: relative;
        }
        .decoBoxOne{
            width: 250px;
            height: 250px;
            position: absolute;
            left: 40px;
            top: 40px;
        }
        .decoBoxTwo{
            width: 330px;
            height: 150px;
            position: absolute;
            left: 155px;
            top:180px;

        }
        .decoBoxThree{
            transition: 0s ease;
            opacity: 0;
        }
        .decoBoxFour{
            transition: 0s ease;
            opacity: 0;
        }
        .concertImg{
            width: 230px;
            height:305px;
            position: absolute;
            right: 50px;
            bottom: 100px;

        }
        .concertCard img{
            width: 230px;
            height:305px;
        }
        .concertOneBox .decoOne{
            background-color: #08182b;
        }
        .concertOneBox .decoTwo{
            background-color: #f4f4f4;

        }
        .concertTwoBox .decoOne{
            background-color: #490a3d;
        }
        .concertTwoBox .decoTwo{
            background-color: #e97f02;
        }
        .concertThreeBox .decoOne{
            background-color: #004e66;
        }
        .concertThreeBox .decoTwo{
            background-color: #ff5f2e;
        }
        .concertInfo{
            font-size: 100px;
        }
        .infoOne{
            font-size: 100px;
            color: #ee2560;
            position: absolute;
            /*left: 100px;*/
            left: 45px;
            top: 170px;
        }
        .infoTwo{
            font-size: 100px;
            color: #e85a71;
            position: absolute;
            left: 45px;
            top: 170px;
        }
        .infoThree{
            font-size: 100px;
            color: #fcbe32;
            position: absolute;
            left: 45px;
            top: 170px;
        }
        .concertContentBox.one{
        }
        .concertContentBox.two{
            position: absolute;
            left: 750px;
            top: 0;
        }
        .concertContentBox.three{
            position: absolute;
            left: 1500px;
            top: 0;
        }
        .concertNextBtn{
            position: absolute;
            right: 10px;
            bottom: 100px;
            z-index: 999;
            color:rgba(255,255,255,.6);
        }
        .concertPrevBtn{
            display: none;
            position: absolute;
            left:10px;
            bottom: 100px;
            z-index:998;
            color:rgba(255,255,255,.6);

        }
        button:focus{
            outline: none;
        }
    </style>
</head>
<body>
<div id="wrapBox">
<div id="wrap">
    <div id="indexFixedBox">
        <div id="indexHeader">
            <div id="indexHeaderBox">
                <div id="indexLogo"></div>
                <div id="startTitle"><a href="login">시작하기</a></div>
            </div>
        </div>
        <div id="sidebarBox">
            <ul class="indexTab">
                <li class="indexTab indie">
                    INDIE
                </li>
                <li class="indexTab rookie">
                    ROOKIE
                </li>
                <li class="indexTab album">
                    ALBUM
                </li>
                <li class="indexTab concert">
                    CONCERT
                </li>
            </ul>
        </div>
    </div>
    <div id="indexTextBox">
        <div class="indexTxt indieText fade-in fade">
            너를 보네 너를 보네 오늘도 까만 머리 하얀 운동화 나를 보네 난 아무렇지 않은 척 웃고 인사 그리고 지나치지만 사실은 요즘 매일 네 생각해
        </div>
        <div class="indexTxt rookieText fade-in fade">
            조만간 얼굴 보자 언제 밥 한번 먹자 좋아 좋아 난 오늘도 기다려 더 예뻐진 것 같네 뭐가 이리 달콤해 so sweet so sweet 그럼 나 또 기대해
        </div>
        <div class="indexTxt albumText fade-in fade">
            Can I get a oh yeah oh yeah 넌 too much but I like it ok her dance is too much but I like it봄이 코끝을 스치듯 넌 날 지나쳐 yeah
        </div>
        <div class="indexTxt concertText fade-in fade">
            나에게 돌아오기가 어렵고 힘든 걸 알아 이제 더는 상처받기가 두렵고 싫은 걸 알아네가 떠나 버린 그날에도 모진 말로 널 울리고 뒤돌아 서서 후회해 미안해
        </div>
    </div>
    <div id="indexContentsBox">
        <div id="indexContents">
            <button id="indexDownBtn"><i class="fa fa-angle-double-down" aria-hidden="true"></i></button>
            <button id="indexUpBtn"><i class="fa fa-angle-double-up" aria-hidden="true"></i></button>
            <div id="indexMoveContent">
                <div id="moveBox">
                    <div class="contentBox indieContent">
                        <div class="indieCard indieBox indieOne">
                            <img src="img/indexIndie/10cm.jpg"/>
                        </div>
                        <div class="indieCard indieTwo">
                            <img src="img/indexIndie/소란.jpg"/>

                        </div>
                        <div class="indieCard indieThree">
                            <img src="img/indexIndie/maxresdefault.jpg"/>

                        </div>
                        <div class="indieCard indieFour">
                            <img src="img/indexIndie/김현희와 김루트.jpg"/>

                        </div>
                        <div class="indieCard indieFive">
                            <img src="img/indexIndie/볼빨간 사춘기.jpg"/>
                        </div>
                        <div class="indieCard indieSix">
                            <img src="img/indexIndie/o-DEFAULT-900.jpg"/>

                        </div>
                    </div>
                    <div class="contentBox rookieContent">
                        <div class="rookieCard rookieBox rookieOne ">
                            <video class="video_default videoOne" name="media" autoplay muted>
                                <source src="video/index/소란(SORAN) - 'Perfect Day' Official M-V.mp4" loop="loop">
                            </video>
                        </div>
                        <div class="rookieCard rookieTwo ">
                            <video class="video_default videoTwo" name="media" autoplay muted loop="loop">
                                <source src="video/index/PSY%20-%20‘I%20LUV%20IT’%20M-V.mp4">
                            </video>
                        </div>
                        <div class="rookieCard rookieThree ">
                            <video class="video_default videoThree" name="media" autoplay muted loop="loop">
                                <source src="video/index/G-DRAGON - '무제(無題) (Untitled, 2014)' M-V.mp4">
                            </video>
                        </div>
                        <div class="rookieCard rookieFour ">
                            <video class="video_default videoFour" name="media" autoplay muted loop="loop">
                                <source src="video/index/소란(SORAN) - 가을밤 '너를 보네' acoustic live.mp4">
                            </video>
                        </div>
                    </div>
                    <div class="contentBox albumContent albumContentOne">
                        <div class="albumImg">
                            <img src="img/indexAlbum/soranalbum.jpg"/>
                        </div>
                        <div class="albumNumber">1</div>
                        <div class="title">너를 공부해</div>
                    </div>
                    <div class="contentBox albumContent albumContentTwo">
                        <div class="albumImg">
                            <img src="img/indexAlbum/rootalbum.jpg"/>
                        </div>
                        <div class="albumNumber">2</div>
                        <div class="title">신현희와 김루트</div>
                    </div>
                    <div class="contentBox albumContent albumContentThree">
                        <div class="albumImg">
                            <img src="img/indexAlbum/redalbum.jpg"/>
                        </div>
                        <div class="albumNumber">3</div>
                        <div class="title">Red Planet</div>
                    </div>
                    <div class="contentBox albumContent albumContentFour">
                        <div class="albumImg">
                            <img src="img/indexAlbum/pepperalbum.jpg"/>
                        </div>
                        <div class="albumNumber">4</div>
                        <div class="title">new standard</div>
                    </div>
                    <div class="contentBox albumContent albumContentFive">
                        <div class="albumImg">
                            <img src="img/indexAlbum/standingalbum.jpg"/>
                        </div>
                        <div class="albumNumber">5</div>
                        <div class="title">lucky</div>
                    </div>
                    <div id="playerBox">
                    <span class="playerList">
                        <li class="track one">
							<span class="number active">1</span>
							<div class="labelBox">
								<div class="songName" target="_blank">너를 공부해</div>
								<div class="artist">soran</div>
							</div>
						</li>
                        <li class="track two">
							<span class="number active">2</span>
							<div class="labelBox">
								<div class="songName" target="_blank">오빠야</div>
								<div class="artist">신현희와 김루트</div>
							</div>
						</li>
                        <li class="track three">
							<span class="number active">3</span>
							<div class="labelBox">
								<div class="songName" target="_blank">나만 안되는 연애</div>
								<div class="artist">볼빨간사춘기</div>
							</div>
						</li>
                        <li class="track four">
							<span class="number active">4</span>
							<div class="labelBox">
								<div class="songName" target="_blank">New Hippie Generation</div>
								<div class="artist">페퍼톤즈</div>
							</div>
						</li>
                        <li class="track five">
							<span class="number active">5</span>
							<div class="labelBox">
								<div class="songName" target="_blank">little star</div>
								<div class="artist">standing egg</div>
							</div>
						</li>
                    </span>
                        <span class="bar active" ></span>
                        <span class="unactiveBar"></span>
                    </div>
                    <audio id="player" autoplay="true"></audio>
                    <div class="contentBox concertContent">
                        <button class="concertPrevBtn"><i class="fa fa-angle-left" aria-hidden="true"></i></button>
                        <button class="concertNextBtn"><i class="fa fa-angle-right" aria-hidden="true"></i></button>
                        <div id="timeLine"></div>
                        <div class="concertContentBox">
                            <div class="concertCard concertOneBox">
                                <div class="concertBox decoBoxOne decoOne"></div>
                                <div class="decoBoxTwo decoTwo"></div>
                                <div class="decoBoxThree concertImg">
                                    <img src="img/indexConcert/HAND4_teaser_3.jpg"/>
                                </div>
                                <div class="decoBoxFour concertInfo infoOne">
                                    <p>SORAN</p>
                                    <p> CONCERT</p>
                                    <p>vol.SPRING</p>
                                </div>
                            </div>
                            <div class="concertCard concertTwoBox">
                                <div class="concertBox decoBoxOne decoOne"></div>
                                <div class="decoBoxTwo decoTwo"></div>
                                <div class="decoBoxThree concertImg">
                                    <img src="img/indexConcert/SRN_ade_posterfor-web.jpg"/>
                                </div>
                                <div class="decoBoxFour concertInfo infoTwo">
                                    <p>SORAN</p>
                                    <p>CONCERT</p>
                                    <p>vol.SUMMER</p>
                                </div>
                            </div>
                            <div class="concertCard concertThreeBox">
                                <div class="concertBox decoBoxOne decoOne"></div>
                                <div class="decoBoxTwo decoTwo"></div>
                                <div class="decoBoxThree concertImg">
                                    <img src="img/indexConcert/문문_곰곰_poster.jpg"/>
                                </div>
                                <div class="decoBoxFour concertInfo infoThree">
                                    <p>SORAN</p>
                                    <p>CONCERT</p>
                                    <p>vol.WINTER</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>


<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/jquery.mousewheel.min.js"></script>
<script>
    var position = 0;
    var $indexUpBtn = $("#indexUpBtn");
    var $indexDownBtn = $("#indexDownBtn");
    var $indieTabText = $("#sidebarBox .indie");
    var $rookieTabText = $("#sidebarBox .rookie");
    var $albumTabText = $("#sidebarBox .album");
    var $concertTabText = $("#sidebarBox .concert");
    var $moveBox = $("#moveBox");
    var $concertNextBtn = $(".concertNextBtn");
    var $concertPrevBtn = $(".concertPrevBtn");
    var $indieText = $(".indieText")
    var $rookieText = $(".rookieText")
    var $albumText = $(".albumText")
    var $concertText = $(".concertText")
    var $concertContentBox = $(".concertContentBox");
    var $player=$("#player");
    var $bar = $(".bar");
    var audio = $player.get(0);
    var musics = ["audio/1.mp3","audio/2.mp3","audio/3.mp3","audio/4.mp3","audio/5.mp3"];
    var idx = 0;
    var $trackOne = $(".one");
    var $trackTwo = $(".two");
    var $trackThree = $(".three");
    var $trackFour = $(".four");
    var $trackFive = $(".five");
    $moveBox.addClass("indieBox");

    $indexUpBtn.click(function () {
        clickUp()
        $moveBox.css("top",position) ;

    });
    $indexDownBtn.click(function () {
        clickDown();
        $moveBox.css("top",position) ;
    });
    var left = 0;
    $concertNextBtn.click(function () {
        if (left==-1500){
            left = -1500;
        }else{
            left-=750;
        }
        if (left==0){
            $concertNextBtn.css("display","none");
            $concertContentBox.attr("class","concertContentBox one");

        }if (left==-750){
            $concertPrevBtn.css("display","block");
            $concertContentBox.attr("class","concertContentBox two");

        }if (left==-1500){
            $concertNextBtn.css("display","none");
            $concertContentBox.attr("class","concertContentBox three");

        }
        $concertContentBox.css("left",left) ;
    });
    $concertPrevBtn.click(function () {
        if(left==0){
            left=0;
        }else{
            left+=750;
        }
        if(left==0){
            $concertPrevBtn.css("display","none");
            $concertContentBox.attr("class","concertContentBox one");
        }
        if(left==-750){
            $concertNextBtn.css("display","block");
            $concertContentBox.attr("class","concertContentBox two");

        }
        if(left==-1500){
            $concertPrevBtn.css("display","block");
            $concertContentBox.attr("class","concertContentBox three");

        }
        $concertContentBox.css("left",left) ;
    });
    $(window).on('mousewheel', function(event) {
        console.log(event.deltaY);

        if(event.deltaY==1) {
            wheelUp()
            $moveBox.css("top",position) ;
        }else {
            wheelDown()
            $moveBox.css("top",position) ;
        }
    });

    function wheelDown() {
        position -= 500;
        if(position== -500){
            $indieTabText.css("color","white");
            $indieText.css("display","none");
            $rookieTabText.css("color","#07bb91");
            $rookieText.css("display","block");
            $indexDownBtn.css("display","block");
            $indexUpBtn.css("display","block");
            $moveBox.attr("class","rookieBox");
            audio.pause();

        }
        if(position== -1000){
            $rookieTabText.css("color","white");
            $rookieText.css("display","none");
            $albumTabText.css("color","#07bb91");
            $albumText.css("display","block");
            $indexDownBtn.css("display","block");
            $indexUpBtn.css("display","block");
            $moveBox.attr("class","albumContent");
            idx=0;
            start();

        }
        if(position== -1500){
            $rookieTabText.css("color","white");
            $rookieText.css("display","none");
            $albumTabText.css("color","#07bb91");
            $albumText.css("display","block");
            $indexDownBtn.css("display","block");
            $indexUpBtn.css("display","block");
            $moveBox.attr("class","albumContent");
            $trackOne.css("color","#07bb91");
            idx=1;
            start();

        }
        if(position== -2000){
            $rookieTabText.css("color","white");
            $rookieText.css("display","none");
            $albumTabText.css("color","#07bb91");
            $albumText.css("display","block");
            $indexDownBtn.css("display","block");
            $indexUpBtn.css("display","block");
            $moveBox.attr("class","albumContent");
            $trackTwo.css("color","#07bb91");
            idx=2;
            start();

        }
        if(position== -2500){
            $rookieTabText.css("color","white");
            $rookieText.css("display","none");
            $albumTabText.css("color","#07bb91");
            $albumText.css("display","block");
            $indexDownBtn.css("display","block");
            $indexUpBtn.css("display","block");
            $moveBox.attr("class","albumContent");
            $trackThree.css("color","#07bb91");
            idx=3;
            start();

        }
        if(position== -3000){
            $rookieTabText.css("color","white");
            $rookieText.css("display","none");
            $albumTabText.css("color","#07bb91");
            $albumText.css("display","block");
            $indexDownBtn.css("display","block");
            $indexUpBtn.css("display","block");
            $moveBox.attr("class","albumContent");
            $trackFour.css("color","#07bb91");
            idx=4;
            start();

        }
        if(position== -3500){
            $albumTabText.css("color","white");
            $albumText.css("display","none");
            $concertTabText.css("color","#07bb91");
            $concertText.css("display","block");
            $indexDownBtn.css("display","none");
            $indexUpBtn.css("display","block");
            $moveBox.attr("class","concertBox");
            $concertContentBox.attr("class","concertContentBox one");
            $trackFive.css("color","#07bb91");
            audio.pause();
        }
        if(position== -4000){
            position= -3500;

        }
    }
    function wheelUp() {
        position += 500;
        if(position==500) {
            position = 0;

        }
        if(position== 0){
            $indieTabText.css("color","#07bb91");
            $indieText.css("display","block");
            $rookieTabText.css("color","white");
            $rookieText.css("display","none");
            $indexUpBtn.css("display","none");
            $indexDownBtn.css("display","block");
            $moveBox.attr("class","indieBox");


        }
        if(position== -500){
            $rookieTabText.css("color","#07bb91");
            $rookieText.css("display","block");
            $albumTabText.css("color","white");
            $albumText.css("display","none");
            $indexUpBtn.css("display","block");
            $indexDownBtn.css("display","block");
            $moveBox.attr("class","rookieBox");
            audio.pause();

        }
        if(position== -1000){
            $albumTabText.css("color","#07bb91");
            $albumText.css("display","block");
            $concertTabText.css("color","white");
            $concertText.css("display","none");
            $indexUpBtn.css("display","block");
            $indexDownBtn.css("display","block");
            $moveBox.attr("class","albumContent");
            $trackOne.css("color","rgba(255,255,255,.4)");
            idx=0;
            start();

        }
        if(position== -1500){
            $albumTabText.css("color","#07bb91");
            $albumText.css("display","block");
            $concertTabText.css("color","white");
            $concertText.css("display","none");
            $indexUpBtn.css("display","block");
            $indexDownBtn.css("display","block");
            $moveBox.attr("class","albumContent");
            $trackTwo.css("color","rgba(255,255,255,.4)");
            $trackOne.css("color","#07bb91");
            idx=1;
            start();

        }
        if(position== -2000){
            $albumTabText.css("color","#07bb91");
            $albumText.css("display","block");
            $concertTabText.css("color","white");
            $concertText.css("display","none");
            $indexUpBtn.css("display","block");
            $indexDownBtn.css("display","block");
            $moveBox.attr("class","albumContent");
            $trackThree.css("color","rgba(255,255,255,.4)");
            $trackTwo.css("color","#07bb91");
            idx=2;
            start();

        }
        if(position== -2500){
            $albumTabText.css("color","#07bb91");
            $albumText.css("display","block");
            $concertTabText.css("color","white");
            $concertText.css("display","none");
            $indexUpBtn.css("display","block");
            $indexDownBtn.css("display","block");
            $moveBox.attr("class","albumContent");
            $trackFour.css("color","rgba(255,255,255,.4)");
            $trackThree.css("color","#07bb91");
            idx=3;
            start();

        }
        if(position== -3000){
            $albumTabText.css("color","#07bb91");
            $albumText.css("display","block");
            $concertTabText.css("color","white");
            $concertText.css("display","none");
            $indexUpBtn.css("display","block");
            $indexDownBtn.css("display","block");
            $moveBox.attr("class","albumContent");
            $concertContentBox.attr("class","concertContentBox").css("left","0");
            $trackFive.css("color","rgba(255,255,255,.4)");
            idx=4;
            start();

        }
    }
    function clickDown() {
        position -= 500;
        if(position== -500){
            $indieTabText.css("color","white");
            $indieText.css("display","none");
            $rookieTabText.css("color","#07bb91");
            $rookieText.css("display","block");
            $indexDownBtn.css("display","block");
            $indexUpBtn.css("display","block");
            $moveBox.attr("class","rookieBox");
        }
        if(position== -1000){
            $rookieTabText.css("color","white");
            $rookieText.css("display","none");
            $albumTabText.css("color","#07bb91");
            $albumText.css("display","block");
            $indexDownBtn.css("display","block");
            $indexUpBtn.css("display","block");
            $moveBox.attr("class","albumContent");
            idx=0;
            start();

        }
        if(position== -1500){
            $albumTabText.css("color","white");
            $albumText.css("display","none");
            $concertTabText.css("color","#07bb91");
            $concertText.css("display","block");
            $indexDownBtn.css("display","none");
            $indexUpBtn.css("display","block");
            $moveBox.attr("class","concertBox");
            $concertContentBox.attr("class","concertContentBox one");
            audio.pause();
            position = -3500;

        }
        if(position== -2000){
            $albumTabText.css("color","white");
            $albumText.css("display","none");
            $concertTabText.css("color","#07bb91");
            $concertText.css("display","block");
            $indexDownBtn.css("display","none");
            $indexUpBtn.css("display","block");
            $moveBox.attr("class","concertBox");
            $concertContentBox.attr("class","concertContentBox one");
            audio.pause();
            position = -3500;

        }
        if(position== -2500){
            $albumTabText.css("color","white");
            $albumText.css("display","none");
            $concertTabText.css("color","#07bb91");
            $concertText.css("display","block");
            $indexDownBtn.css("display","none");
            $indexUpBtn.css("display","block");
            $moveBox.attr("class","concertBox");
            $concertContentBox.attr("class","concertContentBox one");
            audio.pause();
            position = -3500;

        }
        if(position== -3000){
            $albumTabText.css("color","white");
            $albumText.css("display","none");
            $concertTabText.css("color","#07bb91");
            $concertText.css("display","block");
            $indexDownBtn.css("display","none");
            $indexUpBtn.css("display","block");
            $moveBox.attr("class","concertBox");
            $concertContentBox.attr("class","concertContentBox one");
            audio.pause();
            position = -3500;

        }
        if(position== 3500){
            $albumTabText.css("color","white");
            $albumText.css("display","none");
            $concertTabText.css("color","#07bb91");
            $concertText.css("display","block");
            $indexDownBtn.css("display","none");
            $indexUpBtn.css("display","block");
            $moveBox.attr("class","concertBox");
            $concertContentBox.attr("class","concertContentBox one");
            audio.pause();

        }
        if(position== -4000){
            position= -3500;
            audio.pause();

        }
    }
    function clickUp() {
        position += 500;
        if(position==500) {
            position = 0;

        }
        if(position== 0){
            $indieTabText.css("color","#07bb91");
            $indieText.css("display","block");
            $rookieTabText.css("color","white");
            $rookieText.css("display","none");
            $indexUpBtn.css("display","none");
            $indexDownBtn.css("display","block");
            $moveBox.attr("class","indieBox");


        }
        if(position== -500){
            $rookieTabText.css("color","#07bb91");
            $rookieText.css("display","block");
            $albumTabText.css("color","white");
            $albumText.css("display","none");
            $indexUpBtn.css("display","block");
            $indexDownBtn.css("display","block");
            $moveBox.attr("class","rookieBox");
            audio.pause();

        }
        if(position== -1000){
            $rookieTabText.css("color","#07bb91");
            $rookieText.css("display","block");
            $albumTabText.css("color","white");
            $albumText.css("display","none");
            $indexUpBtn.css("display","block");
            $indexDownBtn.css("display","block");
            $moveBox.attr("class","rookieBox");
            position= -500
            audio.pause();

        }
        if(position== -1500){
            $rookieTabText.css("color","#07bb91");
            $rookieText.css("display","block");
            $albumTabText.css("color","white");
            $albumText.css("display","none");
            $indexUpBtn.css("display","block");
            $indexDownBtn.css("display","block");
            $moveBox.attr("class","rookieBox");
            position= -500
            audio.pause();

        }
        if(position== -2000){
            $rookieTabText.css("color","#07bb91");
            $rookieText.css("display","block");
            $albumTabText.css("color","white");
            $albumText.css("display","none");
            $indexUpBtn.css("display","block");
            $indexDownBtn.css("display","block");
            $moveBox.attr("class","rookieBox");
            position= -500
            audio.pause();

        }
        if(position== -2500){
            $rookieTabText.css("color","#07bb91");
            $rookieText.css("display","block");
            $albumTabText.css("color","white");
            $albumText.css("display","none");
            $indexUpBtn.css("display","block");
            $indexDownBtn.css("display","block");
            $moveBox.attr("class","rookieBox");
            audio.pause();
            position= -500

        }
        if(position== -3000){
            $rookieTabText.css("color","#07bb91");
            $rookieText.css("display","block");
            $albumTabText.css("color","white");
            $albumText.css("display","none");
            $indexUpBtn.css("display","block");
            $indexDownBtn.css("display","block");
            $moveBox.attr("class","albumContent");
            idx=0;
            start();

            position= -1000

        }
    }
    function start() {
        audio.src = musics[idx];
        audio.play();
    }
    audio.ontimeupdate = function () {
        $bar.height(88*idx+(88/audio.duration)*audio.currentTime);
    };
    audio.onended = function () {
        start();
    };
//    start();
</script>
</body>
</html>