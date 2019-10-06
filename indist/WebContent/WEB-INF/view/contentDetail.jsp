<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>컨텐츠 제목 - 루키이름</title>
    
	<c:import url="template/link.jsp"></c:import>
    <link rel="stylesheet" href="../../css/rookie/rookieCard(수림).css"/>
    <link rel="stylesheet" href="../../css/rookie/rookieContentsCard(수림).css"/>
    <link rel="stylesheet" href="../../css/rookie/rookieSearch(수림).css"/>
    <link rel="stylesheet" href="../../css/jquery-ui.min.css"/>
	<link rel="shortcut icon" type="image/x-icon" href="/img/Logo/favicon.ico" />
    <style>
        #snsDetail{
            position: relative;
            width: 1000px;
            min-height: 200px;

        }

        #snsDetail .sns_replies {
            position: relative;
            width: 1000px;
            min-height: 70px;
            padding-top: 20px;
        }
        #snsReplyRegister {
            width: 1000px;
            height: 100px;
            padding: 20px 0;
            /*border-top: 1px solid #424242;*/
            border-bottom: 2px dashed #424242;
            text-align: left;


        }
        #snsReply{
            width: 770px;
            height: 80px;
            padding: 5px;
            border: none;
            border-radius: 5px;
            background-color: #eef;
            /*box-shadow: 0 0 5px #424242;*/
            color: #424242;
            font-family: "NotoSansKR",sans-serif;
            font-size: 15px;
            resize: none;
            position: absolute;
            left: 120px;
        }
        #snsReplyRegister .btn_reply_write {
            background-image: url(../../img/rookie/fan_2.png);
            position: absolute;
            right: 0;
            width: 90px;
            height: 90px;
            padding: 0;
            border: none;
            border-radius: 5px;
            /*box-shadow: 0 0 5px #424242;*/
            cursor: pointer;
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
            transform: scale(0.8);
            transition: .2s ease;
        }
        #snsReplyRegister .btn_reply_write:hover{
            color: #444444;
            transform: scale(.9);
        }

        #snsReplies {
            position: relative;
            top: 0px;
            width: 1000px;
            min-height: 200px;
            padding: 50px 0;
        }
        #snsReplies ul{
            width: 100%;
            min-height: 600px;
            position: relative;
            margin-bottom: 50px;
        }
        #snsReplies li {
            min-height: 100px;
            position: relative;
            overflow: hidden;
            padding-bottom: 40px;
            /*border-bottom: 1px solid #424242;*/
        }
        #snsReplies .reply_writer {
            position: relative;
            width: 200px;
            min-height: 80px;
            float: left;
            overflow: hidden;
        }
        #snsReplies .writer_profile {
            position: absolute;
            /*top: 10px;*/
            left: 110px;
            width: 60px;
            height: 60px;
            border-radius: 50px;
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
        }
        #snsReplies .writer {
            display: block;
            width:100px;
            position: absolute;
            bottom: 0px;
            left: 90px;
            max-width: 110.5px;
            font-size: 16px;
            font-weight: 500;
            color: #424242;
            text-align: center;
            white-space: nowrap;
            text-overflow: ellipsis;
            float: left;
            overflow: hidden;
        }

        #snsReplies .tr{
            width: 17px;
            height: 0px;
            position: absolute;
            display: block;
            border-right: 17px solid #eef;
            border-bottom: 17px solid transparent;
            top: 0px;
            left:170px;
        }

        #snsReplies .reply {
            position: relative;
            top: 0;
            background-color: #eef;
            width: 700px;
            min-height: 90px;
            text-align: left;
            /*float: left;*/
            overflow: hidden;
            border-radius:0 5px 5px 5px;
        }
        #snsReplies .content_reply {
            margin: 5px;
            display: block;
            width: 580px;
            font-size: 18px;
            color: #424242;
            line-height: 25px;
            word-break: keep-all;
        }
        #snsReplies .content_reply_regdate {
            margin: 5px;
            font-size: 12px;
            color: #aaaaaa;
        }
        #snsReplies .reply i {
            width: 15px;
            height: 15px;
            margin-left: 5px;
            text-align: center;
            line-height: 15px;
            border-radius: 7.5px;
            cursor: pointer;
        }
        #snsReplies .reply i:hover {
            box-shadow: 0 0 1px #424242;
        }

        #user_profile{
            position: absolute;
            background-color: #444444;
            width:90px;
            height: 90px;
            border-radius: 90px;
            left: 10px;
        }

    </style><!--reply-->
    <style>
        body{
            font-family: "Noto Sans KR", sans-serif;
        }
        input:focus {
            outline: none;
        }
        .bg{
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
        }
        .cover{
            width: 230px;
            height: 260px;
            position: absolute;
            z-index: 3;
            transition: .4s ease;
        }
        .cover:hover{
            background-color: rgba(100,100,100,.2);
            cursor: pointer;
        }
        .overflow{
            overflow: hidden;
            white-space: nowrap;
            text-overflow: ellipsis;
        }
        .card_rookie_contents{
            height: 260px;
        }
        .contents_rep_image{
            background-image: url(../img/rookie/background.png);
        }
        #sectionContent{
            width: 1000px;
            min-height: 700px;
            top: 50px;
            margin: auto;
            position: relative;
        }


        #snsDetail{
            position: relative;
        }
    </style>
    <style>
        #box_name{
            width: 1000px;
            height: 100px;
            position: relative;
            margin-top: 40px;
            font-size: 20px;
        }
        .nameCard_rookie{
            position: absolute;
            left: 0px;
            top: 20px;
        }
        #followBtn{
            width: 60px;
            height: 60px;
            position: absolute;
            top:20px;
            left: 232px;
            transition: .2s ease;
            font-weight: 100;
            font-size: 55px;
            color: #99cccc;
            margin-left: 15px;
            line-height: 60px;
        }
        #followBtn:hover{
            cursor: pointer;
            color: #0099cc;
        }

        #rc_like{
            position: absolute;
            top:40px;
            right: 220px;
            font-weight: 500;
            color: #424242;
        }
        #rc_like .fa-heart {
            color: red;
        }
        #rc_hit{
            position: absolute;
            top:40px;
            right: 125px;
            font-weight: 500;
            color: #424242;
        }
        #rc_regdate{
            position: absolute;
            top:40px;
            right: 0;
            color: #969696;
            font-weight: 500;

        }
    </style>
    <style>
        #contentsExp{
            width: 1000px;
            min-height: 300px;
            resize: none;
            padding:10px 0;
        }
        #contentsExp>strong{
            display: block;
            width: 980px;
            min-height: 300px;

            font-size: 20px;
            padding: 10px;
        }
        #contentsExp>span{
            color: #969696;
            font-size: 15px;
        }
        #contentsExp a{
            font-size: 15px;
            text-decoration:underline ;
            color: #969696;
            cursor: pointer;
        }
    </style>
    <style>
        #rookies_other{
            margin-top: 40px;
            width: 1000px;
            height: 340px;
            position: relative;

        }
        #rookies_other ul{
            width: 1000px;
            height: 300px;

        }
        #rookies_other ul li{
            float: left;
            width: 230px;
            height: 260px;
            margin-right: 20px;
        }
        #rookies_other>em{
            font-size: 15px;
            font-weight: 700;
        }
        #rookies_other>em>span{
            color: #0099cc;
        }
        #rookies_other a{
            display: block;
            float: right;
            font-size: 15px;
            font-weight: 500;
            color: #969696;
            text-decoration: none;
            cursor: pointer;
        }
        #rookies_other .card_rookie_contents{
            position: absolute;
            top:30px;
            margin-right: 10px;

        }
        #replyBox{
            position: relative;
            width: 100%;
            min-height: 400px;
            /*background-color: red;*/
            clear:both;
        }

    </style>
    <style>
        #boxPlay{
            width: 1000px;
            min-height: 300px;
            position: relative;

        }
        #coverImg{
            width: 400px;
            height: 300px;

            float: left;

        }
        #rcPlayer{

            border: 1px solid #969696;
            width: 598px;
            height: 298px;
            float: right;
        }
        #movie{
            display: none;
            width: 855px;
            height: 480px;
            position: relative;
            left:72px;
        }
        #title{
            display: none;
            width: 1000px;
            height: 80px;
            margin: auto;
        }
        #title strong{
            font-size: 30px;
            line-height: 80px;
            margin: 10px;
        }
        #title span{
            color: #99cccc;
        }
        #boxPlay{
            color: #424242;
        }
        #playBtn{
            width: 80px;
            height: 80px;
            line-height: 80px;
            text-align: center;
            font-size: 80px;
            cursor: pointer;
            position: absolute;
            top: 50px;
            left: 430px;
            transition: .2s ease;
            color: #99cccc;
        }
        #playBtn:hover{
            color: #0099cc;
        }
        #rcPlayer>em{
            font-size: 40px;
            display: block;
            position: absolute;
            width: 450px;
            height: 50px;
            top: 54px;
            left: 505px;
            text-align: right;
        }
        #rcPlayer>strong{
            color: #99cccc;
            font-size: 23px;
            display: block;
            position: absolute;
            top:110px;
            right:55px;
        }
        #sound_mute{
            width: 20px;
            height: 20px;
            position: absolute;
            top:195px;
            right: 150px;
            font-size: 20px;
            cursor: pointer;
        }

        #before_reply{
            margin: 10px;
        }
        #before_reply>em{
            font-size: 15px;
            font-weight: 700;
        }
        #before_reply>strong{
            color: #0099cc;
        }

        .currentTime{
            color: #969696;
            position: absolute;
            left: 434px;
            bottom: 30px;

        }
        .duration{
            color:#969696;
            position: absolute;
            right: 40px;
            bottom: 30px;
        }
        .contents_exp{
            resize: none;
            width:100%;
            min-height: 500px;
            border:none;
            font-family: "Noto Sans KR", sans-serif;

        }
        #volumeSlider{
            width:100px;
            height:5px;
            background-color: #eef;
            position: absolute;
            left: 860px;
            top: 203px;
        }

        #volumeSlider .ui-slider-handle{
            top: -4px;
            width: 10px;
            height: 10px;
            /*border-radius:50px;*/
            background:#969696;

        }
        #volumeSlider .ui-slider-handle:hover {
            cursor: pointer;
        }
        #volumeSlider .ui-slider{
            width:100px;
            height:5px;
            background-color: #eef;
            position: absolute;
            left: 880px;
            top: 200px;
        }
        #volumeSlider .ui-slider-range{
            background-color: #99cccc;
        }
       
        #timeSlider .ui-slider-handle{
            top: -4px;
            /*right: 100px;*/
            width: 10px;
            height: 10px;
            /*border-radius:50px;*/
            background:#969696;
        }
        #timeSlider .ui-slider-handle:hover{
            /*cursor: pointer;*/
        }

        #timeSlider{
            width:522px;
            height:5px;
            background-color: #eef;
            position: absolute;
            left: 438px;
            bottom: 50px;
        }
        #timeSlider .ui-slider{

        }
        #timeSlider .ui-slider-range{
            background-color: #99cccc;
        }

    </style>

