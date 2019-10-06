<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Albums</title>
    
	<c:import url="template/link.jsp"></c:import>
    <!-- nanoscroll css import -->
    <link rel="stylesheet" href="css/nanoscroller.css"/>
    <style>
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
        #wrapContent {
            width: 1000px;
            margin: auto;
        }
        #header {
            width: 100%;
            height: 70px;
            background-color: #99cccc;
            position: fixed;
            z-index: 999;
        }
        /*** contents CSS ***/
        #helpPosition{
            width:1000px;
            margin:auto;
            height:60px;
            z-index: -1;
            display: none;
        }

        #section{
            width:100%;
            height:330px;
            /*background:blueviolet;*/
            margin: auto;
            position:relative;
            transition: .9s ease;
        }

        .thumb_album_t3{
            background-color: burlywood;
        }
        .rank{
            position:absolute;
            width:100px;
            height:100px;
            background-color: #99cccc;
            z-index: 4;
            opacity: .9;
            color: #ffffff;
            font-weight: 800;
            font-size:40px;
            text-align: center;
            line-height: 100px;
        }
        #listAlbumT3{
            width:1000px;
            height:330px;
            margin:auto;
        }
        #listAlbumT3 li{
            position: relative;
            width:305px;
            height:305px;
            display: inline-block;
            margin: 12px 0 0 20px;
            float: left;
            background-color: red;
            box-shadow: 1px 12px 15px 0 rgba(0, 0, 0, 0.24), 0 17px 50px 0 rgba(0, 0, 0, 0.19);
            transition:.9s ease;
        }
        #listAlbumT3 li:hover{
            box-shadow:none;
        }
        .desc_album{
            font-size: 15px;
            font-weight: 700;
            position:absolute;
            bottom:0;
            width:305px;
            height: 50px;
            background: #ccc;
            opacity: .8;
            text-align: center;
            box-shadow: 0px -1px 5.5px 1px rgba(255, 255, 255, 0.3);
        }
        .desc_album dt{
            padding:6px 0 0 0;
        }
        .desc_album a{
            text-decoration: none;
        }
        .desc_album a:hover{
            text-decoration: underline;
            color:#fff;
        }
        .desc_musician>a, .desc_album_musician{
            font-size: 15px;
            font-weight: 700;
            color: #0099cc;
        }
        .desc_album_name{
            padding-top:8px;
        }
        .desc_album_name>a, .desc_album_title{
            font-size: 16px;
            font-weight: 700;
            color:#757575;
        }
        .thumb_rank_album{
            position: absolute;
            display: inline-block;
            width:305px;
            height:305px;
        }
        .btn_next{
            position: absolute;
            width: 25px;
            height: 30px;
            background-color: #424242;
            border: 1px solid #9E9E9E;
            border-radius: 50%;
            display: inline-block;
            top: 150px;
            font-size: 25px;
            line-height: 30px;
            text-align: center;
            color: #fff;
            cursor: pointer;
            z-index: 100;
            opacity: .7;
            box-shadow: 1px 1px 15px 1px rgba(255, 255, 255, 0.23);
            transition: .50s ease;
        }
        .left{
            padding-right:5px;
            left:50px;
        }
        .right{
            padding-left:5px;
            right: 50px;
        }
        .btn_next:hover{
            opacity: 1;
        }
        /* 2017-06-19 박은기 fadeToggel 수정 */
        .wrap_rank{
            width:100%;
            height:330px;
        }
        .lnb_suggest{
            width: 100%;
            height: 330px;
            margin: auto;
            display: none;
            background-size: cover;
            position: absolute;
            top: 0;
        }
        /* 2017-06-19 박은기 fadeToggel 수정 */
        #tabGenres{
            width:1000px;
            height:50px;
            margin:auto;
            padding-bottom:25px;
            position: relative;
        }
        .list_genre{
            width:700px;
            height:40px;
            background:rgb(153, 204, 204);
            position:absolute;
            top:10px;
            box-shadow: 4px 2px 5px 0 rgba(0, 0, 0, 0.16), 4px 2px 10px 0 rgba(0, 0, 0, 0.12);
        }
        .list_genre li{
            width:75px;
            height: 30px;
            background: #ffffff;
            text-align: center;
            line-height: 30px;
            font-size: 15px;
            color:#969696;
            font-weight:400;
            float: left;
            margin:5px 0 0 0;
            border-right:1px solid #E0E0E0;
            cursor: pointer;
            transition: .30s ease;
        }
        .list_genre li:hover{
            background: #0099cc;
            color:#fff;
        }
        .list_genre li.active{
            background:#969696;
            color:#fff;
        }

        .list_genre li:first-child{
            margin-left: 9px;
        }
        .list_genre li:last-child{
            border-right: none;
        }
        /* content wrap*/
        #wrapContent{
            width:1000px;
            margin:auto;
        }
        /* 앨범 검색창 */
        .form_genres{
            position: absolute;
            width:301px;
            right: 0;
            top: 10px;
            background: #99cccc;
            height: 40px;
            /*padding: 0 6px 0 3px;*/
            box-shadow: 5px 2px 5px 0 rgba(0, 0, 0, 0.16), 5px 2px 10px 0 rgba(0, 0, 0, 0.12);
        }

        /* 최신순 구매순 select 창 */
        .selectBox_album{
            width: 100px;
            height: 30px;
            border: 3px solid #969696;
            border-radius: 10px;
            margin: 5px 0 0 0;
            color: #fff;
            background: #ccc;
            font-weight: 600;
            font-size: 14px;
            text-align: right;
            padding-left: 5px;
        }
        .btn_album_search{
            border:none;
            cursor: pointer;
            background-color: #fff;
        }

        /* 앨범 검색*/
        .box_search_album {
            position: absolute;
            top: 0;
            right: 0;
            width: 205px;
            height: 35px;
            float: right;
        }
        .box_search_album>div {
            position: absolute;
            right: 0;
            top:3px;
            min-width: 15px;
            height: 24px;
            padding: 0 15px 5px 10px;
            line-height: 24px;
            border: 3px solid #969696;
            border-radius: 34px;
            background-color: #fff;
        }

        /* 앨범검색 input 창*/
        #albumSearch {
            position: relative;
            right: 0;
            width: 0;
            height: 23px;
            font-size: 13px;
            border: none;
            padding: 0;
            transition: .2s ease;
        }
        .box_search_album>div:hover #albumSearch, #albumSearch:focus {
            width: 135px;
            padding: 0 5px;
            padding-right: 20px;
            /*border: 1px solid #424242;*/
        }

        /* 앨범검색 search Btn */
        .box_search_album>div button {
            background: transparent;
            position: absolute;
            width: 20px;
            height: 20px;
            top: 5px;
            right: 15px;
            border: none;
            cursor: pointer;
        }
        /* 검색창 div */
        #indieAutoFrame {
            position: absolute;
            top: 40px;
            left: 3px;
            z-index: 5; /* 2017-06-21 박은기 z-index 수정 */
            background: white;
            width: 345px;
            min-height: 0;
            padding: 0;
            box-shadow: 0 0 5px #424242;
            border-radius: 0 5px 10px 0;
            transition: .2s ease;
            display: none;
        }
        #indieAutoFrame.on {
            display: block;
            padding: 10px;
        }

        #indieAutoFrame h3 {
            padding: 5px;
            font-size: 18px;
            font-weight: bold;
        }
        #indieAutoFrame .search_indie,
        #indieAutoFrame .search_album,
        #indieAutoFrame .search_music {
            width: 345px;
            padding: 5px 0;
        }
        #indieAutoFrame .search_album {
            border-top: 1px solid #cccccc;
            border-bottom: 1px solid #cccccc;
        }
        #indieAutoFrame li {
            position: relative;
            width: 335px;
            height: 50px;
            padding: 0 5px;
            overflow: hidden;
            transition: .1s ease;
        }
        #indieAutoFrame li:hover {
            background: rgba(0,0,0,.1);
        }
        #indieAutoFrame a {
            position: absolute;
            top: 0;
            left: 0;
            width: 345px;
            height: 60px;
            color: #424242;
        }
        #indieAutoFrame img {
            position: absolute;
            top: 5px;
            left: 10px;
            width: 40px;
            height: 40px;
            box-shadow: 0 0 1px #424242;
        }
        #indieAutoFrame .musician_info,
        #indieAutoFrame .album_info,
        #indieAutoFrame .music_info {
            position: absolute;
            left: 50px;
            width: 295px;
            height: 50px;
        }

        #indieAutoFrame .search_indie .musician_name,
        #indieAutoFrame .search_album .album_name,
        #indieAutoFrame .search_music .music_name {
            position: absolute;
            top: 10px;
            left: 10px;
            max-width: 295px;
            font-size: 15px;
        }
        #indieAutoFrame .search_indie .debut_genre,
        #indieAutoFrame .search_album .musician_name,
        #indieAutoFrame .search_music .musician_name {
            position: absolute;
            top: 30px;
            left: 10px;
            max-width: 295px;
            font-size: 10px;
        }
        /* 검색창 div */

        /* 앨범 리스트 CSS 시작*/
        #listAlbum, #listAlbumGenrePop, #listAlbumSelectSales, #listAlbumSearchResult{
            width:1000px;
            display: none;
        }
        #listAlbum.on, #listAlbumGenrePop.on, #listAlbumSelectSales.on, #listAlbumSearchResult.on{
            display: block;
        }
        #listAlbum ul , #listAlbumGenrePop ul, #listAlbumSelectSales ul, #listAlbumSearchResult ul{
            width:1000px;
            background-color: blue;
        }
        .title_search{
            padding:30px 0 10px 10px;
            border-top:2px solid #ccc;
            font-size:18px;
            font-weight: bold;
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
        #listAlbum a,#listAlbumGenrePop a, #listAlbumSelectSales a #listAlbumSearchResult a{
            text-decoration: none;
        }
        .thumb_album_list{
            width: 188px;
            height: 188px;
            background: red;
            position: absolute;
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
            /*background: olive;*/
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

        /* 스크롤 내렸을때 mainSuggest slideUp */
        #header.scroll, #tabGenres.scroll{
            position:fixed;
            z-index:999;
        }
        #tabGenres.scroll{
            top:70px;
        }
        #tabGenres .list_genre.scroll, #tabGenres .form_genres.scroll{
            top:0;
        }
        #helpPosition.scroll{
            display: block;
        }


        /*** musicList CSS ***/
        #indieMusic {
            clear: both;
            width: 990px;
            min-height: 200px;
            padding:20px 0 0 5px;
            display: none;
        }
        #indieMusic.on{
            display: block;
        }
        #indieMusic h3 {
            font-size: 20px;
            text-align: left;
            margin-top: 15px;
        }
        #indieMusic span {
            font-weight: 300;
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

        /*** musicList CSS ***/

        /** 앨범장바구니 CSS **/
        #boxCart {
            width: 72px;
            position: fixed;
            bottom: 80px;
            right: 105px;
            height: 151px;
        }

        #boxCart .btn_cart {
            position: absolute;
            width: 60px;
            height: 60px;
            bottom: -13px;
            left: 10px;
            border: none;
            background-image: url("img/album/etc/cart1.png");
            background-size: 100%;
            background-repeat: no-repeat;
            background-color: transparent;
            cursor: pointer;
        }

        .btn_cart:focus, .cart_sequence_pre:focus, .cart_sequence_next:focus {
            outline: none;
        }

        .btn_cart:active {
            opacity: .7;
        }

        .box_cart {
            width: 70px;
            height: 70px;
            border: 1px solid #ccc;
            display: none;
        }

        .box_cart.focus {
            display: block;
        }

        .list_cart_thumb {
            width: 60px;
            height: 60px;
            margin: 5px;
        }

        .list_cart_thumb a img {
            width: 60px;
            height: 60px;
            background-size: cover;
        }

        .btn_direct {
            display: inline-block;
            height: 20px;
            background: #99cccc;
            text-align: center;
            line-height: 20px;
            position: relative;
            bottom: 0;
            text-decoration: none;
            color: #fff;
            font-size: 13px;
            transition: .9s ease;
            display: none;
        }

        .nano .nano-pane {
            right: 0;
            background: transparent;
        }

        .nano .nano-slider {
            opacity: .7;
            right: -3px;
            width: 6px;
        }

        .btn_direct.on {
            display: block;
        }

        .btn_direct:focus, .btn_direct:hover {
            background-color: #0099cc;
        }
        .cover_album_desc{
            width: 60px;
            height: 60px;
            position: absolute;
            background: #0099cc;
            font-size: 9px;
            text-align: center;
            font-weight: 700;
            opacity: .8;
            display: none;
        }
        .cover_album_desc.on{
            display: block;
        }
        .cover_album_desc>dl{
            padding-top: 20px;
            color: #fff;
        }
        #alertCart{
            display: inline-block;
            width:20px;
            height: 20px;
            border-radius: 50%;
            background-color:#F44336;
            color:#fff;
            text-align: center;
            line-height: 20px;
            font-size: 10px;
            font-weight: 500;
            position: absolute;
            bottom: 38px;
            right: -5px;
            display: none;
        }
        #alertCart.on{
            display: block;
        }
        /** 앨범장바구니 CSS **/
        /*** contents CSS ***/
    </style>
