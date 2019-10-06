<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>'Sabrina Claudio' 검색결과</title>
    
	<c:import url="template/link.jsp"></c:import>
    <link rel="stylesheet" href="../../css/rookie/rookieCard(수림).css"/>
    <link rel="stylesheet" href="../../css/rookie/rookieSearch(수림).css"/>

    <style>
    body{
    font-family: 'Noto Sans KR', sans-serif;
    }

      .bg{
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
        }
        .overflow{
            overflow: hidden;
            white-space: nowrap;
            text-overflow: ellipsis;
        }
        .cover{
            width: 230px;
            height: 320px;
            position: absolute;
            z-index: 3;
            transition: .4s ease;
        }
        .cover:hover{
            background-color: rgba(100,100,100,.2);
            cursor: pointer;
        }

        .card_rookie_contents{
            width: 230px;
            height: 320px;
            margin: auto;
            position: relative;
            top:5px;
        }
        .rookie_contents li {
            position: relative;
            float: left;
            overflow: hidden;
        }
        .contents_title span{
            font-size: 14px;
            color: #969696;
            display: block;
            position: absolute;
        }
       .contents_title em{
            height: 25px;
            color: black;
            font-size: 20px;
            display: block;

        }
        .contents_title p{
            color: #626262;
            font-size: 12px;
            width:210px;
            height:14px;
            position: absolute;
            z-index: 2;
            top: 70px;
        }
        .contents_title strong{
            position: absolute;
            font-size: 13px;
            top:38px;
            left: 10px;
            color: #969696;
        }
        .cover:hover .like,.cover:hover .view,.cover:hover .comments{
            display: block;
            text-shadow: #999 1px 1px 2px;
        }
        .sort{
            color: #fff;
            width: 35px;
            height: 35px;
            text-align: center;
            line-height: 35px;
            border-radius: 35px;
            font-size: 20px;
            background-color: rgba(0,0,0,.3);
            position: absolute;
            top: 10px;
            left: 10px;
            z-index: 2;
        }
        .contents_rep_image{
            width: 230px;
            height: 160px;
            background-image: url(img/rookie/ex_Rep_Image.jpg) ;
            position: absolute;
            top:0;
            left: 0;
        }
        .contents_title{
            width: 210px;
            height: 80px;
            position: absolute;
            top:160px;
            left: 0;
            padding: 10px;
            background-color: #eef;
            text-align: left;
        }
        .view{
            font-size: 14px;
            color: #eeeeee;
            position: absolute;
            display: none;
            top:140px;
            left: 10px;

        }
        .comments{
            font-size: 14px;
            color: #eee;
            position: absolute;
            display: none;
            top:140px;
            left: 70px;
        }
        .like{

            display: none;
            position: absolute;
            top:140px;
            right: 10px;
            color: #eee;
        }
        .like i{
            color: red;
        }
        .nameCard_rookie{
            position: absolute;
            width: 210px;
            height: 40px;
            background-color: #fff;
            padding: 10px;
            color: #969696;
            z-index: 3;
            bottom:0;
        }
        .nameCard_rookie:hover{
            cursor: pointer;
        }
        .nameCard_rookie a{
            width: 160px;
            height: 20px;
            display: block;
            margin-bottom: 5px;
            color: #99cccc;
            font-size: 20px;
            transition: .2s ease;
        }
        .nameCard_rookie a:hover{
            color: #0099cc;
        }
        .nameCard_rookie_profile{
            width: 50px;
            height: 50px;
            border-radius: 50px;
            border: 1px solid #99cccc;
            position: absolute;
            top: 5px;
            right: 5px;
            background-image: url(img/rookie/ex_Rep_Image.jpg);
        }
        .card_rookie_contents .cover {
            position: absolute;
            top:0;
            left:0;
        }

        #sectionAfterSearch h2 {
            display: block;
            height: 30px;
            width: 1000px;
            text-align: left;
            font-size: 25px;
            line-height: 30px;

        }
    </style>