</head>
<body>
<div id="wrap">
    <h1 class="screen_out">Content Detail Page</h1>


	<c:import url="../view/template/header.jsp"></c:import>

<div id="content">
    <div id="sectionContent">

        <div id="boxPlay">
            <img id="coverImg" class="bg" src="../../img/rookie/Sabrina.jpg"/><!--//coverImg-->
            <div id="rcPlayer">
                <audio id="rookie_" src="../../audio/Confidently_Lost.mp3"></audio>
                <div id="playBtn"><i class="fa fa-play"></i></div>
                <em>Confidently Lost</em><!--제목 글자 초과시 흘러가기-->
                <strong>Sabrina Claudio</strong>
                <!--<span class="bar active" ></span>-->
                <!--<span class="unactiveBar"></span>-->
                <div id="timeSlider" class="bar active"></div>
                <span class="currentTime">00 : 00</span>
                <span class="duration">00 : 00</span>
                <div id="sound_mute"><i class="fa fa-volume-up"></i></div>
                <div id="volumeSlider" class="sound_active" ></div>

            </div><!--//player-->

         

        </div><!--//boxPlay -->
        <div id="box_name">
        <div class="nameCard_rookie">
            <a class="overflow">Sabrina Claudio</a>
            <span><i class="fa fa-users"></i> 194</span>
            <img  class="nameCard_rookie_profile bg" src="../../img/rookie/sabrina-claudio.jpg"/><!--//nameCard_rookie_profile-->
        </div><!--//nameCard_rookie -->

            <div id="followBtn"title="'Sabrina Claudio'와 팬맺기"><i class="fa fa-plus"></i></div><!--//followBtn-->
            <div id="rc_like" ><i class="fa fa-heart"></i> 8838</div>
            <div id="rc_hit"><i class="fa fa-eye"></i> 77299</div>
            <div id="rc_regdate"> | 2017.06.12 </div>
        </div><!--//box_name-->
        <div id="contentsExp">
            <textarea disabled class="contents_exp">
                You don't define me
                I'm alone but I'm not lonely

                Comfortably indulging

                And trying to get to know me

                I'm just an outline of what I used to be

                Constantly evolving

                Steadily revolving


                I am confidently lost

                I don't need you to find me

                I am confidently lost

                I don't need you to find me

                Cause I'm not hiding


                Anything


                Made up of hope and meditation

                Love, imagination water my creations

                Baby it's amazing

                All the days I'm facing

                Nothing seems to phase me

                Cause I


                I am confidently lost

                I don't need you to find me

                Cause I know how it is


                Anything


                Thinking about where I've gone

                Where I'm going

                And I wouldn't change it for the world

                Thinking about where I'm from

                If I belong there

                But I wouldn't change it for anything

                (I wouldn't change it for anything)

                Anything
                그무엇과도</textarea>

            <span>본 컨텐츠의 저작권은 저작권자에 있으며, 무단 사용시 법적 책임을 묻습니다.</span>
            <a>신고하기</a>
        </div><!--//contents_exp-->

        <div id="rookies_other">
            <em>'Sabrina Claudio' 루키의 다른 음악  <span>22</span></em>
            <a>컨텐츠 더보기 <i class="fa fa-chevron-right"></i></a>
        <ul>
        <li>
                            <div class="card_rookie_contents">
                                <a class="cover">
                                    <div class="like"><i class="fa fa-heart"></i>9989</div>
                                    <div class="view"><i class="fa fa-eye"></i>87299</div>
                                    <div class="comments"><i class="fa fa-comment-o"></i>802</div>
                                </a>
                                <div class="sort"><i class="fa fa-headphones"></i></div>
                                <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                                <img class="contents_rep_image bg" src="../../img/rookie/sabrina22.jpg"><!--//contents_rep_image-->
                                <div class="contents_title">
                                    <em class="overflow">Orion's Belt</em>
                                    <strong>Electronica</strong>
                                    <p class="overflow">This mess of emotions got his body questioning
						Is this feeling alright?</p>
                                </div><!--//contents_title-->
                                
                            </div><!--//card_rookie_contents-->
                        </li>
            <li>
                <div class="card_rookie_contents">
                <a class="cover">
                    <div class="like"><i class="fa fa-heart"></i>253</div>
                    <div class="view"><i class="fa fa-eye"></i>266</div>
                    <div class="comments"><i class="fa fa-comment-o"></i>1</div>
                </a>
                <div class="sort"><i class="fa fa-video-camera"></i></div>
                <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                 <img class="contents_rep_image bg" src="../../img/rookie/sabrina8.jpg"/><!--//contents_rep_image-->
                <div class="contents_title">
                    <em class="overflow">Unravel Me</em>
                    <strong>R&B</strong>
                    <p class="overflow">Something in the sun or the air Is making me want to run away from here</p>
                </div><!--//contents_title-->

            </div><!--//card_rookie_contents-->
            </li>
           
           			 <li>
                            <div class="card_rookie_contents">
                                <a class="cover">
                                    <div class="like"><i class="fa fa-heart"></i>463</div>
                                    <div class="view"><i class="fa fa-eye"></i>2775</div>
                                    <div class="comments"><i class="fa fa-comment-o"></i>1</div>
                                </a>
                                <div class="sort"><i class="fa fa-headphones"></i></div>
                                <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                                 <img class="contents_rep_image bg"src="../../img/rookie/sabrina11.jpg"/><!--//contents_rep_image-->
                                <div class="contents_title">
                                    <em class="overflow">Too much Too late</em>
                                    <strong>Ballad</strong>
                                    <p class="overflow">You're a flower In ther garden</p>
                                </div><!--//contents_title-->
                              
                            </div><!--//card_rookie_contents-->
                        </li>
            <li>
                            <div class="card_rookie_contents">
                                <a class="cover">
                                    <div class="like"><i class="fa fa-heart"></i>263</div>
                                    <div class="view"><i class="fa fa-eye"></i>1522</div>
                                    <div class="comments"><i class="fa fa-comment-o"></i>2</div>
                                </a>
                                <div class="sort"><i class="fa fa-video-camera"></i></div>
                                <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                                 <img class="contents_rep_image bg"src="../../img/rookie/sabrina3.jpg"/><!--//contents_rep_image-->
                                <div class="contents_title">
                                    <em class="overflow">Tell me</em>
                                    <strong>Folk</strong>
                                    <p class="overflow">Help me understand your love</p>
                                </div><!--//contents_title-->
                                
                            </div><!--//card_rookie_contents-->
                        </li>

        </ul>
        </div><!--//rookies_other-->
        <div id="replyBox">
        <div id="before_reply"><em>응원의 한마디 남기기</em> <strong>4</strong></div>
        <div id="snsDetail">
            <div class="sns_replies">
                <div id="snsReplyRegister">
                    <form action="" method="post">
                        <input type="hidden" name="userNo" value=""/>
                        <input type="hidden" name="typeNo" value="23"/>
                        <img id="user_profile" title="유저이름" class="writer_profile" src="../../img/rookie/정봉이.jpg" alt="정봉이"/>
                        <textarea id="snsReply" name="replyContent" maxlength="1000" placeholder="주제와 무관한 댓글, 악플은 삭제될 수 있습니다."></textarea>
                        <button class="btn_reply_write "></button>
                    </form>
                </div>
                <div id="snsReplies">
                    <ul>
                        <li>
                            <div class="reply_writer">
                                <img class="writer_profile" src="../../img/rookie/프로필2.jpg" alt="누구세요"/>
                                <span class="writer">누구세요</span>
                                <div class="aaa"></div>
                            </div>
                            <div class="tr"></div>
                            <div class="reply">
                                <span class="content_reply">누구신데 이렇게 노래를... 너무 좋아요... 좋아요 누르고 갑니다.....</span>
                                <span class="content_reply_regdate">2017. 06. 12. 21:13</span>
                                  <!-- <i class="fa fa-close" title="삭제"></i> -->
                            </div>
                        </li>
                        <li>
                            <div class="reply_writer">
                                <img class="writer_profile" src="../../img/rookie/프로필4.jpg" alt="zizon"/>
                                <span class="writer">zizon</span>
                                <div class="aaa"></div>
                            </div>
                            <div class="tr"></div>
                            <div class="reply">
                                <span class="content_reply">음악 진짜 좋고 나만 알고 싶은 아티스트 음악을 그냥 잘하네 ㅋㅋㅋㅋㅋㅋㅋㅋ</span>
                                <span class="content_reply_regdate">2017. 06. 12. 21:22</span>
                                <!-- <i class="fa fa-close" title="삭제"></i> -->
                            </div>
                        </li>
                        <li>
                            <div class="reply_writer">
                                <img class="writer_profile" src="../../img/rookie/프로필5.jpg" alt="Malcontent"/>
                                <span class="writer">Malcontent</span>
                                <div class="aaa"></div>
                            </div>
                            <div class="tr"></div>
                            <div class="reply">
                                <span class="content_reply">와 중간에 비트 바뀌는데 그루브 진짜</span>
                                <span class="content_reply_regdate">2017. 06. 12. 22:13</span>
                                 <!-- <i class="fa fa-close" title="삭제"></i> -->
                            </div>
                        </li>
                        <li>
                            <div class="reply_writer">
                                <img class="writer_profile" src="../../img/rookie/프로필6.jpg" alt="kimmmki"/>
                                <span class="writer">kimmmki</span>
                                <div class="aaa"></div>
                            </div>
                            <div class="tr"></div>
                            <div class="reply">
                                <span class="content_reply">덕분에 야자 끝나고 버스타는 밤마다 귀호강하게 되네요 ㄳㄳ</span>
                                <span class="content_reply_regdate">2017. 06. 13. 18:13</span>
                                <!-- <i class="fa fa-close" title="삭제"></i> -->
                            </div>
                        </li>

                    </ul>
                </div> <!-- // .sns_replies_list -->
            </div> <!-- // .sns_replies -->
        </div> <!-- // #snsDetail -->
        </div><!--replyBox -->
    </div><!--//sectionContent -->
</div>



	<c:import url="../view/template/footer.jsp"></c:import>
</div>

<script src="../../js/jquery-3.2.1.min.js"></script>
<script src="../../js/jquery-ui.min.js"></script>
<script>

    var audio = $("#rookie_").get(0);
    var $play = $("#playBtn");
    var $mute = $("#sound_mute");

    $play.click(function () {
        var pause = $play.find("i");
        pause.toggleClass(".fa fa-pause",".fa fa-play");


        if(pause.hasClass("fa-pause")){
            $("#timeSlider .ui-slider-range").css("background-color","#99cccc");
            start();


        }else{
            $("#timeSlider .ui-slider-range").css("background-color","#0099cc");
            audio.pause();
        }
    })

    var $duration = $(".duration");
    var $current = $(".currentTime");

    setTimeout(function () {
        var duration = Math.floor(audio.duration/ 60)+" : "+Math.floor(audio.duration) % 60;
        $duration.get(0).innerHTML = duration;
    },1000);

    audio.addEventListener("timeupdate", function () {

        var currentM = Math.floor(audio.currentTime/ 60);
        var currentS = Math.floor(audio.currentTime) % 60;


        if(currentM >=1){
            $current.text(currentM+" : "+currentS);
        }else{
            $current.text("00 : "+currentS);
        }

    })

    function mute(){
        audio.muted = !audio.muted;
    }


    $mute.click(function () {

        $mute.find("i").toggleClass(".fa fa-ban", ".fa fa-volume-up");
        var muted = $mute.find("i");

        if(muted.hasClass("fa-ban")){
            mute();
            $("#volumeSlider").slider({
            value:0
            });

        }else{
            !mute();
            $("#volumeSlider").slider({
                value:20
            });
        }

    })

    function start() {
        audio.play();
    }

    audio.ontimeupdate = function () {
        $("#timeSlider").slider( "value",(522/audio.duration)*audio.currentTime );
    }

    $("#volumeSlider").slider({
        range: "min",
        min: 0,
        max: 100,
        value: 50,
        slide:function(e,ui){
            audio.volume = ui.value/100;
        }
    })

    $("#timeSlider").slider({
        range: "min",
        min: 0,
        max: 522,
        value: 0,
        slide:function(e,ui){
            audio.currentTime = ui.value*audio.duration/522;
        }
    })

    var adjustHeight = function() {
        var textEle = $(".contents_exp");
        var textEleHeight = textEle.prop('scrollHeight');
        textEle.css('height', textEleHeight);
    };

    adjustHeight();



</script>
</body>
</html>

