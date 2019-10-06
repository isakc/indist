<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>albumDetail</title>

	<c:import url="../view/template/link.jsp"></c:import>
    <style>
        body{
            font-family: "Noto Sans KR",sans-serif;
            font-size:13px;
        }
        /* albums topBtn 설정변경 2017-06-16 박은기 추가 */
        #topBtn{
            width: 60px;
            height: 60px;
            background-color: #99cccc;
            text-decoration: none;
            text-align: center;
            color: white;
            line-height: 60px;
            display: block;
            position: fixed;
            bottom: 10px;
            right: 110px;
        }
        #header{
            width: 100%;
            height: 70px;
            background-color: #99cccc;
            position: fixed;
            z-index: 999;
        }
        #content {
            position: relative; /* 170607_1532_추가_심온 */ /* 170608_1552_수정_심온_position:absolute_position:relative */
            width: 100%;
            min-height: 500px;
            padding-top: 70px; /* 170609_1639_추가_심온 */
        }

        /* wrapAlbum (컨텐츠 부분) start */
        #wrapAlbum{
            width:1000px;
            margin:auto;
        }
        /* 앨범 요약정보, 가격정보 CSS 시작 */
        .inner_album_purchase{
            width: 1000px;
            height:330px;
            padding:30px 0 0 0;
        }
        .store_album_thumb{
            width:330px;
            height:330px;
            display: inline-block;
        }
        .store_album_thumb>img{
            width:330px;
            height: 330px;
        }
        .store_album{
            width:620px;
            height: 330px;
            display: inline-block;
            padding-left: 50px;
            overflow: hidden;
            line-height: 1.4;
        }
        .musician{
            font-size: 18px;
            font-weight: 700;
            color: #9CC;
            padding: 10px 10px 5px 0;
        }
        .title_album, .title_artist,.title_album_desc{
            font-size: 18px;
            font-weight: 700;
            color: #cccccc;
            padding-bottom: 15px;
        }
        .title_album_desc{
            padding-top:30px;
        }
        .desc_subject{
            color: #ccc;
            text-transform: uppercase;
            margin-right: 10px;
            display: inline-block;
            font-weight: 700;
        }
        .desc_info{
            display: inline-block;
        }
        .store_album_info dl{
            padding-bottom:5px;
        }
        /* 수량 설정 CSS 시작 */
        .desc_price_title{
            color:#424242;
            margin-right: 30px;
            font-size: 15px;
            font-weight: 600;
            display: inline-block;
            padding-top:10px;
        }
        .desc_album_price{
            display: inline-block;
            font-weight: 600;
            color:#F44336;
            font-size: 18px;
        }
        /******************* 유효성검사 추가 해야됨 ********************/
        .ea_album{
            text-align: right;
            width: 30px;
            height: 12px;
            border: 3px solid #99cccc;
            display: inline-block;
        }
        /***** 유효성 숫자만 사용 추가 2017-06-16 박은기 *****/
        .msg_alert{
            display: none;
        }
        .msg_alert.on {
            display: block;
            color: red;
            position: absolute;
            top: 43px;
            right: -110px;
        }/* 06-20-수정 박은기 */
        /***** 유효성 숫자만 사용 추가 2017-06-16 박은기 *****/
        .box_ea {
            display: inline-block;
            width: 15px;
            height: 20px;
            position: relative;
            top: 5px;
            left: -70px;
            text-align: center;
            line-height: 10px;
            cursor: pointer;
        }/* 06-20 박은기 수정 */
        .box_ea #up{
            width: 15px;
            height: 10px;
        }
        #up:active, #down:active{
            color:#0099cc;
        }
        .box_ea #down{
            width: 15px;
            height: 10px;
        }
        .box_ea div>i{
            font-size: 15px;
        }
        .box_ea_album {
            position: relative;
            display: inline-block;
            width: 110px;
        }/* 06-20 박은기 수정*/
        .box_ea_input{
            width:40px;
            padding-top:10px;
        }
        .desc_ea { /* 06-20-박은기 수정 */
            display: inline;
            position: relative;
            left: -70px;
            top: 2px;
        } /* 수량 설정 CSS 끝 */
        .box_submit{
            padding-top:10px;
            display: inline-block;
        }
        .box_submit button{
            width:100px;
            height:50px;
            border: none;
            background: #99cccc;
            font-size: 18px;
            font-weight: 600;
            color:#fff;
            margin-right: 10px;
            cursor: pointer;
        }
        .box_submit button:focus{
            outline: none;
        }
        .box_submit button:nth-child(1){
            background:#969696;
        }
        .btn_likes{
            display: inline-block;
            font-weight: 600;
            font-size: 30px;
            color:#424242;
            padding-left: 15px;
        }
        .btn_likes>i, .btn_likes a{
            color:#F44336;
            font-weight: 600;
            font-size: 30px;
        }
        /* 앨범 요약정보, 가격정보 CSS 끝 */


        /* 앨범 상세정보 동영상 CSS 시작 */
        .desc_album{
            width:1000px;
        }
        .desc_artist{
            padding-bottom:15px;
        }
        .desc_album h3,h2,.link_musician{
            width:365px;
            padding-bottom:15px;
        }
        .title_artist_desc{
            font-size: 16px;
            font-weight: 700;
            color: #424242;
            width: 360px;
            padding:20px 0 20px 5px;
        }
        .title_artist_desc:after{
            content: ' ';
            display: inline-block;
            width: 260px;
            height: 15px;
            margin-left: 30px;
            background-image: url("/img/album/etc/title_pattern.png");
        }

        .link_musician a{
            display: inline-block;
            background: #969696;
            color: #ffffff;
            font-weight: 500;
            text-decoration: none;
            padding:3px;
            border-radius: 10px;
            margin-right:3px;
            transition:.98s ease;
        }/* 뮤지션 개인 밴드링크 */
        .link_musician a:hover{
            background-color: #0099cc;
        }
        .desc_album_detail{
            width:365px;
            float:left;
            padding-bottom: 20px;
        }
        .desc_album_detail p,strong{
            color:#616161;
            line-height: 1.6;
        }
        .desc_album_detail dl{
            padding-bottom:3px;
        }
        .video_album{
            width:625px;
            padding : 0 0 0 10px;
            float:right;
        }
        /* 앨범 상세정보 동영상 CSS 끝 */

        /* Album Track CSS 시작 */
        #indieMusic {
            /*background: blue;*/
            clear: both;
            width: 990px;
            min-height: 200px;
            padding:40px 0 40px 0;
        }
        #indieMusic span {
            font-weight: bold;
        }
        #indieMusic table {
            width: 990px;
            margin: 10px 0;
            color: #424242;
        }
        #indieMusic a {
            text-decoration: none;
            color: #424242;
        }
        #indieMusic a:hover {
            text-decoration: underline;
        }
        #indieMusic th, #indieMusic td {
            padding: 5px;
            border: 1px solid #eeeeee;
            text-align: center;
            line-height: 19px;
        }
        #indieMusic .align_left {
            padding-left: 15px;
            text-align: left;
        }
        #indieMusic .title_song {
            display: inline-block;
            width: 45px;
            height: 19px;
            background:rgb(153, 204, 204);
            text-align: center;
            color:#fff;
            line-height: 19px;
            border-radius: 8px;
            font-size: 15px;
        }
        #indieMusic .album_name{
            text-align: center;
        }
        /* Album Track CSS 끝 */

        /* 아티스트의 다른 앨범 CSS 시작*/
        .inner_different_album{
            width:1000px;
        }
        .inner_different_album>h2, #innerQnA>h2,#indieMusic>h2{
            font-size:25px;
            font-weight: bold;
            color:#969696;
        }
        /* paging */
        .paging{
            width:300px;
            bacground:red;
            text-align: center;
            margin:auto;
        }
        .paging span{
            cursor: pointer;
            font-size: 18px;
            font-weight: 300;
            margin-right: 10px;
            color:#424242;
        }
        .paging span:nth-child(2){
            font-weight: 900;
        }


        /* 앨범 리스트 CSS 시작*/
        #listAlbum{
            width:1000px;
            min-height: 250px;
            /*background-color: greenyellow;*/
        }
        #listAlbum ul{
            width:1000px;
            background-color: blue;
        }
        .list_album{
            width: 200px;
            height: 250px;
            float: left;
            position: relative;
            transition: .7s ease;
        }
        .desc_album_musician{
            font-size: 15px;
            font-weight: 700;
            color: #0099cc;
        }
        .desc_album_title{
            font-size: 16px;
            font-weight: 700;
            color:#757575;
        }
        /*앨범 리스트 hover 했을시 색변경*/
        .list_album:hover{
            background:#0099cc;
        }
        .list_album:hover .thumb_cover {
            display: block;
        }
        .list_album:hover .inner_album_list{
            background:#0099cc;
        }
        .list_album:hover .desc_album_musician{
            color:#fff;
        }
        .list_album:hover .desc_album_title{
            color:#fff;
        }

        .inner_album_list{
            width: 188px;
            height: 238px;
            position: absolute;
            left: 6px;
            top: 6px;
        }
        #listAlbum a{
            text-decoration: none;
        }
        .thumb_album_list{
            width: 188px;
            height: 188px;
            background: red;
            position: absolute;
            /*top: 5px;*/
        }
        .regdate{
            width:60px;
            height:60px;
            background: #99cccc;
            color:#fff;
            line-height: 28px;
            font-size: 15px;
            font-weight: 800;
            text-align: center;
            opacity: .9;
            position: absolute;
            z-index: 4;
        }
        .thumb_album{
            width:188px;
            height:188px;
            position:absolute;
        }
        /*앨범 hover시 가격 커버*/
        .thumb_cover{
            width: 188px;
            height: 188px;
            background-color: #fff;
            opacity: .6;
            color: #424242;
            position: absolute;
            z-index: 5;
            font-size: 20px;
            font-weight: 600;
            top: 6px;
            left:6px;
            display: none;
        }

        /* 가격 커버의 아이콘 a요소 속성 변경*/
        .thumb_cover a{
            text-decoration: none;
            color: #424242;
        }

        /*앨범 커버 - 추천, 장바구니추가 아이콘*/
        .desc_like_box{
            width:178px;
            height:94px;
            text-align: right;
            line-height: 30px;
            padding: 0 10px 0 0 ;
        }
        /* 아이콘 버튼 */
        .desc_like_box button{
            background:olivedrab;
            text-align: center;
            background:transparent;
            border: none;
            cursor: pointer;
        }
        .desc_like_box button:focus,
        .selectBox_album:focus,
        .btn_album_search:focus,
        #albumSearch:focus{
            outline: none;
        }
        .desc_like_box button:active{
            width:25px;
            height:25px;
        }
        .desc_like{
            font-size: 18px;
            color:#e53935;
        }

        /* 앨범리스트 장바구니 아이콘 */
        .desc_cart{
            color: #424242;
            display: inline-block;
            position: absolute;
            top: 33px;
            right: 28px;
            font-size: 18px;
        }
        /* 앨범 커버 가격 */
        .desc_price{
            width:188px;
            height:94px;
            text-align: center;
            line-height: 94px;
            font-size: 22px;
            font-weight: 700;
        }
        .desc_price>a{
            color:#fff;
        }
        /* 앨범리스트_곡명_아티스트명 */
        .desc_album_list{
            position:absolute;
            bottom:0;
            text-align: center;
            width:188px;
            height:40px;
            font-size: 15px;
            font-weight: 600;
        }
        /* 앨범 리스트 CSS end*/

        /* 아티스트의 다른 앨범 CSS 끝*/

        /* QnA CSS 시작 */
        #innerQnA {
            clear: both;
            padding-top:30px;
        }
        #boxQnAList {
            width: 1000px;
            position: relative;
        }

        .tit_QnA_group {
            display: block;
            float: left;
            text-align: center;
            height: 30px;
            line-height: 30px;
            font-size: 18px;
            border-top: 1px solid #BDBDBD;
            border-bottom: 1px solid #BDBDBD;
        }

        .tit_QnA_number {
            width: 100px;
        }

        .tit_QnA_cate {
            width: 150px;
        }

        .tit_QnA_title {
            width: 450px;
        }
        .tit_QnA_writer {
            width: 100px;
        }

        .tit_QnA_regDate {
            width: 150px;
        }

        .tit_QnA_hit {
            width: 50px;
        }
        .txt_QnA_group {
            display: block;
            float: left;
            height: 30px;
            line-height: 30px;
            text-align: center;
            border-bottom: 1px solid #BDBDBD;
            padding-top: 5px;
            padding-bottom: 5px;
        }
        .txt_QnA_number {
            width: 100px;
        }
        .txt_QnA_cate {
            width: 150px;
            color: #DD9292;
        }
        .txt_QnA_title {
            width: 450px;
            text-align: left;
        }
        .txt_QnA_title a {
            margin-left: 20px;
            text-decoration: none;
            color: #000;
        }
        .txt_QnA_title a:hover {
            text-decoration: underline;
        }
        .txt_QnA_writer {
            width: 100px;
        }
        .txt_QnA_regDate {
            width: 150px;
        }
        .txt_QnA_hit {
            width: 50px;
        }
        .box_QnA_answer {
            position: relative;
            width: 700px;
            padding-left: 300px;
            display: none;
        }
        .txt_QnA_answer {
            width: 100px;
            text-align: right;
            font-size: 16px;
            position: absolute;
            left: 120px;
            top: 10px;
        }
        .txt_QnA_content {
            width: 700px;
            min-height: 40px;
            line-height: 1.5em;
        }
        .box_QnA_answer.on {
            display: block;
        }
        #boxQnAList>ul>li {
            overflow: hidden;
        }
        .btn_QnA{
            width: 70px;
            height: 35px;
            background: #99cccc;
            color: #fff;
            font-size: 15px;
            font-weight: 900;
            border: 1px solid #ccc;
            position: relative;
            left: 930px;
            top: 10px;
            cursor: pointer;
        } /* 0621 추가*/
        /* QnA CSS 끝 */
    </style>