</head>
<body>

	<c:import url="../view/template/header.jsp"></c:import>

<div id="content">
    <h2 class="screen_out">인기앨범, 추천앨범</h2>
    <div id="section">
        <div class="btn_next left"><i class="fa fa-chevron-left"></i></div>
        <div class="wrap_rank on">
            <ul id="listAlbumT3">
                <li>
                    <div class="thumb_album_t3">
                        <a href="">
                            <div class="rank">1위</div>
                            <img class="thumb_rank_album" src="img/album/albumCover/Sweetpea_cover_그걸로됐어.png" alt="앨범커버"/>
                        </a>
                    </div>
                    <dl class="desc_album">
                        <dt class="desc_musician"><a href="">sweetpea</a></dt>
                        <dd class="desc_album_name"><a href="">그걸로 됬어</a></dd>
                    </dl>
                </li><!-- 1위 -->
                <li>
                    <div class="thumb_album_t3">
                        <a href="">
                            <div class="rank">2위</div>
                            <img class="thumb_rank_album" src="img/album/albumCover/TheVastards_cover_SugarFree.png" alt="앨범커버"/>
                        </a>
                    </div>
                    <dl class="desc_album">
                        <dt class="desc_musician"><a href="">The Vastards</a></dt>
                        <dd class="desc_album_name"><a href="">Sugar Free</a></dd>
                    </dl>
                </li><!-- 2위 -->
                <li>
                    <div class="thumb_album_t3">
                        <a href="">
                            <div class="rank">3위</div>
                            <img class="thumb_rank_album" src="img/album/albumCover/선선한밤_cover_드림랜드.png" alt="앨범커버"/>
                        </a>
                    </div>
                    <dl class="desc_album">
                        <dt class="desc_musician"><a href="">선선한밤</a></dt>
                        <dd class="desc_album_name"><a href="">드림랜드</a></dd>
                    </dl>
                </li><!-- 3위 -->
            </ul>
        </div><!-- wrap_rank end -->
        <a href=""><img class="lnb_suggest" src="img/album/suggest/suggest0.png"/></a>
        <div class="btn_next right"><i class="fa fa-chevron-right"></i></div>
    </div>
    <div id="helpPosition"></div>
    <div id="wrapContent">
        <!-- 장르탭 시작 -->
        <div id="tabGenres">
            <ul class="list_genre">
                <li class="active">All</li>
                <li>Pop</li>
                <li>Rock</li>
                <li>Electronic</li>
                <li>Jazz</li>
                <li>Hip-Hop</li>
                <li>R&B</li>
                <li>Folk</li>
                <li>ETC</li>
            </ul>
            <div class="form_genres">
                <legend class="screen_out" for="select"></legend>
                <select id="select" name="option" class="selectBox_album">
                    <option value="newest" data-id="new">최신순</option>
                    <option value="sales" data-id="sales">구매순</option>
                </select>
                <div class="box_search_album">
                    <div><!-- 검색창 border -->
                        <legend class="screen_out" for="albumSearch">검색어 입력</legend>
                        <input id="albumSearch" type="text" name="txt" placeholder="검색어를 입력해주세요"/>
                        <button class="btn_album_search"><i class="fa fa-search"></i></button>
                    </div><!-- 검색창 border end -->
                </div>
                <div id="indieAutoFrame">
                    <div class="search_music">
                        <h3>곡</h3>
                        <ul>
                            <li>
                                <a href="">
                                    <img src="img/album/albumCover/Klaps_cover_Good%20Night.png" alt=""/>
                                    <div class="music_info">
                                        <span class="music_name ellipsis">Good night</span>
                                        <span class="musician_name ellipsis">클랩스 (Klaps)</span>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="search_album">
                        <h3>앨범</h3>
                        <ul>
                            <li>
                                <a href="">
                                    <img src="img/album/albumCover/Klaps_cover_Good%20Night.png" alt=""/>
                                    <div class="album_info">
                                        <span class="album_name ellipsis">클랩스(Klaps) - Good night</span>
                                        <span class="musician_name ellipsis">클랩스 (Klaps)</span>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div><!-- auto -->
            </div>
        </div>
        <!-- 장르탭 끝 -->

        <!-- 앨범 리스트 시작 -->
        <div id="listAlbum" class="on">
            <ul>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0623</div>
                                <img class="thumb_album" src="img/album/albumCover/치즈스테레오_cover_Cheezstereo.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">치즈스테레오</dd>
                                <dt class="desc_album_title">CheezStereo</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 300</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦14,500</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0609</div>
                                <img class="thumb_album" src="img/album/albumCover/Klaps_cover_Good%20Night.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">Klaps</dd>
                                <dt class="desc_album_title">Good Night</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 150</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦15,700</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0608</div>
                                <img class="thumb_album" src="img/album/albumCover/치즈스테레오_cover_Song18.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">치즈스테레오</dd>
                                <dt class="desc_album_title">CheezStereo</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 112</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦14,500</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0607</div>
                                <img class="thumb_album" src="img/album/albumCover/OnTheStreet_cover_LikeCoffee.png"
                                     alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">OnTheStreet</dd>
                                <dt class="desc_album_title">Like Coffee</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 42</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦17,500</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0605</div>
                                <img class="thumb_album" src="img/album/albumCover/YunDdanDdan_cover_덥딴.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">YunDdanDdan</dd>
                                <dt class="desc_album_title">덥딴</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 91</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦15,000</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0602</div>
                                <img class="thumb_album" src="img/album/albumCover/선선한밤_cover_드림랜드.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">선선한밤</dd>
                                <dt class="desc_album_title">드림랜드</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 72</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦16,400</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0530</div>
                                <img class="thumb_album" src="img/album/albumCover/Ziuk_cover_Origin%20Of%20Life.png"
                                     alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">Ziuk</dd>
                                <dt class="desc_album_title">Origin of life</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 12</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦17,300</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0530</div>
                                <img class="thumb_album" src="img/album/albumCover/EnfanTree_cover_상상.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">EnFanTree</dd>
                                <dt class="desc_album_title">상상</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 55</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦18,000</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0530</div>
                                <img class="thumb_album" src="img/album/albumCover/Doma_cover_이유도없이나는섬으로가네.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">Doma</dd>
                                <dt class="desc_album_title">아무이유없이나는섬으로가네</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 73</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦13,000</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0525</div>
                                <img class="thumb_album" src="img/album/albumCover/Damsonegonbang_cover_내앞에있다.png"
                                     alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">DamSoneGongBang</dd>
                                <dt class="desc_album_title">내앞에있다</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 31</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦11,000</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0524</div>
                                <img class="thumb_album" src="img/album/albumCover/Pihwan_cover_SingForMe.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">Pihwan</dd>
                                <dt class="desc_album_title">Sing for me</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 125</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦16,000</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0522</div>
                                <img class="thumb_album" src="img/album/albumCover/Yoohara_cover_그남자그여자.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">Yoohara</dd>
                                <dt class="desc_album_title">그남자 그여자</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 20</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦12,500</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0518</div>
                                <img class="thumb_album" src="img/album/albumCover/Daoul_cover_도시.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">Daoul</dd>
                                <dt class="desc_album_title">밤의도시</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 12</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦10,500</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0518</div>
                                <img class="thumb_album" src="img/album/albumCover/Samui_cover_춘몽.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">Samui</dd>
                                <dt class="desc_album_title">춘몽</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 22</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦18,000</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0515</div>
                                <img class="thumb_album" src="img/album/albumCover/TheVastards_cover_SugarFree.png"
                                     alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">TheVastards</dd>
                                <dt class="desc_album_title">Sugar Free</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 122</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦14,500</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0513</div>
                                <img class="thumb_album" src="img/album/albumCover/Sweetpea_cover_그걸로됐어.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">Sweetpea</dd>
                                <dt class="desc_album_title">그걸로됐어</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 12</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦10,500</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0510</div>
                                <img class="thumb_album" src="img/album/albumCover/Daoul_cover_도시.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">Bohem</dd>
                                <dt class="desc_album_title">나는나</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 81</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦17,500</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0510</div>
                                <img class="thumb_album" src="img/album/albumCover/OrganicScience_cover_Between.png"
                                     alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">OrganicSience</dd>
                                <dt class="desc_album_title">Between</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 213</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦14,500</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0427</div>
                                <img class="thumb_album" src="img/album/albumCover/Ozic_cover_새벽두시.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">Ozic</dd>
                                <dt class="desc_album_title">새벽두시</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 42</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦18,500</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0424</div>
                                <img class="thumb_album" src="img/album/albumCover/MoonMoon_cover_물감.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">MoonMoon</dd>
                                <dt class="desc_album_title">물감</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 55</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦16,000</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
            </ul>
            <div class="paging">
                <span><i class="fa fa-chevron-left"></i></span>
                <span> 1 </span>
                <span> 2 </span>
                <span> 3 </span>
                <span> 4 </span>
                <span> 5 </span>
                <span><i class="fa fa-chevron-right"></i></span>
            </div>
        </div>
        <div id="listAlbumGenrePop">
            <ul>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0614</div>
                                <img class="thumb_album" src="img/album/albumCover/서교동의밤_cover_밤공기.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">서교동의밤</dd>
                                <dt class="desc_album_title">밤공기</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 300</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦14,500</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0612</div>
                                <img class="thumb_album" src="img/album/albumCover/Nashpeep_cover_Focus%20on%20you.png"
                                     alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">Nashpeep</dd>
                                <dt class="desc_album_title">Focus on you</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 150</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦15,700</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0609</div>
                                <img class="thumb_album" src="img/album/albumCover/Kream_cover_In%20my%20heart.png"
                                     alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">Kream</dd>
                                <dt class="desc_album_title">In my heart</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 112</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦14,500</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0602</div>
                                <img class="thumb_album" src="img/album/albumCover/Night%20Marks_cover_Experience.png"
                                     alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">Night Marks</dd>
                                <dt class="desc_album_title">Experience</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 42</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦17,500</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0602</div>
                                <img class="thumb_album" src="img/album/albumCover/UncleSoul_cover_LoveSong.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">UncleSoul</dd>
                                <dt class="desc_album_title">Love song</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 91</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦15,000</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0601</div>
                                <img class="thumb_album" src="img/album/albumCover/LuvnHate_cover_If%20You%20Ever%20Knew.png"
                                     alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">LuvnHate</dd>
                                <dt class="desc_album_title">If you ever knew</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 72</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦16,400</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0529</div>
                                <img class="thumb_album" src="img/album/albumCover/Janey_cover_Lemonade.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">Janey</dd>
                                <dt class="desc_album_title">Lemonade</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 12</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦17,300</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0526</div>
                                <img class="thumb_album" src="img/album/albumCover/406Project_cover_웃어주세요.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">406Project</dd>
                                <dt class="desc_album_title">웃어주세요</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 55</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦18,000</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0525</div>
                                <img class="thumb_album" src="img/album/albumCover/Silkbel_cover_전국체전.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">Silkbel</dd>
                                <dt class="desc_album_title">전국체전</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 73</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦13,000</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0523</div>
                                <img class="thumb_album" src="img/album/albumCover/Ohnew_cover_좋아해서.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">Ohnew</dd>
                                <dt class="desc_album_title">좋아해서</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 31</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦11,000</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0515</div>
                                <img class="thumb_album" src="img/album/albumCover/Jbro_cover_Grey.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">Jbro</dd>
                                <dt class="desc_album_title">Grey</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 125</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦16,000</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0502</div>
                                <img class="thumb_album" src="img/album/albumCover/OrganicScience_cover_Between.png"
                                     alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">OrganicScience</dd>
                                <dt class="desc_album_title">Between</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 20</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦12,500</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0427</div>
                                <img class="thumb_album" src="img/album/albumCover/Ozic_cover_새벽두시.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">Ozic</dd>
                                <dt class="desc_album_title">새벽두시</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 12</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦10,500</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0425</div>
                                <img class="thumb_album" src="img/album/albumCover/RainyPiano_cover_Symmetry.png"
                                     alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">RainyPiano</dd>
                                <dt class="desc_album_title">Symmetry</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 22</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦18,000</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0515</div>
                                <img class="thumb_album" src="img/album/albumCover/오은지_cover_2017투레빗뮤직VOl.03.png"
                                     alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">오은지</dd>
                                <dt class="desc_album_title">2017투레빗뮤직VOl.03</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 122</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦14,500</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0419</div>
                                <img class="thumb_album" src="img/album/albumCover/Subok_cover_ThatAfrican%20boy.png"
                                     alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">Subok</dd>
                                <dt class="desc_album_title">ThatAfrican boy</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 12</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦10,500</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0411</div>
                                <img class="thumb_album" src="img/album/albumCover/Goonight_cover_그대가봄이야.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">Goonight</dd>
                                <dt class="desc_album_title">그대가 봄이야</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 81</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦17,500</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0322</div>
                                <img class="thumb_album" src="img/album/albumCover/OrganicScience_cover_TheLight.png"
                                     alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">OrganicScience</dd>
                                <dt class="desc_album_title">The light</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 213</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦14,500</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0316</div>
                                <img class="thumb_album" src="img/album/albumCover/Sumsher_cover_평범하게.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">Sumsher</dd>
                                <dt class="desc_album_title">평범하게</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 42</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦18,500</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0315</div>
                                <img class="thumb_album" src="img/album/albumCover/50Kg_cover_전부다줄게.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">50Kg</dd>
                                <dt class="desc_album_title">전부다 줄게</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 55</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦16,000</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
            </ul>
            <div class="paging">
                <span><i class="fa fa-chevron-left"></i></span>
                <span> 1 </span>
                <span> 2 </span>
                <span> 3 </span>
                <span> 4 </span>
                <span> 5 </span>
                <span><i class="fa fa-chevron-right"></i></span>
            </div>
        </div>
        <div id="listAlbumSelectSales">
            <ul>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0513</div>
                                <img class="thumb_album" src="img/album/albumCover/Sweetpea_cover_그걸로됐어.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">Sweetpea</dd>
                                <dt class="desc_album_title">그걸로됐어</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 12</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦10,500</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0515</div>
                                <img class="thumb_album" src="img/album/albumCover/TheVastards_cover_SugarFree.png"
                                     alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">TheVastards</dd>
                                <dt class="desc_album_title">Sugar Free</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 122</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦14,500</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0602</div>
                                <img class="thumb_album" src="img/album/albumCover/선선한밤_cover_드림랜드.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">선선한밤</dd>
                                <dt class="desc_album_title">드림랜드</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 72</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦16,400</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0615</div>
                                <img class="thumb_album" src="img/album/albumCover/Arumi_cover_얼룩덜룩.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">Arumi</dd>
                                <dt class="desc_album_title">얼룩덜룩</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 300</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦14,500</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0526</div>
                                <img class="thumb_album" src="img/album/albumCover/45_cover_SCENE%231.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">45</dd>
                                <dt class="desc_album_title">#SECNE 1</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 150</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦15,700</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0424</div>
                                <img class="thumb_album" src="img/album/albumCover/MoonMoon_cover_물감.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">MoonMoon</dd>
                                <dt class="desc_album_title">물감</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 55</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦16,000</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0617</div>
                                <img class="thumb_album" src="img/album/albumCover/AhnSuzie_cover_다시제주.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">AhnSuzie</dd>
                                <dt class="desc_album_title">다시제주</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 112</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦14,500</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0510</div>
                                <img class="thumb_album" src="img/album/albumCover/Boheme_cover_나는%20나.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">Boheme</dd>
                                <dt class="desc_album_title">나는 나</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 42</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦17,500</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0111</div>
                                <img class="thumb_album" src="img/album/albumCover/Zeebomb_cover_어젯밤길을걷다.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">ZeeBomb</dd>
                                <dt class="desc_album_title">어젯밤 길을 걷다</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 91</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦15,000</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0228</div>
                                <img class="thumb_album" src="img/album/albumCover/YeonHeeDabang_cover_신축빌라.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">YeonHeeDabang</dd>
                                <dt class="desc_album_title">신축빌라</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 12</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦17,300</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0306</div>
                                <img class="thumb_album" src="img/album/albumCover/sunBam_cover_피곤한 주말.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">선선한밤</dd>
                                <dt class="desc_album_title">고요한밤</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 55</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦18,000</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0322</div>
                                <img class="thumb_album" src="img/album/albumCover/SomDaJeong_cover_Lost.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">SomDaJeong</dd>
                                <dt class="desc_album_title">Lost</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 73</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦13,000</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0510</div>
                                <img class="thumb_album" src="img/album/albumCover/OrganicScience_cover_Between.png"
                                     alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">OrganicSience</dd>
                                <dt class="desc_album_title">Between</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 213</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦14,500</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0412</div>
                                <img class="thumb_album" src="img/album/albumCover/BrossFactory_cover_고래의%20숨.png"
                                     alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">BrossFactory</dd>
                                <dt class="desc_album_title">고래의 숨</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 31</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦11,000</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0614</div>
                                <img class="thumb_album" src="img/album/albumCover/Chanxeul_cover_Enter%20the%20void.png"
                                     alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">Chanxeul</dd>
                                <dt class="desc_album_title">Enter The Void</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 20</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦12,500</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0417</div>
                                <img class="thumb_album" src="img/album/albumCover/ContreeGongBang_cover_나도엄마있다.png"
                                     alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">ContreeGongBang</dd>
                                <dt class="desc_album_title">나도 엄마있다</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 12</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦10,500</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0313</div>
                                <img class="thumb_album" src="img/album/albumCover/Headong_cover_사랑받길.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">Headong</dd>
                                <dt class="desc_album_title">사랑받길</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 22</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦18,000</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0601</div>
                                <img class="thumb_album" src="img/album/albumCover/LuvnHate_cover_If%20You%20Ever%20Knew.png"
                                     alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">LuvnHate</dd>
                                <dt class="desc_album_title">If You Ever Knew</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 81</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦17,500</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0524</div>
                                <img class="thumb_album" src="img/album/albumCover/Pihwan_cover_SingForMe.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">Pihwan</dd>
                                <dt class="desc_album_title">Sing for me</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 125</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦16,000</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
                <li class="list_album">
                    <a href="#"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0413</div>
                                <img class="thumb_album" src="img/album/albumCover/RomenticPunch_cover_밤은짧아걸어아가씨야.png"
                                     alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">RomenticPunch</dd>
                                <dt class="desc_album_title">밤은짧아 걸어 아가씨야</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 42</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦18,500</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
            </ul>
            <div class="paging">
                <span><i class="fa fa-chevron-left"></i></span>
                <span> 1 </span>
                <span> 2 </span>
                <span> 3 </span>
                <span> 4 </span>
                <span> 5 </span>
                <span><i class="fa fa-chevron-right"></i></span>
            </div>
        </div>
        <div id="listAlbumSearchResult">
            <div class="title_search">
                앨범(1)
            </div><!-- 검색결과 title_album -->
            <ul>
                <li class="list_album">
                    <a href="album/1"><!-- 앨범 상세링크 -->
                        <div class="inner_album_list">
                            <div class="thumb_album_list">
                                <div class="regdate">2017 0609</div>
                                <img class="thumb_album" src="img/album/albumCover/Klaps_cover_Good%20Night.png" alt="앨범커버"/>
                            </div><!-- 앨범 발행일 -->
                            <dl class="desc_album_list">
                                <dd class="desc_album_musician">Klaps</dd>
                                <dt class="desc_album_title">Good Night</dt>
                            </dl>
                        </div><!-- 앨범 커버사진 -->
                    </a>
                    <div class="thumb_cover">
                        <div class="desc_like_box">
                            <button class="desc_like"><i class="fa fa-heart-o"></i></button>
                            <span> 150</span>
                            <button class="desc_cart"><i class="fa fa-shopping-cart "></i></button>
                        </div><!-- 장바구니 좋아요 버튼 -->
                        <a href="" class="desc_price">
                            <div class="desc_price">
                                <span>￦15,700</span>
                            </div>
                        </a><!-- 앨범 상세페이지 -->
                    </div><!-- thumb_cover end -->
                </li>
            </ul>
        </div>
        <!-- 앨범리스트 end -->
        <div id="indieMusic">
            <div class="title_search">
                곡(1)
            </div>
            <h3><span>클랩스(Klaps) - Good Night</span></h3>
            <table border="1">
                <caption class="screen_out">앨범의 곡</caption>
                <thead>
                <tr>
                    <th><input type="checkbox" class="box_checked_all"></th>
                    <th>순위</th>
                    <th>곡명</th>
                    <th>아티스트</th>
                    <th>앨범</th>
                </tr>
                </thead>
                <tfoot>
                <tr>
                    <td colspan="5"><a href="#">플레이리스트 담기</a></td>
                </tr>
                </tfoot>
                <tbody>
                <tr>
                    <td><input type="checkbox" class="box_checked"/></td>
                    <td>1</td>
                    <th class="align_left"><span class="title_song">TITLE</span> <a href="">Good Night</a></th>
                    <td><a href="">Klaps</a></td>
                    <td class="align_left"><a href="">Good Night</a></td>
                </tr>
                </tbody>
            </table>
        </div> <!-- 검색결과 곡리스트 -->
    </div><!-- wrap end -->

    <!-- boxCart : 앨범 장바구니 -->
    <div id="boxCart">
        <div class="box_cart nano">
            <!--<button class="cart_sequence_pre"></button>-->
            <ul class="nano-content">
                <li class="list_cart_thumb">
                    <a href="#">
                        <div class="cover_album_desc">
                            <dl>
                                <dt>치즈스테레오</dt>
                                <dd>CheezStereo</dd>
                            </dl>
                        </div>
                        <img src="img/album/albumCover/치즈스테레오_cover_Cheezstereo.png"/>
                    </a>
                </li><!-- 장바구니 miniView -->
            </ul>
            <!--<button class="cart_sequence_next"></button>-->
        </div>
        <a class="btn_direct" href="#">바로구매</a>
        <button class="btn_cart"></button>
        <span id="alertCart">1</span>
    </div>
    <!-- boxCart end -->
