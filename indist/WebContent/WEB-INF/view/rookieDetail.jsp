<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>'FRESH KIWI JAM' Rookie Page</title>
    
	<c:import url="template/link.jsp"></c:import>
    <link rel="stylesheet" href="../css/rookie/rookieContentsCard(수림).css"/>
    <style>
   body {
            /*
                170607_1206_수정_심온
                margin: 0  (삭제)
                font-family  (추가)
             */
            font-family: 'Noto Sans KR', sans-serif;
            /* 170608_1552_추가_심온 */
            overflow: visible;
        }

        .bg {
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
        }
       

        .overflow {
            overflow: hidden;
            white-space: nowrap;
            text-overflow: ellipsis;
        }

        .cover {
            width: 230px;
            height: 260px;
            position: absolute;
            z-index: 3;
            transition: .4s ease;
        }

        .cover:hover {
            background-color: rgba(100, 100, 100, .2);
            cursor: pointer;
        }


        #wrap {
            position: relative;
            width: 100%;
        }

        #contentAux {
            width: 1000px;
            min-height: 500px;
            margin: auto;
        }
    </style> <!-- header, footer, content -->
    <style>
        #musicianInfo {
            background-size: cover;
            position: relative;
            width: 1000px;
            height: 300px;
            overflow: hidden;
        }

        #musicianInfo .musician_cover {
            position: relative;
            display: block;
            width: 1000px;
            height: 300px;
        }

        #musicianInfo .musician_cover img {
            position: absolute;
            width: 1000px;
        }

        #musicianProfile {
            position: absolute;
            bottom: 40px;
            left: 30px;
            width: 500px;
            height: 116px;
        }

        #musicianProfile .profile {
            position: absolute;
            float: left;
            width: 116px;
            height: 116px;
        }

        #musicianProfile .profile img {
            width: 116px;
            height: 116px;
            border-radius: 58px;
        }

        #musicianProfile .musician_name, #musicianProfile .sub_title {
            position: absolute;
            left: 140px;
            text-shadow: 0 0 5px #424242;
        }

        #musicianProfile .musician_name {
            min-width: 50px;
            top: 40px;
            font-size: 25px;
            color: #eeeeee;
        }

        #musicianProfile .sub_title {
            top: 75px;
            max-width: 500px;
            font-size: 15px;
            color: #eeeeee;
        }

        #musicianInfo .btn_fan {
            background: #eeeeee;
            position: absolute;
            bottom: 40px;
            right: 100px;
            min-width: 100px;
            padding: 0 10px;
            height: 40px;
            text-align: center;
            line-height: 40px;
            border-radius: 10px;
        }

        #musicianInfo .btn_fan i {
            color: #E91E63;
            cursor: pointer;
        }
    </style> <!-- musician info -->
    <style>
        #indieSettingBtn {
            position: absolute;
            bottom: 10px;
            right: 10px;
            font-size: 40px;
            cursor: pointer;
        }

        #musicianInfo .indie_setting {
            position: absolute;
            display: none;
            border-radius: 100px;
            text-align: center;
            overflow: hidden;
            cursor: pointer;
        }

        #musicianInfo .musician_cover .indie_setting {
            width: 40px;
            height: 40px;
            font-size: 40px;
            top: 10px;
            right: 10px;
            overflow: hidden;
        }

        #musicianInfo .musician_cover_file {
            position: absolute;
            top: 0;
            right: 0;
            width: 150px;
            height: 40px;
            opacity: 0;
            border-radius: 20px;
            cursor: pointer;
        }

        #musicianProfile .profile .indie_setting {
            bottom: 0;
            right: 0;
            width: 25px;
            height: 25px;
            font-size: 25px;
        }

        #musicianProfile .profile .musician_profile_file {
            position: absolute;
            top: 0;
            right: 0;
            width: 150px;
            height: 25px;
            opacity: 0;
            cursor: pointer;
        }

        #musicianProfile .musician_name .indie_setting {
            top: 0;
            right: -30px;
            width: 25px;
            height: 25px;
            font-size: 25px;
        }

        #musicianProfile .sub_title .indie_setting {
            bottom: 0;
            right: -20px;
            width: 15px;
            height: 15px;
            font-size: 15px;
        }

        /* musician name & sub title update */
        #musicianProfile .musician_name_update, #musicianProfile .musician_sub_title_update {
            position: absolute;
            top: 0;
            left: 0;
            width: 0;
            overflow: hidden;
            transition: .2s ease;
        }

        #musicianProfile .musician_name_update {
            height: 30px;
        }

        #musicianProfile .musician_sub_title_update {
            height: 20px;
        }

        #musicianName, #musicianSubTitle {
            border: none;
            padding: 0 5px;
            border-radius: 5px;
            box-shadow: 0 0 10px #eeeeee;
        }

        #musicianName {
            width: 315px;
            height: 30px;
            font-size: 25px;
        }

        #musicianSubTitle {
            width: 400px;
            height: 20px;
            font-size: 20px;
        }

        #musicianProfile .btn {
            position: absolute;
            top: 0;
            right: 0;
            width: 48px;
            padding: 0 10px;
            border-radius: 5px;
            margin-left: 5px;
            border: none;
            box-shadow: 0 0 10px #cccccc;
        }

        #musicianProfile .musician_name_update .btn {
            height: 30px;
        }

        #musicianProfile .musician_sub_title_update .btn {
            height: 20px;
        }

        #musicianProfile .btn.update {
            right: 53px;
        }
    </style> <!-- musician info setting -->
    <style>
        #contentAux {
            background: transparent;
        }

        #memberList {
            width: 990px;
            min-height: 100px;
            padding: 20px;
            overflow: hidden;
            border-bottom: 2px dashed #424242;
        }

        #memberList .list {
            width: 100%;
            overflow-x: auto;
            transition: .2s ease;
        }

        #memberList h2 {
            /*border-bottom: 1px solid #424242;*/
            margin: 20px auto;
            /*padding: 5px;*/
            font-size: 25px;
            font-weight: 700;
        }

        #memberList h2 i {
            cursor: pointer;
        }

        #memberList ul {
            height: 100px;
            overflow: hidden;
        }

        #memberList li {
            position: relative;
            width: 90px;
            height: 90px;
            margin-right: 5px;
            border: 5px solid #eeeeee;
            border-radius: 50px;
            float: left;
            text-align: center;
            line-height: 100px;
            overflow: hidden;
            transition: .2s ease;
        }

        #memberList li > i {
            font-size: 25px;
            color: #424242;
            transition: .2s ease;
        }

        #memberList li:hover {
            border-color: #aaaaaa;
        }

        #memberList li:hover i {
            color: #eeeeee;
        }

        #memberList img {
            width: 90px;
        }

        #memberList .cover {
            position: absolute;
            top: 0;
            left: 0;
            width: 90px;
            height: 90px;
            border-radius: 50px;
            color: transparent;
            text-align: center;
            line-height: 90px;
            transition: .5s ease;
        }

        #memberList li:hover .cover {
            background: rgba(255, 255, 255, .8);
            border-color: #0099cc;
            color: #0099cc;
        }

        #memberList a {
            position: absolute;
            display: block;
            width: 100px;
            height: 100px;
        }
    </style> <!-- member list -->
    <style>
        #indieTab {
            /*background: red;*/
            width: 1000px;
            min-height: 100px;
            /*overflow: hidden;*/
            margin-top: 20px;
        }

        #indieTab h3 {
            margin: 10px 0;
            font-size: 20px;
            text-align: left;
        }

        #indieTab .tab_list {
            /*background: blue;*/
            padding: 5px 0;
            border-bottom: 1px solid #424242;
        }

        #indieTab .tab_list ul {
            /*background: green;*/
            width: 1000px;
            height: 40px;
        }

        #indieTab .tab_list li {
            /*background: yellow;*/
            background: #dddddd;
            width: 70px;
            height: 40px;
            float: left;
            margin-right: 5px;
            text-align: center;
            line-height: 40px;
            box-shadow: 0 0 1px #424242;
            cursor: pointer;
        }

        #indieTab .tab_list li.on {
            background: #99cccc;
            color: #0099cc;
        }

        #indieTab .indie_tab {
            display: none;
            position: relative;
            width: 990px;
            padding: 5px;
            text-align: center;
        }

        #indieTab .indie_content_main {
            display: block;
        }
    </style> <!-- indie tab -->
    <style>
        #musicianNotice {
            position: relative;
            top: -5px;
            left: -5px;
            width: 1000px;
            min-height: 40px;
            padding: 20px 0 0;
        }

        #musicianNotice .notice:before {
            position: absolute;
            top: -30px;
            left: 20px;
            display: block;
            content: '';
            border: 15px solid transparent;
            border-bottom: 15px solid #eeeeee;
        }

        #musicianNotice .notice {
            background: #eeeeee;
            position: relative;
            top: 0;
            left: 0;
            display: block;
            width: 960px;
            min-height: 40px;
            padding: 20px;
            font-size: 20px;
            font-weight: bold;
            line-height: 25px;
            /*box-shadow: 0 0 1px #424242;*/
            border-radius: 20px;
        }

        #musicianNotice .notice em {
            font-size: 12px;
        }

        #musicianNotice .notice_setting {
            position: absolute;
            bottom: 10px;
            right: 10px;
            display: block;
            font-size: 30px;
            cursor: pointer;
        }

        #musicianNotice .musician_notice_update {
            position: absolute;
            top: 20px;
            left: 50%;
            z-index: 1;
            background: #eeeeee;
            width: 0;
            height: 125px;
            padding-top: 20px;
            border-radius: 20px;
            box-shadow: 0 0 1px #424242;
            margin-left: -500px;
            overflow: hidden;
            opacity: .9;
            transition: .5s ease;
        }

        #musicianNoticeWord {
            width: 960px;
            height: 75px;
            padding: 0;
            border: none;
            border-radius: 10px;
            font-family: "NotoSansKR", sans-serif;
            font-size: 20px;
            font-weight: bold;
            text-align: center;
            resize: none;
            outline: none;
            overflow: scroll;
        }

        #musicianNotice .btn {
            width: 80px;
            height: 30px;
            border: none;
            border-radius: 10px;
            margin: 5px 0;
        }

        #rookie_contents {
            margin-top: 20px;
            width: 1000px;
            min-height: 1200px;
            position: relative;
            margin-bottom:20px;
        }

        #rookie_contents h3 {

            font-weight: 700;
            font-size: 25px;
        }

        #rookie_contents ul {
            float: left;
            /*margin: 90px 0;*/
            width: 1000px;
            min-height: 1200px;
            position:relative;
        }
        #rookie_contents ul li{
            float:left;
            width: 230px;
            height: 260px;
            margin-right: 20px;
            margin-bottom:40px;
            position:relative;
        }
        .card_rookie_contents {
            position: absolute;
            height:260px;

        }

    </style>