</head>
<body>
	<c:import url="../view/template/header.jsp"></c:import>

<div id="content">
    <div id="wrapAlbum">
        <h2 class="screen_out">앨범구매정보</h2>
        <div class="inner_album_purchase">
            <div class="store_album_thumb"><img src="/img/album/albumCover/Klaps_cover_Good%20Night.png"/></div><!--
          --><div class="store_album">
            <h2 class="screen_out">앨범소개</h2>
            <h2 class="musician">클랩스</h2>
            <h1 class="title_album">Good Night</h1>
            <div class="store_album_info">
                <dl>
                    <dt class="desc_subject">RELEASE DATE</dt>
                    <dd class="desc_info">2017.06.09</dd>
                </dl>
                <dl>
                    <dt class="desc_subject">LABLE</dt>
                    <dd class="desc_info">Klaps Company</dd>
                </dl>
                <dl>
                    <dt class="desc_subject">GENRE</dt>
                    <dd class="desc_info">락</dd>
                </dl>
            </div><!-- store album info end-->
            <div class="store_album_price">
                <dl class="box_ea_album">
                    <dt class="desc_price_title">구매수량</dt>
                    <dd class="box_ea_input">
                        <input type="text" id="ea" name="ea" class="ea_album" value="1"/>
                    </dd>
                    <span class="msg_alert"></span>
                </dl>
                <div class="box_ea">
                    <div id="up"><i class="fa fa-caret-up"></i></div>
                    <div id="down"><i class="fa fa-caret-down"></i></div>
                </div><!-- box ea end -->
                <div class="desc_ea">
                    개
                </div>
                <dl>
                    <dt class="desc_price_title">판매가</dt>
                    <dd class="desc_album_price">15,700</dd>
                    <span>원</span>
                </dl>
                <div class="box_submit">
                    <button>장바구니</button>
                    <a href="/cart"><button>구매하기</button></a>
                    <div class="btn_likes"><a href="#"><i class="fa fa-heart-o"></i></a> <span>150</span></div>
                </div>
            </div>
        </div><!-- store album end -->
        </div><!-- inner_album_purchase end -->
        <h2 class="screen_out">앨범 설명</h2>
        <div class="desc_album">
            <div class="desc_artist">
                <h2 class="title_artist_desc">ARTISTS</h2>
                <h3><span class="musician">클랩스</span><span class="title_artist">Klaps</span></h3>
                <div class="link_musician">
                    <a href="">김태한</a>
                    <a href="">김태훈</a>
                    <a href="">장지용</a>
                </div>
            </div><!-- desc_artist end -->
            <div class="desc_album_detail">
                <strong style="font-weight: bold">
                    이별한 사람들을 위한 클랩스의 위로<br/>
                    ‘클랩스’ 특유의 몽환적인 섬세한 감수성과 폭발적인 절규가 느껴지는 신곡 “Good Night”
                </strong>
                <br/>
                <p>
                    2015년 3월 24일 첫 싱글 앨범 [The Klaps] 발매 후 2015년 8월 11일 첫 EP [KONFUSION]을 발매를 기점으로 누구보다 바쁘게 지냈던 ‘클랩스’는
                    지난해
                    2016년 11월 XTM 스트릿 농구프로그램 리바운드 OST [Go Outside]와 [Close To You]를 발매 후, 대한민국 건장한 성인 남성이라면 어쩔수 없는 2017년
                    3월
                    군 입대와 함께 디지털 싱글 앨범 [Good Night]을 발매한다.
                    ‘클랩스’의 4번째 디지털 싱글인 [Good Night]는 보컬 ‘김태훈’이 직접 작사, 작곡, 편곡에는 클랩스 멤버들이 참여했다. 지난해 12월 인천 부개역 올래공연장에서 열린
                    홍대에서
                    인천으로 Vol.6 에서 처음 공개되었던 노래로 팬들의 뜨거운 관심과 호응을 받았던 곡이다.
                    [Good Night]은 덤덤하게 떨리는 김태훈의 목소리로 떠난 이를 생각하며 시작한다. 연인이든 가족이든 친구, 반려견, 주변 사람이든 어떤 의미로서든 어떤 관점에서든 사랑했었던
                    사람이
                    사라지면서 느끼는 감정은 굉장히 외롭고 초라하기도 하고 복잡하기도 하고 미칠듯이 그립기도 아프기도 한다. 그런 감정을 천천히 눌러가며 고조시키며 절규하는 것이 이 곡의 포인트가
                    아닐까.
                    몽환적인 기타라인과 코러스로 따듯함을 주기도 하며 거칠기도한 감정을 조금씩 억누르기도 하되, 끊임없이 생각나고, 생각하고, 아파하고, 그리워하고, 불안해하고, 미칠 것 같은 감정을
                    담고
                    싶었다고 한다. 후회와 아쉬움을, 이별의 아픔을 얘기하는 클랩스의 신곡 “Good Night”.
                </p><!-- 앨범 설명 -->
                <br/>
                <h3 class="title_album_desc">Good Night</h3>
                <dl>
                    <dt class="desc_subject">Wirtten by</dt>
                    <dd class="desc_info">김태훈</dd>
                </dl>
                <dl>
                    <dt class="desc_subject">Composed by</dt>
                    <dd class="desc_info">김태훈</dd>
                </dl>
                <dl>
                    <dt class="desc_subject">Arranged by</dt>
                    <dd class="desc_info">클랩스 (Klaps)</dd>
                </dl>
                <dl>
                    <dt class="desc_subject">Vocal</dt>
                    <dd class="desc_info">김태훈</dd>
                </dl>
                <dl>
                    <dt class="desc_subject">Bass</dt>
                    <dd class="desc_info">강진현</dd>
                </dl>
                <dl>
                    <dt class="desc_subject">Guitar</dt>
                    <dd class="desc_info">장지용</dd>
                </dl>
                <dl>
                    <dt class="desc_subject">Drum</dt>
                    <dd class="desc_info">김태한</dd>
                </dl>
                <dl>
                    <dt class="desc_subject">Chorus</dt>
                    <dd class="desc_info">김태훈</dd>
                </dl>
                <dl>
                    <dt class="desc_subject">Recorded by</dt>
                    <dd class="desc_info">이근영 @ Soul Studio</dd>
                </dl>
                <dl>
                    <dt class="desc_subject">Mix by</dt>
                    <dd class="desc_info">이근영</dd>
                </dl>
                <dl>
                    <dt class="desc_subject">Mastering by</dt>
                    <dd class="desc_info">이근영</dd>
                </dl>
            </div><!-- desc album detail end -->
            <div class="video_album">
                <video src="/video/album/Klaps_goodNight.mp4" controls
                       poster="/img/album/albumCover/Klaps_cover_Good%20Night.png"
                       style="width: 625px">

                </video>
            </div><!-- video album end -->
        </div><!-- desc album end -->

        <div class="inner_album_track">
            <div id="indieMusic">
                <h2><span>Good Night - TRACK LIST</span></h2>
                <table border="1">
                    <caption class="screen_out">Good Night TRACK LIST</caption>
                    <thead>
                    <tr>
                        <th><input type="checkbox" class="box_checked_all"></th>
                        <th>번호</th>
                        <th>곡명</th>
                        <th>아티스트</th>
                        <th>앨범</th>
                    </tr>
                    </thead>
                    <tfoot>
                       <tr>
                           <td colspan="5"><a href="#" id="addPlayer">플레이리스트 담기</a></td>
                       </tr>
                       </tfoot>
                    <tbody>
                    <tr>
                        <td><input type="checkbox"  class="box_checked"/></td>
                        <td>1</td>
                        <th class="align_left"><span class="title_song">TITLE</span> <a href="">Good Night</a></th>
                        <td><a href="">클랩스(Klaps)</a></td>
                        <td class="align_left album_name"><a href="">The Klaps</a></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div><!-- inner album track end -->
        <div class="inner_different_album">
            <h2>이 아티스트의 다른앨범 더보기</h2>
            <div id="listDifferentAlbum">
                <!-- 앨범 리스트 시작 -->
                <div id="listAlbum">
                    <ul>
                        <li class="list_album">
                            <a href="#">
                                <div class="inner_album_list">
                                    <div class="thumb_album_list">
                                        <div class="regdate">2015 0811</div>
                                        <img class="thumb_album" src="/img/album/albumCover/Klaps_cover_Konfusion.png"
                                             alt="앨범커버"/>
                                    </div>
                                    <dl class="desc_album_list">
                                        <dd class="desc_album_musician">Klaps</dd>
                                        <dt class="desc_album_title">Konfusion</dt>
                                    </dl>
                                </div>
                            </a>
                            <div class="thumb_cover">
                                <div class="desc_like_box">
                                    <form name="like" action="#">
                                        <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                                        <span> 0</span>
                                    </form>
                                    <form name="addCart" action="#">
                                        <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                                    </form>
                                </div>
                                <a href="" class="desc_price">
                                    <div class="desc_price">
                                        <span>￦13,500</span>
                                    </div>
                                </a>
                            </div><!-- thumb_cover end -->
                        </li>
                        <li class="list_album">
                            <a href="#">
                                <div class="inner_album_list">
                                    <div class="thumb_album_list">
                                        <div class="regdate">2015 0324</div>
                                        <img class="thumb_album" src="/img/album/albumCover/Klaps_cover_TheKlaps.png"
                                             alt="앨범커버"/>
                                    </div>
                                    <dl class="desc_album_list">
                                        <dd class="desc_album_musician">Klaps</dd>
                                        <dt class="desc_album_title">The Klaps</dt>
                                    </dl>
                                </div>
                            </a>
                            <div class="thumb_cover">
                                <div class="desc_like_box">
                                    <form name="like" action="#">
                                        <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                                        <span> 0</span>
                                    </form>
                                    <form name="addCart" action="#">
                                        <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                                    </form>
                                </div>
                                <a href="" class="desc_price">
                                    <div class="desc_price">
                                        <span>￦12,500</span>
                                    </div>
                                </a>
                            </div><!-- thumb_cover end -->
                        </li>
                    </ul>
                </div>
                <!-- 앨범리스트 end -->
            </div><!-- listDifferentAlbum end -->
            <div class="paging">
                <span><i class="fa fa-chevron-left"></i></span>
                <span> 1 </span>
                <span><i class="fa fa-chevron-right"></i></span>
            </div>
        </div><!-- inner_different_album -->
        <!-- QnA 폼 -->
        <div id="innerQnA">
            <h2>QnA</h2>
            <div id="boxQnAList">
                <ul>
                    <li>
                        <div class="tit_QnA_group tit_QnA_number"><span>번호</span></div>
                        <div class="tit_QnA_group tit_QnA_cate"><span>분류</span></div>
                        <div class="tit_QnA_group tit_QnA_title"><span>제목</span></div>
                        <div class="tit_QnA_group tit_QnA_writer"><strong>작성자</strong></div>
                        <div class="tit_QnA_group tit_QnA_regDate"><time>작성일</time></div>
                        <div class="tit_QnA_group tit_QnA_hit"><span>조회</span></div>
                    </li>

                    <!-- 질문 -->
                    <li>
                        <div class="txt_QnA_group txt_QnA_number"><span>1</span></div>
                        <div class="txt_QnA_group txt_QnA_cate"><span>배송문의</span></div>
                        <div class="txt_QnA_group txt_QnA_title">
                            <a href="#">문의드립니다.[1]</a>
                        </div>
                        <div class="txt_QnA_group txt_QnA_writer"><span>장문복</span></div>
                        <div class="txt_QnA_group txt_QnA_regDate"><span>2016-12-23</span></div>
                        <div class="txt_QnA_group txt_QnA_hit"><span>1</span></div>
                    </li>

                    <!-- 답변 -->
                    <li class="box_QnA_answer">
                        <span class="txt_QnA_answer">ㄴ답변</span>
                        <p class="txt_QnA_content">
                            답변내용답변내용답변내용답변내용답변내용답변내용답변내용답변내용답변내용답변내용답변내용답변내용답변내용답변내용답변내용답변내용답변내용답변내용답변내용답변내용답변내용답변내용답변내용답변내용답변내용답변내용답변내용</p>
                    </li>

                    <li>
                        <div class="txt_QnA_group txt_QnA_number"><span>2</span></div>
                        <div class="txt_QnA_group txt_QnA_cate"><span>배송문의</span></div>
                        <div class="txt_QnA_group txt_QnA_title">
                            <a href="#">문의22.[1]</a>
                        </div>
                        <div class="txt_QnA_group txt_QnA_writer"><span>장문복</span></div>
                        <div class="txt_QnA_group txt_QnA_regDate"><span>2016-12-25</span></div>
                        <div class="txt_QnA_group txt_QnA_hit"><span>1</span></div>
                    </li>

                    <!-- 답변 -->
                    <li class="box_QnA_answer">
                        <span class="txt_QnA_answer">ㄴ답변</span>
                        <p class="txt_QnA_content">답변내용</p>
                    </li>
                    <li>
                        <div class="txt_QnA_group txt_QnA_number"><span>3</span></div>
                        <div class="txt_QnA_group txt_QnA_cate"><span>환불</span></div>
                        <div class="txt_QnA_group txt_QnA_title">
                            <a href="#">문의요.[1]</a>
                        </div>
                        <div class="txt_QnA_group txt_QnA_writer"><span>장문복</span></div>
                        <div class="txt_QnA_group txt_QnA_regDate"><span>2016-12-27</span></div>
                        <div class="txt_QnA_group txt_QnA_hit"><span>3</span></div>
                    </li>

                    <!-- 답변 -->
                    <li class="box_QnA_answer">
                        <span class="txt_QnA_answer">ㄴ답변</span>
                        <p class="txt_QnA_content">답변내용</p>
                    </li>
                </ul>
            </div>
            <button class="btn_QnA">글쓰기</button>
            <div class="paging">
                <span><i class="fa fa-chevron-left"></i></span>
                <span> 1 </span>
                <span> 2 </span>
                <span> 3 </span>
                <span> 4 </span>
                <span> 5 </span>
                <span><i class="fa fa-chevron-right"></i></span>
            </div>
        </div><!-- QnA 폼 끝 -->
    </div><!-- wrapAlbum end -->