</div><!-- #contetn end -->

	<c:import url="../view/template/footer.jsp"></c:import>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/jquery.nanoscroller.min.js"></script><!-- nanoScroller.js -->
<script>

    // 2017-06-14 연화 header&footer
    $(window).scroll(function() {
//        if ($(window).scrollTop() == $(document).height() - $(window).height())
//        { alert('End of Window'); }
    })
    var $click=$(".click");
    var $myAlertBox=$(".myAlertBox");
    var $alert=$("#alert");
    var $alertBox=$(".alertBox");
    var $body=$("body");

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


    //2017 - 06 - 08 박은기 main suggest 변경
    // 2017-06-19 박은기 fadeToggel 수정
    $(".btn_next").click(function () {
        $(".wrap_rank").fadeToggle();
        $(".lnb_suggest").fadeToggle();
    });

    //2017 - 06 - 14 박은기 스크롤 내리면 genreList,header fixed

    //스크롤 내렸을때 (함수 선언)
    function scrollDown(){
        $("#header,#tabGenres,.list_genre,.form_genres,#helpPosition").addClass("scroll");
        // $("#section").slideUp();
    }
    //스크롤 올렸을때 (함수 선언)
    function scrollUp() {
        $("#header,#tabGenres,.list_genre,.form_genres,#helpPosition").removeClass("scroll");
        //  $("#section").slideDown();
    }

    // 스크롤 이벤트 실행
    $(window).scroll(function () {
        if($(window).scrollTop()>=230){
            scrollDown();
//            alert("은기님");
        }else{
            scrollUp();
        }
    });

    //2017 - 06 - 14 박은기 장르탭 클릭시 색상변경
    var $genreNav = $(".list_genre li");
    $genreNav.click(function () {
        $genreNav.removeClass("active");
        $(this).addClass("active");
    });

    // 곡리스트 체크박스
    // 2017-06-14 박은기 체크박스 prop('checked') - true / false 변경
    $(".box_checked_all").click(function () {
        var checkValue = $(".box_checked").prop("checked");
        if(checkValue){
            $(".box_checked").prop('checked',false);
        }else{
            $(".box_checked").prop('checked',true);
        }
    });

    //2017-06-15 연화 footer - topBtn position
    var $click=$(".click");
    var $myAlertBox=$(".myAlertBox");
    var $alert=$("#alert");
    var $alertBox=$(".alertBox");
    var $body=$("body");
    var $topBtn = $("#topBtn");
    var $boxCart = $("#boxCart");
    $(window).scroll(function() {
        if ($(window).scrollTop() >= $(document).height() - $(window).height()-80) {
//                alert('End of Window');
            $topBtn.css("bottom","120px");
            $boxCart.css("bottom","190px");
        } else{
            $topBtn.css("bottom","10px");
            $boxCart.css("bottom","80px");
        }
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

    //2017-06-15 박은기 앨범리스트 장바구니 바로가기
    //2017-06-20 박은기 장바구니 추가하기 ( 가짜임 )
    $(".desc_cart").click(function () {
        alert("장바구니로 이동했습니다.");
        $("#alertCart").addClass("on");
    });

    //2017-06-15 박은기 장바구니 바로구매 버튼
    $(".btn_cart").click(function () {
        $(".btn_direct").toggleClass("on");
    });

    //2017-06-15 박은기 장바구니 목록열기
    $(".btn_cart").click(function () {
        $(".box_cart").toggleClass("focus");
        $(".nano").nanoScroller();
        //나노스크롤 - 장바구니 목록 스크롤
    });

    //2017-06-20 박은기 장바구니 목록 hover시 앨범명
    $(".list_cart_thumb").on("mouseover",function () {
        var $cover = $(".cover_album_desc");
        $cover.addClass("on");
    });
    $(".list_cart_thumb").on("mouseout",function () {
        var $cover = $(".cover_album_desc");
        $cover.removeClass("on");
    });


    //2017-06-16 박은기 검색창 keyup 시 곡 리스트 출력 (개발때 바꿔야함!)
    // 리스트 자동 변경 삭제됨 - 페이지 이동으로 변경
    $("#albumSearch").keyup(function () {

    });


    //2016-06-20 박은기 좋아요 버튼 클릭시 아이콘 변경, 갯수 변경
    $(".desc_like").click(function () {
        var $this = $(this);
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

    //2017-06-21 박은기 장르탭 클릭시 장르변경(발표용)
    var $listAll = $("#listAlbum");
    var $listPop = $("#listAlbumGenrePop");
    var $listSales = $("#listAlbumSelectSales");
    var $listSearch = $("#listAlbumSearchResult");
    var $listMusic = $("#indieMusic");

    $(".list_genre li").click(function () {
        var $this = $(this);
        var num = $this.index();
        if(num==0){
            $listAll.addClass("on");
            $listPop.removeClass("on");
            $listSales.removeClass("on");
            $listSearch.removeClass("on");
            $listMusic.removeClass("on");
        }else if(num==1){
            $listAll.removeClass("on");
            $listPop.addClass("on");
            $listSales.removeClass("on");
            $listSearch.removeClass("on");
            $listMusic.removeClass("on");
        }
    });

    //2017-06-21 박은기 최신순, 판매순 (발표용)
    $("#select").change(function () {
        var $this = $(this);
        var value = $this.val();

        if(value=="newest"){
            $listAll.addClass("on");
            $listPop.removeClass("on");
            $listSales.removeClass("on");
            $listSearch.removeClass("on");
            $listMusic.removeClass("on");
            $genreNav.removeClass("active");
            $genreNav.eq(0).addClass("active");
        }else if(value=="sales"){
            $listAll.removeClass("on");
            $listPop.removeClass("on");
            $listSales.addClass("on");
            $genreNav.removeClass("active");
            $genreNav.eq(0).addClass("active");
            $listSearch.removeClass("on");
            $listMusic.removeClass("on");
        }
    });

    //2017-06-20 박은기 검색창 on, block

    $("#albumSearch").keyup(function (e) {
        var $indieAutoFrame = $("#indieAutoFrame");
        var search = $("#albumSearch").val();
        if(search=="good"||search=="Good"||search=="Good Night"||search=="GoodNight"||search=="goodnight"||search=="good night"){
            $indieAutoFrame.addClass("on");
        }else{
            $indieAutoFrame.removeClass("on");
        }
        var code = e.keyCode;
        if(code==13){ // 엔터쳤을때
            $listAll.removeClass("on");
            $listPop.removeClass("on");
            $listSales.removeClass("on");
            $indieAutoFrame.removeClass("on");
            $listSearch.addClass("on");
            $listMusic.addClass("on");
        };
    });
    $(".btn_album_search").click(function () {
        var $indieAutoFrame = $("#indieAutoFrame");
        $listAll.removeClass("on");
        $listPop.removeClass("on");
        $listSales.removeClass("on");
        $indieAutoFrame.removeClass("on");
        $listSearch.addClass("on");
        $listMusic.addClass("on");
    });
</script>
</body>
</html>