</head>
<body>

<div id="wrap">
    

	<c:import url="../view/template/header.jsp"></c:import>

    <h1 class="screen_out">Rookie Detail Page</h1>
    <div id="content">
        <div id="contentAux">
            <div id="musicianInfo">
                    <span class="musician_cover">
                        <img src="../img/rookie/FreshKJ3.jpg"  class="bg" alt="soran_background_image"/>
                    
                        </span>
                    </span>
                <div id="musicianProfile">
                        <span class="profile">
                            <img src="../img/rookie/FreshKJ2.jpg" alt="soran"/>

                            </span>
                        </span>
                    <span class="musician_name">
                            <em>FRESH KIWI JUICE</em>
                            <span class="indie_setting" data-setting="musicianName" title="뮤지션명 변경">
                                <i class="fa fa-gear"></i>
                            </span>
                            <div class="musician_name_update">
                                <form action="" method="post">
                                    <!--  <input id="musicianName" name="name" maxlength="33"
                                           placeholder="musician name enter"/>
                                    <button class="btn update">변경</button>
                                    <button class="btn cancel" type="reset">취소</button>-->
                                </form>
                            </div>
                        </span>
                    <span class="sub_title">
                            <em>도회의 낭만이 듬뿍 묻어나는, </em>
                            <span class="indie_setting" data-setting="subTitle" title="소개글 변경">
                                <i class="fa fa-gear"></i>
                            </span>
                            <div class="musician_sub_title_update">
                                <form action="" method="post">
                                    <input id="musicianSubTitle" name="name" maxlength="100"
                                           placeholder="musician introduction enter"/>
                                    <button class="btn update">변경</button>
                                    <button class="btn cancel" type="reset">취소</button>
                                </form>
                            </div>
                        </span>
                </div> <!-- // #musicianProfile -->
                <div class="btn_fan">
                    <i class="fa fa-heart" title="팬되기"></i>
                    <span class="fan_num">팬 <em>1000</em> 명</span>
                </div>
                <div id="indieSettingBtn" title="정보수정">
                    <i class="fa fa-gear"></i>
                </div>
            </div> <!-- // #musicianInfo -->
            <div id="memberList">
                <h2>Member List </h2>
                <div class="list">
                    <ul style="width: 525px"> <!-- width 값 변수처리 : 105*(x+1) -->
                        <li>
                            <img src="../img/rookie/FreshKJ2.jpg" alt="FKJ">
                            <span class="cover"><a href=""></a>French</span>
                        </li>
                      
                        <!-- add member & band 
                        <li>
                            <i class="fa fa-plus"></i>
                            <span class="cover"><a href=""></a>추가</span>
                        </li>-->
                    </ul>
                </div> <!-- // .list -->
            </div> <!-- // #memberList -->
            <div id="indieTab">

                <div class="indie_tab indie_content_main">
                    <div id="musicianNotice">
                            <span class="notice">
                                6월 22일 이태원 cakeshop과 합정 롤링홀에서 공연이 있습니다! 같이 즐겨요 !
                                <p>
                                 - <em>FKJ</em>
                                </p>
                            </span><!--  
                        <span class="notice_setting">
                                <i class="fa fa-gear" title="공지사항 변경"></i>
                            </span>
                        <div class="musician_notice_update">
                            <form action="" method="post">
                                <textarea id="musicianNoticeWord" value="" maxlength="100"
                                          placeholder="musician notice"></textarea>
                             
                            </form>
                            -->
                        </div>
                        
                    </div> <!-- // #musicianNotice -->

                    <div id="rookie_contents">
                        <h3>CONTENTS</h3>
                        <ul>
                           <li>
                                <div class="card_rookie_contents">
                                    <a class="cover">
                                        <div class="like"><i class="fa fa-heart"></i>152</div>
                                        <div class="view"><i class="fa fa-eye"></i>266</div>
                                        <div class="comments"><i class="fa fa-comment-o"></i>3</div>
                                    </a>
                                    <div class="sort"><i class="fa fa-headphones">

                                    </i></div>
                                    <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                                    <img class="contents_rep_image bg" src="../img/rookie/FreshKJ1.jpg"><!--//contents_rep_image-->
                                    <div class="contents_title">
                                        <em class="overflow"> Instant Need (Original Mix)</em>
                                        <strong>Electronica</strong>
                                        <p class="overflow">Chilling under a tree for some time now</p>
                                    </div><!--//contents_title-->
                                </div><!--//card_rookie_contents-->
                            </li>
                            <li>
                                <div class="card_rookie_contents">
                                    <a class="cover">
                                        <div class="like"><i class="fa fa-heart"></i>63</div>
                                        <div class="view"><i class="fa fa-eye"></i>166</div>
                                        <div class="comments"><i class="fa fa-comment-o"></i>0</div>
                                    </a>
                                    <div class="sort"><i class="fa fa-headphones">

                                    </i></div>
                                    <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                                    <img class="contents_rep_image bg" src="../img/rookie/french1.jpg"><!--//contents_rep_image-->
                                    <div class="contents_title">
                                        <em class="overflow"> Cloud Nine (FKJ Remix)</em>
                                        <strong>Electronica</strong>
                                        <p class="overflow">Baby, but I'm good