</head>
<body>
<div id="wrap">
    <h1 class="screen_out">Rookie Search Page</h1>
    

	<c:import url="../view/template/header.jsp"></c:import>
    <div id="content">
        <div id="sectionAfterSearch">
            <div id="boxSearch" class="search"><i class="fa fa-search"></i><input placeholder="검색어를 입력해주세요"/> </div>
            <div id="contentsWrap">
                <div id="boxSearchContents">
                    <h2>컨텐츠 검색 결과</h2>
                    <!--검색결과 제목/ 루키명이 해당되는 컨텐츠 2줄 나열후 더보기 버튼 누르면 추가 2줄 -->
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
                                <img class="contents_rep_image bg" src="../img/rookie/sabrina22.jpg"><!--//contents_rep_image-->
                                <div class="contents_title">
                                    <em class="overflow">Orion's Belt</em>
                                    <strong>Electronica</strong>
                                    <p class="overflow">This mess of emotions got his body questioning
						Is this feeling alright?</p>
                                </div><!--//contents_title-->
                                <div class="nameCard_rookie">
                                    <a class="overflow">Sabrina Claudio</a>
                                    <span><i class="fa fa-users"></i> 194</span>
                                     <img  class="nameCard_rookie_profile bg" src="../../img/rookie/sabrina-claudio.jpg"/><!--//nameCard_rookie_profile-->
                                </div><!--//nameCard_rookie -->
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
                <img class="contents_rep_image bg"src="../../img/rookie/sabrina8.jpg"/><!--//contents_rep_image-->
                <div class="contents_title">
                    <em class="overflow">Unravel Me</em>
                    <strong>R&B</strong>
                    <p class="overflow">Something in the sun or the air Is making me want to run away from here</p>
                </div><!--//contents_title-->
				<div class="nameCard_rookie">
                                    <a class="overflow">Sabrina Claudio</a>
                                    <span><i class="fa fa-users"></i> 194</span>
                                     <img  class="nameCard_rookie_profile bg" src="../../img/rookie/sabrina-claudio.jpg"/><!--//nameCard_rookie_profile-->
                                </div><!--//nameCard_rookie -->
            </div><!--//card_rookie_contents-->
            </li>
                     
                        <li>
                            <div class="card_rookie_contents">
                                <a class="cover" href="/rookie/contents/3">
                                    <div class="like"><i class="fa fa-heart"></i>8838</div>
                                    <div class="view"><i class="fa fa-eye"></i>77299</div>
                                    <div class="comments"><i class="fa fa-comment-o"></i>4</div>
                                </a>
                                <div class="sort"><i class="fa fa-headphones"></i></div>
                                <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                                <img class="contents_rep_image bg"src="../../img/rookie/Sabrina.jpg"/><!--//contents_rep_image-->
                                <div class="contents_title">
                                    <em class="overflow">Confidently Lost</em>
                                    <strong>Pop</strong>
                                    <p class="overflow">You don't define me
                I'm alone but I'm not lonely

                Comfortably indulging

                And trying to get to know me

                I'm just an outline of what I</p>
                                </div><!--//contents_title-->
                                <div class="nameCard_rookie">
                                    <a class="overflow">Sabrina Claudio</a>
                                    <span><i class="fa fa-users"></i> 194</span>
                                  <img  class="nameCard_rookie_profile bg" src="../../img/rookie/sabrina-claudio.jpg"/><!--//nameCard_rookie_profile-->
                                </div><!--//nameCard_rookie -->
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
                                <div class="nameCard_rookie">
                                    <a class="overflow">Sabrina Claudio</a>
                                    <span><i class="fa fa-users"></i> 194</span>
                                   <img  class="nameCard_rookie_profile bg" src="../../img/rookie/sabrina-claudio.jpg"/><!--//nameCard_rookie_profile-->
                                </div><!--//nameCard_rookie -->
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
                                <div class="nameCard_rookie">
                                    <a class="overflow">Sabrina Claudio</a>
                                    <span><i class="fa fa-users"></i> 194</span>
                                    <img  class="nameCard_rookie_profile bg" src="../../img/rookie/sabrina-claudio.jpg"/><!--//nameCard_rookie_profile-->
                                </div><!--//nameCard_rookie -->
                            </div><!--//card_rookie_contents-->
                        </li>
                        <li>
                            <div class="card_rookie_contents">
                                <a class="cover">
                                    <div class="like"><i class="fa fa-heart"></i>253</div>
                                    <div class="view"><i class="fa fa-eye"></i>777</div>
                                    <div class="comments"><i class="fa fa-comment-o"></i>25</div>
                                </a>
                                <div class="sort"><i class="fa fa-video-camera"></i></div>
                                <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                                 <img class="contents_rep_image bg"src="../../img/rookie/sabrina1st.jpg"/><!--//contents_rep_image-->
                                <div class="contents_title">
                                    <em class="overflow">I don't</em>
                                    <strong>Hiphop</strong>
                                    <p class="overflow">I don't wanna do anything else</p>
                                </div><!--//contents_title-->
                                <div class="nameCard_rookie">
                                    <a class="overflow">Sabrina Claudio</a>
                                    <span><i class="fa fa-users"></i> 194</span>
                                    <img  class="nameCard_rookie_profile bg" src="../../img/rookie/sabrina-claudio.jpg"/><!--//nameCard_rookie_profile-->
                                </div><!--//nameCard_rookie -->
                            </div><!--//card_rookie_contents-->
                        </li>
                        <li>
                            <div class="card_rookie_contents">
                                <a class="cover">
                                    <div class="like"><i class="fa fa-heart"></i>73</div>
                                    <div class="view"><i class="fa fa-eye"></i>132</div>
                                    <div class="comments"><i class="fa fa-comment-o"></i>2</div>
                                </a>
                                <div class="sort"><i class="fa fa-video-camera"></i></div>
                                <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                                 <img class="contents_rep_image bg"src="../../img/rookie/sabrina1st.jpg"/><!--//contents_rep_image-->
                                <div class="contents_title">
                                    <em class="overflow">Runnin' Thru Lovers</em>
                                    <strong>Folk</strong>
                                    <p class="overflow">Too much Too late Runnin' Thru lovers</p>
                                </div><!--//contents_title-->
                                <div class="nameCard_rookie">
                                    <a class="overflow">Sabrina Claudio</a>
                                    <span><i class="fa fa-users"></i> 194</span>
                                    <img  class="nameCard_rookie_profile bg" src="../../img/rookie/sabrina-claudio.jpg"/><!--//nameCard_rookie_profile-->
                                </div><!--//nameCard_rookie -->
                            </div><!--//card_rookie_contents-->
                        </li>
                        <li>
                            <div class="card_rookie_contents">
                                <a class="cover">
                                    <div class="like"><i class="fa fa-heart"></i>13</div>
                                    <div class="view"><i class="fa fa-eye"></i>152</div>
                                    <div class="comments"><i class="fa fa-comment-o"></i>1</div>
                                </a>
                                <div class="sort"><i class="fa fa-headphones"></i></div>
                                <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                                 <img class="contents_rep_image bg"src="../../img/rookie/커버16.jpg"/><!--//contents_rep_image-->
                                <div class="contents_title">
                                    <em class="overflow">눈이 소복히 내려</em>
                                    <strong>Ballad</strong>
                                    <p class="overflow">여름인데 눈이 소복히 내려</p>
                                </div><!--//contents_title-->
                                <div class="nameCard_rookie">
                                    <a class="overflow">Sabok sabok</a>
                                    <span><i class="fa fa-users"></i> 11</span>
                                     <img  class="nameCard_rookie_profile bg" src="../../img/rookie/프로필12.jpg"/><!--//nameCard_rookie_profile-->
                                </div><!--//nameCard_rookie -->
                            </div><!--//card_rookie_contents-->
                        </li>
                    </ul>
                </div><!--//boxSearchContents -->

                <div class="more"><i class="fa fa-plus"></i> 더보기</div><!--//more-->

                <div id="boxSearchRookies">
                    <h2>루키 검색 결과</h2>
                    <!--검색결과 해당되는 루키카드 2줄만-->
                    <ul>
                        <li>
                            <div class="card_rookie">
                                <a class="cover" href="contentDetail(수림).html"></a>
                               <img  class="card_rookie_profile bg" src="../../img/rookie/sabrina-claudio.jpg"/><!--//nameCard_rookie_profile-->
                                <em class="overflow">Sabrina Claudio</em>
                                <div class="rookie_genre overflow">Electronica</div><!--//rookie_genre-->
                                <span class="c_audio"><i class="fa fa-headphones"></i> 12</span>
                                <span class="c_video"><i class="fa fa-video-camera"></i> 10</span>
                                <span class="c_follow"><i class="fa fa-users"></i> 194</span>
                            </div><!--//card_rookie -->
                        </li>
                        <li>
                            <div class="card_rookie">
                                <a class="cover" href="contentDetail(수림).html"></a>
                                 <img  class="card_rookie_profile bg" src="../../img/rookie/프로필12.jpg"/><!--//nameCard_rookie_profile-->
                                <em class="overflow">Sabok sabok</em>
                                <div class="rookie_genre overflow">Ballad</div><!--//rookie_genre-->
                                <span class="c_audio"><i class="fa fa-headphones"></i> 12</span>
                                <span class="c_video"><i class="fa fa-video-camera"></i> 15</span>
                                <span class="c_follow"><i class="fa fa-users"></i> 11</span>
                            </div><!--//card_rookie -->
                        </li>
                        <li>
                            <div class="card_rookie">
                                <a class="cover" href="contentDetail(수림).html"></a>
                                <img  class="card_rookie_profile bg" src="../../img/rookie/프로필10.jpg"/><!--//nameCard_rookie_profile-->
                                <em class="overflow">sabJil</em>
                                <div class="rookie_genre overflow">Hiphop</div><!--//rookie_genre-->
                                <span class="c_audio"><i class="fa fa-headphones"></i> 13</span>
                                <span class="c_video"><i class="fa fa-video-camera"></i> 2</span>
                                <span class="c_follow"><i class="fa fa-users"></i> 265</span>
                            </div><!--//card_rookie -->
                        </li>
                        <li>
                            <div class="card_rookie">
                                <a class="cover" href="contentDetail(수림).html"></a>
                                 <img  class="card_rookie_profile bg" src="../../img/rookie/프로필11.jpg"/><!--//nameCard_rookie_profile-->
                                <em class="overflow">Cloudy</em>
                                <div class="rookie_genre overflow">Rap</div><!--//rookie_genre-->
                                <span class="c_audio"><i class="fa fa-headphones"></i> 1</span>
                                <span class="c_video"><i class="fa fa-video-camera"></i> 1</span>
                                <span class="c_follow"><i class="fa fa-users"></i> 0</span>
                            </div><!--//card_rookie -->
                        </li>
                    </ul>
                </div><!--//boxSearch_rookie-->

            </div><!--//wrap -->
        </div><!--sectionAfterSearch-->
    </div> <!-- // #content -->
    

	<c:import url="../view/template/footer.jsp"></c:import>
</div> <!-- // #wrap -->
<script src="../../js/jquery-3.2.1.min.js"></script>
<script>
    var $click=$(".click");
    var $myAlertBox=$(".myAlertBox");
    var $alert=$("#alert");
    var $alertBox=$(".alertBox");
    var $body=$("body");
    var $topBtn = $("#topBtn")
    $(window).scroll(function() {
        if ($(window).scrollTop() >= $(document).height() - $(window).height()-80) {$topBtn.css("bottom","120px")}
        else {$topBtn.css("bottom","10px")}
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
        if($myAlertBox.hasClass("on")){$myAlertBox.removeClass("on");}
        if($alertBox.hasClass("show")) {$alertBox.removeClass("show");}
    })
    
    $("#q").keyup(function (e) {
        var code = e.keyCode;
        if(code==13) {
            window.location.href="indieDetail.html";
        }
    })
</script> <!-- tamplate -->
</body>
</html>