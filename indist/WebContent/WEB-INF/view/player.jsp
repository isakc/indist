<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>player</title>
    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/noto.sans.korea.css" />
    <link rel="stylesheet" href="css/jquery-ui.min.css"/>
	<link rel="shortcut icon" type="image/x-icon" href="/img/Logo/favicon.ico" />
<style>
    #playerBox{
        width: 398px;
        height: 378px;
        border: 1px solid #9E9E9E;
    }
    #playerHeader{
        width: 398px;
        height: 49px;
        background-color:  #99cccc;
        position: relative;
    }
    #playerLogo{
        width: 100px;
        height: 45px;
        background-image: url("img/Logo/footerLogo.png");
        background-size: cover;
        position: absolute;
        top: 5px;
        left: -8px;
    }
    #playerContents{
        width:398px;
        height: 118px;
        border-top: 1px solid #9E9E9E;
        border-bottom: 1px solid #9E9E9E;

    }
    #playerTitleImg{
        width: 118px;
        height: 118px;
        border-right:1px solid #9E9E9E;
        background-image:url("img/player/Klaps_cover_Good Night.png") ;
        background-size: cover;
        float: left;
    }
    #player{
        width: 279px;
        height: 118px;
        float: right;
        position: relative;
    }
    #songName{
        font-size: 25px;
        position: absolute;
        right:15px;
        top:15px;
    }
    #singer{
        position: absolute;
        right:15px;
        top:48px;
        color: #99cccc;
    }
    #playBtn{
        font-size: 35px;
        position: absolute;
        left: 40px;
        top:15px;
        /*color: #99cccc;*/
    }
    #backwardBtn{
        font-size: 20px;
        position: absolute;
        left: 20px;
        top:25px;
    }
    #forwardBtn{
        font-size: 20px;
        position:absolute;
        left: 78px;
        top:25px;

    }
    #sound_mute{
        position: absolute;
        right: 93px;
        bottom: 31px;
    }
    #volumeSlider{
        width:70px;
        height:3px;
        background-color: #eef;
        position: absolute;
        right: 15px;
        bottom: 37px;
    }
    #volumeSlider .ui-slider-handle{
        top: -3px;
        width: 8px;
        height: 8px;
        /*border-radius:50px;*/
        background:#969696;

    }
    #volumeSlider .ui-slider-handle:hover {
        cursor: pointer;
    }
    #volumeSlider .ui-slider{
        width:70px;
        height:3px;
        background-color: #eef;
        position: absolute;
        right: 15px;
        bottom: 37px;
    }
    #volumeSlider .ui-slider-range{
        background-color: #99cccc;
    }
    #timeSlider .ui-slider-handle:hover{
        /*cursor: pointer;*/
    }

    #timeSlider .ui-slider-handle{
        top: -3px;
        /*right: 100px;*/
        width: 8px;
        height: 8px;
        /*border-radius:50px;*/
        background:#969696;
    }
    #timeSlider{
        width:200px;
        height:3px;
        background-color: #eef;
        position: absolute;
        right: 15px;
        bottom: 17px;
    }

    #timeSlider .ui-slider{

    }

    #timeSlider .ui-slider-range{
        background-color: #99cccc;
    }
    #plus{
        width:398px;
        height:30px;
        position: relative;
        background-color: #99cccc;
    }
    #plus button{
        font-size: 25px;
        position: absolute;
        right: 10px;
        top:1px;
        background-color: transparent;
        border: none;
        cursor: pointer;
        color: #757575;
    }
    #playerList{
        width: 398px;
        height: 148px;
        border-top: 1px solid #9E9E9E;
        border-bottom: 1px solid #9E9E9E;
    }
    #playerList ul{
        width: 398px;
        height: 148px;

    }
    .playerImg{
        width: 43px;
        height: 43px;
        position: absolute;
        top:3px;
        left: 3px;
    }
    .playerImg img{
        width: 43px;
        height: 43px;

    }
    .playerSongName{
        position: absolute;
        left: 70px;
        top:18px;
        font-weight: bold;
        font-size: 15px;
    }
    .playerSinger{
        font-size: 12px;
        position: absolute;
        top: 19px;
        color:#99cccc;
    }
    .one{
        left: 160px;
    }
    .two{
        left: 242px;
    }
    .three{
        left: 145px;
    }
    .checkbox{
        display: inline-block;
        position: absolute;
        top:15px;
        right: 15px;
    }
    #playerList li:nth-child(1) {
        width: 398px;
        height: 49px;
        position: relative;
        background-color:#E0F2F1;

    }
    #playerList li:nth-child(2) {
        width: 398px;
        height: 48px;
        border-top: 1px solid #9E9E9E;
        border-bottom: 1px solid #9E9E9E;
        position: relative;
    }
    #playerList li:nth-child(3) {
        width: 398px;
        height: 49px;
        position: relative;
    }
    #playerFooter{
        width:398px;
        height: 29px;
        position: relative;
        background-color: #99cccc;
    }
    #playerFooter button:nth-child(2){
        font-size: 25px;
        background-color: transparent;
        border: none;
        color: #757575;
        position: absolute;
        right: 70px;
    }
    #playerFooter button:nth-child(1){
        font-size: 25px;
        background-color: transparent;
        border: none;
        color: #757575;
        position: absolute;
        right:50px;
    }
    /*#playerFooter button:nth-child(3){*/
        /*background-color:  #757575;*/
        /*position: absolute;*/
        /*height: 22px;*/
        /*top:4px;*/
        /*right: 5px;*/
        /*border: 1px solid #757575 ;*/
        /*color:  white;*/
        /*line-height: 20px;*/
    /*} */
    #playerFooter #btnDelete{
        background-color:  #757575;
        position: absolute;
        height: 22px;
        top:4px;
        right: 5px;
        border: 1px solid #757575 ;
        color:  white;
        line-height: 20px;
        font-size: 10px;
    } 
        
    }
    button:focus{
        outline: none;
    }
    
        .duration{
        font-size: 16px;
        position: absolute;
        left: 15px;
        bottom: 11px;
    }
    