Got that pocket soul but I know</p>
                                    </div><!--//contents_title-->
                                </div><!--//card_rookie_contents-->
                            </li>
                             <li>
                                <div class="card_rookie_contents">
                                    <a class="cover">
                                        <div class="like"><i class="fa fa-heart"></i>263</div>
                                        <div class="view"><i class="fa fa-eye"></i>663</div>
                                        <div class="comments"><i class="fa fa-comment-o"></i>5</div>
                                    </a>
                                    <div class="sort"><i class="fa fa-headphones">

                                    </i></div>
                                    <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                                    <img class="contents_rep_image bg" src="../img/rookie/french1.jpg"><!--//contents_rep_image-->
                                    <div class="contents_title">
                                        <em class="overflow"> Carelessness</em>
                                        <strong>Electronica</strong>
                                        <p class="overflow">You love when I jump beats like</p>
                                    </div><!--//contents_title-->
                                </div><!--//card_rookie_contents-->
                            </li>
                             <li>
                                <div class="card_rookie_contents">
                                    <a class="cover">
                                        <div class="like"><i class="fa fa-heart"></i>25</div>
                                        <div class="view"><i class="fa fa-eye"></i>274</div>
                                        <div class="comments"><i class="fa fa-comment-o"></i>0</div>
                                    </a>
                                    <div class="sort"><i class="fa fa-headphones">

                                    </i></div>
                                    <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                                    <img class="contents_rep_image bg" src="../img/rookie/french2.jpg"><!--//contents_rep_image-->
                                    <div class="contents_title">
                                        <em class="overflow"> Instant Need</em>
                                        <strong>Electronica</strong>
                                        <p class="overflow">And I've been down for the music, for the money</p>
                                    </div><!--//contents_title-->
                                </div><!--//card_rookie_contents-->
                            </li>
                             <li>
                                <div class="card_rookie_contents">
                                    <a class="cover">
                                        <div class="like"><i class="fa fa-heart"></i>132</div>
                                        <div class="view"><i class="fa fa-eye"></i>166</div>
                                        <div class="comments"><i class="fa fa-comment-o"></i>0</div>
                                    </a>
                                    <div class="sort"><i class="fa fa-headphones">

                                    </i></div>
                                    <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                                    <img class="contents_rep_image bg" src="../img/rookie/french3.jpg"><!--//contents_rep_image-->
                                    <div class="contents_title">
                                        <em class="overflow"> Drops (Feat. Tom Bailey)</em>
                                        <strong>Pop</strong>
                                        <p class="overflow">But my sound ain't no bit diss</p>
                                    </div><!--//contents_title-->
                                </div><!--//card_rookie_contents-->
                            </li>
                             <li>
                                <div class="card_rookie_contents">
                                    <a class="cover">
                                        <div class="like"><i class="fa fa-heart"></i>23</div>
                                        <div class="view"><i class="fa fa-eye"></i>263</div>
                                        <div class="comments"><i class="fa fa-comment-o"></i>2</div>
                                    </a>
                                    <div class="sort"><i class="fa fa-headphones">

                                    </i></div>
                                    <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                                    <img class="contents_rep_image bg" src="../img/rookie/french4.jpg"><!--//contents_rep_image-->
                                    <div class="contents_title">
                                        <em class="overflow"> Go Back Home</em>
                                        <strong>Electronica</strong>
                                        <p class="overflow">So, I've been laying in this shade</p>
                                    </div><!--//contents_title-->
                                </div><!--//card_rookie_contents-->
                            </li>
                             <li>
                                <div class="card_rookie_contents">
                                    <a class="cover">
                                        <div class="like"><i class="fa fa-heart"></i>33</div>
                                        <div class="view"><i class="fa fa-eye"></i>262</div>
                                        <div class="comments"><i class="fa fa-comment-o"></i>3</div>
                                    </a>
                                    <div class="sort"><i class="fa fa-headphones">

                                    </i></div>
                                    <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                                    <img class="contents_rep_image bg" src="../img/rookie/french3.jpg"><!--//contents_rep_image-->
                                    <div class="contents_title">
                                        <em class="overflow"> Skyline</em>
                                        <strong>Pop</strong>
                                        <p class="overflow">And I know that you like it</p>
                                    </div><!--//contents_title-->
                                </div><!--//card_rookie_contents-->
                            </li>
                             <li>
                                <div class="card_rookie_contents">
                                    <a class="cover">
                                        <div class="like"><i class="fa fa-heart"></i>32</div>
                                        <div class="view"><i class="fa fa-eye"></i>46</div>
                                        <div class="comments"><i class="fa fa-comment-o"></i>3</div>
                                    </a>
                                    <div class="sort"><i class="fa fa-headphones">

                                    </i></div>
                                    <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                                    <img class="contents_rep_image bg" src="../../img/rookie/FreshKJ1.jpg"><!--//contents_rep_image-->
                                    <div class="contents_title">
                                        <em class="overflow"> Why Are There Boundaries</em>
                                        <strong>Electronica</strong>
                                        <p class="overflow">In the shade, in the shade</p>
                                    </div><!--//contents_title-->
                                </div><!--//card_rookie_contents-->
                            </li>
                            
                             <li>
                                <div class="card_rookie_contents">
                                    <a class="cover">
                                        <div class="like"><i class="fa fa-heart"></i>152</div>
                                        <div class="view"><i class="fa fa-eye"></i>236</div>
                                        <div class="comments"><i class="fa fa-comment-o"></i>3</div>
                                    </a>
                                    <div class="sort"><i class="fa fa-video-camera">

                                    </i></div>
                                    <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                                    <img class="contents_rep_image bg" src="../img/rookie/french4.jpg"><!--//contents_rep_image-->
                                    <div class="contents_title">
                                        <em class="overflow"> Die With A Smile</em>
                                        <strong>Pop</strong>
                                        <p class="overflow">Baaabyy, ba-aby