</div><!-- content end -->
<!-- footer start -->


	<c:import url="../view/template/footer.jsp"></c:import>

<script src="/js/jquery-3.2.1.min.js"></script>
<script src="/js/jquery.number.min.js"></script><!-- 가격에 콤마( , ) 붙여주는 library -->
<script>
    var albums = 1;
    var $price = $(".desc_album_price");
    //2017-06-13 박은기 앨범수량 증가 감소
    //2017-06-20 박은기 수정(유효성)
    $(".box_ea div").click(function () {
        var num = $(this).index();
        albums = $(".ea_album").val();

        $msg.removeClass("on");
        if(num==0){
            $(".ea_album").val(++albums);
        }else if(num==1&&parseInt(albums)>1){
            // alert(albums)
            $(".ea_album").val(--albums);
        }

        //input value
        // var ea = $(".ea_album").val();

        //  var $price = $(".desc_album_price");
        //  var albumPrice = parseInt($price.text());

//        $price.text((albums*price)+"원");

        console.log(albums);
    });

    $(".ea_album").change(function () {
        albums = $(this).val();
        console.log(albums);
    });

    //2017-06-16 박은기 구매수량 유효성 검사(미완성)
    //2017-06-20 박은기 완성!
    var $eaAlbum = $(".ea_album");
    var $msg = $(".msg_alert");
    var regNum = /^[0-9]{1,9999}$/;
    $eaAlbum.keyup(function () {
        var $this = $(this);
        var eaVal = $this.val();
        var result = regNum.test(eaVal);
        var $transEa = $(".box_ea >div");
        if(result){
            $msg.removeClass("on");
        }else{
            $msg.addClass("on").text("숫자만입력해주세요");
            $("#ea").prop("value",1);
        }
    });

    //2017-06-13 박은기 장바구니
    $(".box_submit button").eq(0).click(function () {
        alert("장바구니로 이동했습니다.");
    });

    //최성문 QnAForm
    $(".txt_QnA_title>a").click(function () {
        $(this).parents("li").next().toggleClass("on");
    });

 // 2017-06-14 박은기 곡 리스트 체크박스 prop('checked') - true / false 변경
 // 2017-06-15 박은기(수정함)
 // 2017-06-22 심온(수정)
     var $mainCheckedAll = $("#indieMusic .box_checked_all"); // 전체 선택
     var $mainChecked = $("#indieMusic .box_checked"); // 개별선택
     $mainCheckedAll.click(function () {
         if ($(this).prop("checked")) {$mainChecked.prop("checked", true);}
         else {$mainChecked.prop("checked", false);}
     });
     $mainChecked.click(function () {
         var result = false;
         for (var i = 0; i < $mainChecked.length; i++) {
             if (!$($mainChecked[i]).prop("checked")) {result = true;}
         } // for end
         if (!result) {$mainCheckedAll.prop("checked", true);}
         else {$mainCheckedAll.prop("checked", false);}
     });

    //좋아요 버튼 클릭시 아이콘 변경, 갯수 변경
    $(".btn_likes>a").click(function () {

        var $this = $(this);
//        alert(parseInt($this.parents(".btn_likes").text()));
        var $i = $this.find("i");
        var count = parseInt($this.next("span").text());

        if($i.hasClass("fa-heart-o")){
            $i.attr("class","fa fa-heart");
            $this.next("span").text(++count);
        }else{
            $i.attr("class","fa fa-heart-o");
            $this.next("span").text(--count);
        }
    });

    //2017-06-15 박은기 수량 변경시 가격 변경 - 완성못함!
    var price = 15700;
    $(".box_ea").click(function () {
        //input value
        var ea = $(".ea_album").val();

        //  var $price = $(".desc_album_price");
        //  var albumPrice = parseInt($price.text());
        $price.text((ea*price));
        $price.number( true, 0 );
    });

    //2017-06-15 연화 footer - topBtn position
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
    });
    
    $("#addPlayer").click(function () {
        window.open("/player", "_blank", 'width=400,height=381, location=no, menubar=no, status=no, titlebar=no, scrollbars=no');
    })
</script>
</body>
</html>