</style>

</head>
<body>
<div id="playerBox">
    <div id="playerHeader">
        <div id="playerLogo"></div>
    </div>
    <div id="playerContents">
        <div id="playerTitleImg"></div>
        <div id="player">
            <audio id="audio" src="audio/[MV] Klaps (클랩스) - Good Night.aac"></audio>
            <span class="duration">00:00</span>
            <div id="backwardBtn"><i class="fa fa-step-backward" aria-hidden="true"></i></div>
            <div id="playBtn"><i class="fa fa-play"></i></div>
            <div id="forwardBtn"><i class="fa fa-step-forward" aria-hidden="true"></i></div>
            <em id="songName">Good Night</em>
            <span id="singer">Klaps</span>
            <div id="timeSlider" class="bar active"></div>
            <div id="sound_mute"><i class="fa fa-volume-up"></i></div>
            <div id="volumeSlider" class="sound_active" ></div>
        </div>
    </div>
    <div id="plus">
        <button><i class="fa fa-angle-down" aria-hidden="true"></i></button>
    </div>
    <div id="playerList">
        <ul>
            <li>
                <div class="playerImg">
                    <img src="img/player/Klaps_cover_Good Night.png"/>
                </div>
                <div class="playerSongName">Good Night</div>
                <div class="playerSinger one">Klaps</div>
                <input type="checkbox" class="checkbox"/>
            </li>
            <li>
                <div class="playerImg">
                    <img src="img/player/pepperalbum.jpg"/>
                </div>
                <div class="playerSongName">New hippie generation</div>
                <div class="playerSinger two">페퍼톤스</div>
                <input type="checkbox" class="checkbox"/>
            </li>
            <li>
                <div class="playerImg">
                    <img src="img/player/standingalbum.jpg"/>
                </div>
                <div class="playerSongName ">Little Star</div>
                <div class="playerSinger three">standing egg</div>
                <input type="checkbox" class="checkbox"/>
            </li>
        </ul>
    </div>
    <div id="playerFooter">
        <button><i class="fa fa-caret-up" aria-hidden="true"></i></button>
        <button><i class="fa fa-caret-down" aria-hidden="true"></i></button>
        <form action="player" method="POST">
        
        <button id="btnDelete">삭제</button>
        </form>
    </div>
</div>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script>
    var audio = $("#audio").get(0);
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
    var $duration = $(".duration");

    audio.oncanplay = function() {
        var duration = Math.floor(audio.duration/ 60)+":"+Math.floor(audio.duration) % 60;
        $duration.text(duration);
    }
    function pad(n, width) {
        n = n + '';
        return n.length >= width ? n : new Array(width - n.length + 1).join('0') + n;
    }

 
    audio.ontimeupdate = function () {
        $("#timeSlider").slider("value", (200 / audio.duration) * audio.currentTime);
        $duration.text(Math.floor(audio.currentTime/60)+":"+pad(Math.floor(audio.currentTime%60),2));

    }
        $("#volumeSlider").slider({
            range: "min",
            min: 0,
            max: 100,
            value: 50,
            slide: function (e, ui) {
                audio.volume = ui.value /100
            }
        })

        $("#timeSlider").slider({
            range: "min",
            min: 0,
            max: 200,
            value: 0,
            slide: function (e, ui) {
                audio.currentTime = ui.value * audio.duration / 200;
            }
        })
</script>
</body>
</html>