Oh oooh baby</p>
                                    </div><!--//contents_title-->
                                </div><!--//card_rookie_contents-->
                            </li>
                            <li>
                                <div class="card_rookie_contents">
                                    <a class="cover">
                                        <div class="like"><i class="fa fa-heart"></i>142</div>
                                        <div class="view"><i class="fa fa-eye"></i>166</div>
                                        <div class="comments"><i class="fa fa-comment-o"></i>1</div>
                                    </a>
                                    <div class="sort"><i class="fa fa-video-camera">

                                    </i></div>
                                    <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                                    <img class="contents_rep_image bg" src="../img/rookie/french2.jpg"><!--//contents_rep_image-->
                                    <div class="contents_title">
                                        <em class="overflow">Better Give U Up</em>
                                        <strong>Pop</strong>
                                        <p class="overflow">OU BETTER TRUST ME BABY</p>
                                    </div><!--//contents_title-->
                                </div><!--//card_rookie_contents-->
                            </li>
                            <li>
                                <div class="card_rookie_contents">
                                    <a class="cover">
                                        <div class="like"><i class="fa fa-heart"></i>132</div>
                                        <div class="view"><i class="fa fa-eye"></i>176</div>
                                        <div class="comments"><i class="fa fa-comment-o"></i>9</div>
                                    </a>
                                    <div class="sort"><i class="fa fa-video-camera">

                                    </i></div>
                                    <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                                    <img class="contents_rep_image bg" src="../img/rookie/french3.jpg"><!--//contents_rep_image-->
                                    <div class="contents_title">
                                        <em class="overflow"> Open The Door (Original Mix)</em>
                                        <strong>Electronica</strong>
                                        <p class="overflow">I could give a fuck because I like it in the shade</p>
                                    </div><!--//contents_title-->
                                </div><!--//card_rookie_contents-->
                            </li>
                            <li>
                                <div class="card_rookie_contents">
                                    <a class="cover">
                                        <div class="like"><i class="fa fa-heart"></i>12</div>
                                        <div class="view"><i class="fa fa-eye"></i>26</div>
                                        <div class="comments"><i class="fa fa-comment-o"></i>0</div>
                                    </a>
                                    <div class="sort"><i class="fa fa-video-camera">

                                    </i></div>
                                    <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                                    <img class="contents_rep_image bg" src="../img/rookie/french4.jpg"><!--//contents_rep_image-->
                                    <div class="contents_title">
                                        <em class="overflow"> Learn To Fly (Feat. Jordan Rakei) (Original Mix)</em>
                                        <strong>Electronica</strong>
                                        <p class="overflow">While I'm singing, I'm craving released from the trees and the shade</p>
                                    </div><!--//contents_title-->
                                </div><!--//card_rookie_contents-->
                            </li>
                               <li>
                                <div class="card_rookie_contents">
                                    <a class="cover">
                                        <div class="like"><i class="fa fa-heart"></i>152</div>
                                        <div class="view"><i class="fa fa-eye"></i>266</div>
                                        <div class="comments"><i class="fa fa-comment-o"></i>3</div>
                                    </a>
                                    <div class="sort"><i class="fa fa-video-camera">

                                    </i></div>
                                    <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                                    <img class="contents_rep_image bg" src="../img/rookie/FreshKJ1.jpg"><!--//contents_rep_image-->
                                    <div class="contents_title">
                                        <em class="overflow"> Waiting</em>
                                        <strong>Electronica</strong>
                                        <p class="overflow">Don't keep me in the shades, yea!</p>
                                    </div><!--//contents_title-->
                                </div><!--//card_rookie_contents-->
                            </li>
                               <li>
                                <div class="card_rookie_contents">
                                    <a class="cover">
                                        <div class="like"><i class="fa fa-heart"></i>182</div>
                                        <div class="view"><i class="fa fa-eye"></i>466</div>
                                        <div class="comments"><i class="fa fa-comment-o"></i>5</div>
                                    </a>
                                    <div class="sort"><i class="fa fa-video-camera">

                                    </i></div>
                                    <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                                    <img class="contents_rep_image bg" src="../img/rookie/french1.jpg"><!--//contents_rep_image-->
                                    <div class="contents_title">
                                        <em class="overflow"> Unchained (Original Mix)</em>
                                        <strong>Electronica</strong>
                                        <p class="overflow">Vincent Fenton, better known by his stage name </p>
                                    </div><!--//contents_title-->
                                </div><!--//card_rookie_contents-->
                            </li>
                     
                           
                        </ul>
                    </div><!--//rookie contents -->

                </div> <!-- // .indie_content_main -->

            </div> <!-- // #indieTab -->
        </div> <!-- // #contentAux -->
    </div> <!-- // #content -->
</div> <!-- // #wrap -->



	<c:import url="../view/template/footer.jsp"></c:import>

<script src="../../js/jquery-3.2.1.min.js"></script>
<script src="../js/jquery.smoothwheel.js"></script>
<script>
    var $settingBtn = $("#indieSettingBtn i");
    var $indiesetting = $(".indie_setting");
    $settingBtn.click(function () {
        $settingBtn.toggleClass("fa-pencil");
        if ($settingBtn.hasClass("fa-pencil")) {
            $indiesetting.fadeIn(100);
        } else {
            $indiesetting.fadeOut(100);
        }
    });

    /* member list scroll */
    $("#memberList .list").on('mousewheel', function (e) {
        var wheelDelta = e.originalEvent.wheelDelta;
        if (wheelDelta > 0) {
            console.log("up");
            $(this).smoothWheel().scrollLeft(-wheelDelta + $(this).scrollLeft());
        } else {
            console.log("down");
            $(this).smoothWheel().scrollLeft(-wheelDelta + $(this).scrollLeft());
        }
    });
</script> <!-- indie info & member list -->
<script>
    var $noticeSetting = $("#musicianNotice .notice_setting");
    var $noticeUpdate = $("#musicianNotice .musician_notice_update");

    $noticeSetting.click(function () {
        $noticeUpdate.css("width", 1000).find("#musicianNoticeWord").focus();
    });
    $noticeUpdate.find(".cancel").click(function () {
        $noticeUpdate.css("width", 0);
    });

    var $video = $(".video");
    var $videoI = $video.find("i");
    var $videoPlay = $video.find(".video_play");
    $("#latestVideo li").click(function () {
        var $this = $(this);
        $video.css({
            "height": 360,
            "padding": 30
        });
        $videoPlay.css("height", 360);
        $videoI.show();
        var src = $this.find(".video_default").find("source").attr("src");
        $video.find(".video_play").attr("src", src);
    });

    $(".video i").click(function () {
        $video.find(".video_play").attr("src", "");
        $video.css({
            "height": 0,
            "padding": 0
        });
        $videoPlay.css("height", 0);
        $videoI.hide();
    });
</script> <!-- main tab_video -->
<script>
    var $body = $("body");

    function snsRemoveClass() {
        $snsDetail.removeClass("on");
        $snsWriteForm.removeClass("on");
        $body.css("overflow", "hidden");
    }

    var $snsWriteForm = $(".sns_write_form");
    $(".btn_sns_write").click(function () {
        snsRemoveClass();
        $snsWriteForm.addClass("on");
    })
    $snsWriteForm.find("i").click(function () {
        $snsWriteForm.removeClass("on");
        $body.css("overflow", "visible");
    })

    var $snsDetail = $("#snsDetail");
    $(".btn_content_view em").click(function () {
        var no = $(this).attr("data-snsNo");
        snsRemoveClass();
        $snsDetail.addClass("on");
    })
    $snsDetail.find("i").click(function () {
        $snsDetail.removeClass("on");
        $body.css("overflow", "visible");
    })
</script> <!-- sns tab -->
<script>
    $(".sns_refresh").click(function () {
        alert("sns refresh");
    })
</script>
</body>
</html>