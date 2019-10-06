<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>ROOKIE</title>
    
	<c:import url="template/link.jsp"></c:import>
    <link rel="stylesheet" href="../css/rookie/rookieCard(수림).css"/>
    <link rel="stylesheet" href="../css/rookie/rookieMain(수림).css"/>
<style>
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
    .contents_rep_Image{
        width: 230px;
        height: 160px;
        background-image: url(../img/rookie/ex_Rep_Image.jpg) ;
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
        text-decoration: none;
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
        background-image: url(../img/rookie/rookie/ex_Rep_Image.jpg);
    }
    .card_rookie_contents .cover {
        position: absolute;
        top:0;
        left:0;
    }

</style>

    <style>

        .box_user_upgrade{
            display: none;
            top:0;
            z-index: 2;
            position: fixed;
            width: 100%;
            height: 100%;
            background-color: rgba(0,0,0,.4);

        }
        .user_upgrade{
            display: none;
            z-index: 2;
            background-color: #fff;
            width: 720px;
            min-height: 405px;
            position: fixed;
            left: 50%;
            top: 50%;
            margin-left: -360px ;
            margin-top: -202.5px;
            box-shadow:3px 3px 40px #969696;

        }
        .user_upgrade h1{
            position: absolute;
            width: 380px;
            height: 30px;
            display: block;
            top: 10px;
            left: 10px;
            font-size: 25px;
            font-weight: 700;
            text-shadow: #eef 1px 1px 3px;
        }
        .solo{
            width: 160px;
            height: 200px;
            position: absolute;
            top: 100px;
            left: 180px;
            text-align: center;
        }
        .band{
            width: 160px;
            height: 200px;
            position: absolute;
            top: 100px;
            right: 180px;
            text-align: center;
        }
        .solo:hover{
            cursor: pointer;
        }
        .band:hover{
            cursor: pointer;
        }
        .solo:hover img{
            transform: scale(1.2);
        }
        .band:hover img{
            transform: scale(1.2);

        }
        .solo img{
            transition: .2s ease;
        }
        .band img{
            transition: .2s ease;
        }
        .solo em{
            display: block;
            font-size: 25px;
            padding-top: 20px;
            font-weight: 700;
            color: #99cccc;
        }
        .band em{
            display: block;
            font-size: 25px;
            padding-top: 20px;
            font-weight: 700;
            color: #99cccc;
        }
        .plus_band .box_search{
            width: 270px;
            color: #969696;
            height: 40px;
            position: absolute;
            top: 50px;
            left: 20px;
            font-size: 20px;
            font-weight: 700;
            text-align: center;
            line-height: 40px;
            border-radius: 25px;
            border: 1px solid #99cccc;
            transition: .2s ease;
        }
        .plus_band .box_search:hover{
            color: #99cccc;
            cursor: pointer;
        }
        .plus_band .box_search>input{
            border: none;
            background-color: transparent;
            height: 25px;
            width: 230px;
            font-family: "Noto Sans KR", sans-serif;
            font-size: 18px;
            font-weight: 500;
            color: #969696;
        }
        .user_upgrade button{
            border: none;
            width: 128px;
            height: 28px;
            cursor: pointer;
            font-family: "Noto Sans KR", sans-serif;
            border-radius: 20px;
            background-color: rgba(0,0,0,0.2);
            font-size: 16px;
            transition: .2s ease;
        }
        .user_upgrade button:hover {
            background-color: #99cccc;
        }
        .find_user{
            width: 680px;
            height: 220px;
            overflow-y: scroll;
            position: absolute;
            top:110px;
            left: 20px;
        }
        .plus_band .later_plus{
            position: absolute;
            bottom: 20px;
            right: 20px;
        }
        .plus_band .bander_plus{
            position: absolute;
            bottom: 20px;
            right: 160px;
        }
        .setcard_rookie{
            width: 230px;
            height: 320px;
            position: absolute;
            background-color: #eef;
            top: 50px;
            left: 20px;
        }
        #setcardRookieProfile{
            width: 148px;
            height: 148px;
            border-radius: 200px;
            position: absolute;
            top:20px;
            left: 40px;
            border: 1px solid #99cccc;
        }
        #setcardRookieProfile:hover{
            cursor: pointer;
        }
        .setname{
            text-align: center;
            display: block;
            width: 180px;
            position: absolute;
            top:180px;
            left: 25px;
            font-size: 15px;
        }
        .genreBeforeSet{
            width: 80px;
            height:8px;
            border-radius: 20px;
            text-align: center;
            line-height: 6px;
            font-size: 15px;
            background-color: rgba(0,0,0,.2);
            color: #424242;
            padding: 10px;
            position: absolute;
            top: 210px;
            left: 55px;
        }
        .setcard_rookie>#c_audio{
            color: #969696;
            display: block;
            position: absolute;
            top:245px;
            left: 75px;
            font-size: 14px;
        }
        .setcard_rookie>#c_video{
            color: #969696;
            display: block;
            position: absolute;
            top:245px;
            right: 75px;
            font-size: 14px;
        }
        .setcard_rookie>#c_follow{
            color: #969696;
            display: block;
            position: absolute;
            width: 100px;
            text-align: center;
            top:280px;
            left: 65px;
            font-size: 16px;

        }
        .setgenre{
            width: 420px;
            min-height: 120px;
            position: absolute;
            top: 80px;
            right: 20px;
            padding: 5px;
        }
        .setgenre>h3{
            font-size: 18px;
            margin-bottom: 25px;
        }
        .setgenre button{
            width: 100px;
            margin: 5px;
        }
        .cardSet .uploadLink{
            position: absolute;
            display: block;
            width: 160px;
            height: 28px;
            cursor: pointer;
            font-family: "Noto Sans KR", sans-serif;
            border-radius: 20px;
            background-color: rgba(0,0,0,0.2);
            font-size: 16px;
            transition: .2s ease;
            bottom: 20px;
            right: 20px;
            text-align: center;
            line-height: 28px;
            text-decoration: none;
        }
        .cardSet .uploadLink:hover{
            background-color: #99cccc;
        }
        .plus_band, .cardSet{
            display: none;
        }
        .undo{
            font-size: 25px;
            position: absolute;
            top: 20px;
            right: 20px;
            cursor: pointer;
            color: #99cccc;
        }
        .undo:hover{

            color: #0099cc;
        }
        
        #inputRookieProfile{
        	display: none;
        }
        
        #setcardRookieProfile #imgRookieProfile{
        	width:148px;
        	height: 148px;
        	border-radius: 74px;
        	display: none;
        }
    </style>
</head>
<body>


	<c:import url="../view/template/header.jsp"></c:import>

<div id="content">
<div id="boxPopContents">
    <!--컨텐츠-->
    <div class="nav pop_LeftBtn"><i class="fa fa-chevron-left"></i></div>
    <div class="nav pop_RightBtn"><i class="fa fa-chevron-right"></i></div>
    <div class="showContents"><!--width:1000px -->
    <ul>
        <li class="rookie1st">
            <a href="" class="rookie1st_cover"></a>
            <div class="wrap1st">
                <div class="firstRookie"> MONTHLY ROOKIE </div>
            <img src="../img/rookie/1stRookie.png" width="50" height="70" class="place first"/>
            <img class="firstRep"src="../img/rookie/sabrina22.jpg" width="400" height="330" />
                <div class="rookie1st_title">
                <h1>Orion's Belt</h1>
                <h2>Sabrina Claudio</h2>
                    <p class="overflow">
                       	This mess of emotions got his body questioning
						Is this feeling alright?
						He studying my freckles like the constellations
						And he's looking for signs
                    </p>
                <div class="hit f_like" ><i class="fa fa-heart"></i>9989</div>
                <div class="hit f_view" ><i class="fa fa-eye"></i>87299</div>
                <div class="hit f_comments" ><i class="fa fa-comment-o"></i>802</div>
                </div>
            </div>
        </li>
        <li>
        <img src="../img/rookie/monthly_rookies.png" width="50" height="70" class="place"/>
        <div class="card_rookie_contents">
            <a href=""  class="cover monthly">
                <div class="like" ><i class="fa fa-heart"></i>9553</div>
                <div class="view" ><i class="fa fa-eye"></i>63447</div>
                <div class="comments" ><i class="fa fa-comment-o"></i>175</div>
            </a>
            <div class="sort"><i class="fa fa-video-camera"></i></div>
            <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
            <img class="contents_rep_Image bg" src="../img/rookie/커버22.jpg"/><!--//contents_rep_image-->
            <div class="contents_title">
                <em class="overflow">불면증</em>
                <strong>Jazz</strong>
                <p class="overflow"> 불면증에 따라오는 우울증을 억제하고, 또한 우울장애로 악화되는 것을 방지하는 목적을 겸해서 투입된다</p>
            </div><!--//contents_title-->
            <div class="nameCard_rookie">
                <a href=""  class="overflow">9RM(a.k.a 구름)</a>
                <span><i class="fa fa-users"></i> 658</span>
                <img class="nameCard_rookie_profile bg" src = "../img/rookie/프로필1.jpg"/><!--//nameCard_rookie_profile-->
            </div><!--//nameCard_rookie -->
        </div><!--//card_rookie_contents-->
    </li>
        <li>
            <img src="../img/rookie/monthly_rookies.png" width="50" height="70" class="place"/>
            <div class="card_rookie_contents">

                <a href=""  class="cover monthly">
                    <div class="like" ><i class="fa fa-heart"></i>7390</div>
                    <div class="view" ><i class="fa fa-eye"></i>12678</div>
                    <div class="comments" ><i class="fa fa-comment-o"></i>33</div>
                </a>

                <div class="sort"><i class="fa fa-headphones"></i></div>
                <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                <img class="contents_rep_Image bg" src="../img/rookie/커버23.jpg"/><!--//contents_rep_image-->
                <div class="contents_title">
                    <em class="overflow">산책</em>
                    <strong>Pop</strong>
                    <p class="overflow">산책을 걷는 듯한 느낌의 곡으로 준비해봤습니다.</p>
                </div><!--//contents_title-->
                <div class="nameCard_rookie">
                    <a href=""  class="overflow">공중그늘</a>
                    <span><i class="fa fa-users"></i> 165</span>
                    <img class="nameCard_rookie_profile bg" src = "../img/rookie/프로필2.jpg"/><!--//nameCard_rookie_profile-->
                </div><!--//nameCard_rookie -->
            </div><!--//card_rookie_contents-->
        </li>
        <li>
            <img src="../img/rookie/monthly_rookies.png" width="50" height="70" class="place"/>
            <div class="card_rookie_contents">
                <a  href="" class="cover monthly">
                    <div class="like" ><i class="fa fa-heart"></i>8912</div>
                    <div class="view" ><i class="fa fa-eye"></i>9976</div>
                    <div class="comments" ><i class="fa fa-comment-o"></i>10</div>
                </a>

                <div class="sort"><i class="fa fa-video-camera"></i></div>
                <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                <img class="contents_rep_Image bg" src="../img/rookie/커버24.jpg"/><!--//contents_rep_image-->
                <div class="contents_title">
                    <em class="overflow">Seeking Soul Pt.2</em>
                    <strong>Electronica</strong>
                    <p class="overflow">Seeking Soul Pt.2</p>
                </div><!--//contents_title-->
                <div class="nameCard_rookie">
                    <a href=""  class="overflow">BA</a>
                    <span><i class="fa fa-users"></i> 383</span>
                    <img class="nameCard_rookie_profile bg" src = "../img/rookie/프로필3.jpg"/><!--//nameCard_rookie_profile-->
                </div><!--//nameCard_rookie -->
            </div><!--//card_rookie_contents-->
        </li>
        <li>
            <img src="../img/rookie/monthly_rookies.png" width="50" height="70" class="place"/>
            <div class="card_rookie_contents">
                <a href=""  class="cover monthly">
                    <div class="like" ><i class="fa fa-heart"></i>8920</div>
                    <div class="view" ><i class="fa fa-eye"></i>9932</div>
                    <div class="comments" ><i class="fa fa-comment-o"></i>3</div>
                </a>

                <div class="sort"><i class="fa fa-headphones"></i></div>
                <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                 <img class="contents_rep_Image bg" src="../img/rookie/커버25.jpg"/><!--//contents_rep_image-->
                <div class="contents_title">
                    <em class="overflow">널생각해</em>
                    <strong>Electronica</strong>
                    <p class="overflow">매일 널 생각해 우우 </p>
                </div><!--//contents_title-->
                <div class="nameCard_rookie">
                    <a href=""  class="overflow">신애와 친구들</a>
                    <span><i class="fa fa-users"></i> 256</span>
                    <img class="nameCard_rookie_profile bg" src = "../img/rookie/프로필4.jpg"/><!--//nameCard_rookie_profile-->
                </div><!--//nameCard_rookie -->
            </div><!--//card_rookie_contents-->
        </li>
        <li>
            <img src="../img/rookie/monthly_rookies.png" width="50" height="70" class="place"/>
            <div class="card_rookie_contents">
                <a href=""  class="cover monthly">
                    <div class="like" ><i class="fa fa-heart"></i>2708</div>
                    <div class="view" ><i class="fa fa-eye"></i>8000</div>
                    <div class="comments" ><i class="fa fa-comment-o"></i>51</div>
                </a>

                <div class="sort"><i class="fa fa-headphones"></i></div>
                <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                <img class="contents_rep_Image bg" src="../img/rookie/커버26.jpg"/><!--//contents_rep_image-->
                <div class="contents_title">
                    <em class="overflow">여러분 안녕하세요</em>
                    <strong>Fork</strong>
                    <p class="overflow">안녕하세요 당나귀 입니다.</p>
                </div><!--//contents_title-->
                <div class="nameCard_rookie">
                    <a href=""  class="overflow">당나귀</a>
                    <span><i class="fa fa-users"></i> 970</span>
                    <img class="nameCard_rookie_profile bg" src = "../img/rookie/프로필5.jpg"/><!--//nameCard_rookie_profile-->
                </div><!--//nameCard_rookie -->
            </div><!--//card_rookie_contents-->
        </li>
        <li>
            <img src="../img/rookie/monthly_rookies.png" width="50" height="70" class="place"/>
            <div class="card_rookie_contents">
                <a href=""  class="cover monthly">
                    <div class="like" ><i class="fa fa-heart"></i>1000</div>
                    <div class="view" ><i class="fa fa-eye"></i>1000</div>
                    <div class="comments" ><i class="fa fa-comment-o"></i>1000</div>
                </a>

                <div class="sort"><i class="fa fa-headphones"></i></div>
                <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                <img class="contents_rep_Image bg" src="../img/rookie/커버27.jpg"/><!--//contents_rep_image-->
                <div class="contents_title">
                    <em class="overflow">그대의 우주</em>
                    <strong>Rock</strong>
                    <p class="overflow">그대의 우주 그대의 밤 그날의</p>
                </div><!--//contents_title-->
                <div class="nameCard_rookie">
                    <a href="" class="overflow">이예린</a>
                    <span><i class="fa fa-users"></i> 152</span>
                    <img class="nameCard_rookie_profile bg" src = "../img/rookie/프로필6.jpg"/><!--//nameCard_rookie_profile-->
                </div><!--//nameCard_rookie -->
            </div><!--//card_rookie_contents-->
        </li>
        <li>
            <img src="../img/rookie/monthly_rookies.png" width="50" height="70" class="place"/>
            <div class="card_rookie_contents">
                <a href=""  class="cover monthly">
                    <div class="like" ><i class="fa fa-heart"></i>1522</div>
                    <div class="view" ><i class="fa fa-eye"></i>8242</div>
                    <div class="comments" ><i class="fa fa-comment-o"></i>13</div>
                </a>

                <div class="sort"><i class="fa fa-headphones"></i></div>
                <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                <img class="contents_rep_Image bg" src="../img/rookie/커버28.png"/><!--//contents_rep_image-->
                <div class="contents_title">
                    <em class="overflow">Cover Me</em>
                    <strong>Hiphop</strong>
                    <p class="overflow">cover cover cover up</p>
                </div><!--//contents_title-->
                <div class="nameCard_rookie">
                    <a href=""  class="overflow">Ccoocoo</a>
                    <span><i class="fa fa-users"></i> 221</span>
                    <img class="nameCard_rookie_profile bg" src = "../img/rookie/프로필7.jpg"/><!--//nameCard_rookie_profile-->
                </div><!--//nameCard_rookie -->
            </div><!--//card_rookie_contents-->
        </li>
        <li>
            <img src="../img/rookie/monthly_rookies.png" width="50" height="70" class="place"/>
            <div class="card_rookie_contents">
                <a href=""  class="cover monthly">
                    <div class="like" ><i class="fa fa-heart"></i>1000</div>
                    <div class="view" ><i class="fa fa-eye"></i>1000</div>
                    <div class="comments" ><i class="fa fa-comment-o"></i>1000</div>
                </a>

                <div class="sort"><i class="fa fa-video-camera"></i></div>
                <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                 <img class="contents_rep_Image bg" src="../img/rookie/커버29.png"/><!--//contents_rep_image-->
                <div class="contents_title">
                    <em class="overflow">아무말이나 끄적</em>
                    <strong>Electronica</strong>
                    <p class="overflow">원샷을 못하면 시집을 못가요 아아 미운사람</p>
                </div><!--//contents_title-->
                <div class="nameCard_rookie">
                    <a href=""  class="overflow">에블바데</a>
                    <span><i class="fa fa-users"></i> 142</span>
                   <img class="nameCard_rookie_profile bg" src = "../img/rookie/프로필8.jpg"/><!--//nameCard_rookie_profile-->
                </div><!--//nameCard_rookie -->
            </div><!--//card_rookie_contents-->
        </li>

    </ul>
    </div><!--//showContents -->
</div><!--//boxPopContents-->

<div id="sectionRookie">
    <div id="wrapTab">
        <div id="boxBtn">
        <div id="newfeedBtn" class="rookieBtn on">NEW FEED</div><!--//btn-->
        <div id="rookieBtn" class="rookieBtn">ROOKIE</div><!--//btn-->
        </div><!--//box_btn-->

        <div class="box_search search"><i class="fa fa-search"></i><input id="q" placeholder='검색어를 입력해주세요'/></div>
        <!--//box_search_rookie-->

        <div id="register"><img src="../img/rookie/musician.png" width="50"height="50"/>ROOKIE !?</div><!--// 유저등급:루키도전 루키등급~:컨텐츠 작성폼 이동 버튼-->
        <a href="contentForm(수림).html"></a>
    </div><!--//wrap_tab-->
    <div id="wrapContents">
        <div id="boxNewfeed">
            <!--컨텐츠-->
            <ul>
            <li>
                <div class="card_rookie_contents">
                <a href=""  class="cover">
                    <div class="like"><i class="fa fa-heart"></i>697</div>
                    <div class="view"><i class="fa fa-eye"></i>3987</div>
                    <div class="comments"><i class="fa fa-comment-o"></i>282</div>
                </a>

                <div class="sort"><i class="fa fa-headphones"></i></div>
                <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                <img class="contents_rep_Image bg" src="../../img/rookie/커버1.jpg"><!--//contents_rep_image-->
                <div class="contents_title">
                    <em class="overflow">John Lennon에게</em>
                    <strong>R&B</strong>
                    <p class="overflow">저작권 보호를 위해 설립된 미국음악출판협회(NMPA)가 14일(현지시간) Ono를 공동작곡가로 기록하도록 할 계획이라고 롤링스톤, 피치포크 등이 전했다. NMPA 대변인은 "아직까지는 우리를 반대하는 움직임이 없는 것으로 안다"면서 Ono의 공동작곡가 등재 가능성을 높게 봤다. 이 단체는 Lennon이 아내가 작곡가 </p>
                </div><!--//contents_title-->
                <div class="nameCard_rookie">
                    <a href=""  class="overflow">정우성무니</a>
                    <span><i class="fa fa-users"></i> 237</span>
                    <img class="nameCard_rookie_profile bg" src = "../img/rookie/프로필9.jpg"/><!--//nameCard_rookie_profile-->
                </div><!--//nameCard_rookie -->
            </div><!--//card_rookie_contents-->
            </li>
                <li>
                <div class="card_rookie_contents">
                    <a href=""  class="cover">
                        <div class="like"><i class="fa fa-heart"></i>23</div>
                        <div class="view"><i class="fa fa-eye"></i>263</div>
                        <div class="comments"><i class="fa fa-comment-o"></i>4</div>
                    </a>
                    <div class="sort"><i class="fa fa-headphones"></i></div>
                    <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                     <img class="contents_rep_Image bg" src="../../img/rookie/커버2.jpg"><!--//contents_rep_image-->
                    <div class="contents_title">
                        <em class="overflow">Ono Yoko가 없었더라면</em>
                        <strong>Electronica</strong>
                        <p class="overflow">당신의 몸이 얇은 티슈처럼 빨리 세상에 퍼지는 걸 상상해보라. 그 티슈의 한 조각을 자른다고 상상해봐"라는 문구가 나온다. </p>
                    </div><!--//contents_title-->
                    <div class="nameCard_rookie">
                        <a href=""  class="overflow">YOKO</a>
                        <span><i class="fa fa-users"></i> 125</span>
                        <img class="nameCard_rookie_profile bg" src = "../img/rookie/프로필10.jpg"/><!--//nameCard_rookie_profile-->
                    </div><!--//nameCard_rookie -->
                </div><!--//card_rookie_contents-->
                </li>
                <li>
                <div class="card_rookie_contents">
                    <a href=""  class="cover">
                        <div class="like"><i class="fa fa-heart"></i>83</div>
                        <div class="view"><i class="fa fa-eye"></i>263</div>
                        <div class="comments"><i class="fa fa-comment-o"></i>10</div>
                    </a>
                    <div class="sort"><i class="fa fa-video-camera"></i></div>
                    <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                     <img class="contents_rep_Image bg" src="../../img/rookie/커버3.jpg"><!--//contents_rep_image-->
                    <div class="contents_title">
                        <em class="overflow">Blowin' In The Wind</em>
                        <strong>Electronica</strong>
                        <p class="overflow">날 'Imagine'을 "세기의 노래"로 선정했다. 이 곡은 Lennon이 The Beatles 해체 이후인 1971년 발표한 동명의 앨범에 수록됐다. 발표됐을 때부터 바로 인기를 끌</p>
                    </div><!--//contents_title-->
                    <div class="nameCard_rookie">
                        <a href=""  class="overflow"> Bob Dylan</a>
                        <span><i class="fa fa-users"></i> 22</span>
                        <img class="nameCard_rookie_profile bg" src = "../img/rookie/프로필11.jpg"/><!--//nameCard_rookie_profile-->
                    </div><!--//nameCard_rookie -->
                </div><!--//card_rookie_contents-->
                </li>
                <li>
                <div class="card_rookie_contents">
                    <a href=""  class="cover">
                        <div class="like"><i class="fa fa-heart"></i>23</div>
                        <div class="view"><i class="fa fa-eye"></i>253</div>
                        <div class="comments"><i class="fa fa-comment-o"></i>12</div>
                    </a>
                    <div class="sort"><i class="fa fa-headphones"></i></div>
                    <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                     <img class="contents_rep_Image bg" src="../../img/rookie/커버4.jpg"><!--//contents_rep_image-->
                    <div class="contents_title">
                        <em class="overflow">세기의 노래상</em>
                        <strong>Rock</strong>
                        <p class="overflow">Sean Lennon도 트위터 멘션을 페이스북에 공유하며 "정말 놀라운 일"이라고 기뻐했다.</p>
                    </div><!--//contents_title-->
                    <div class="nameCard_rookie">
                        <a href=""  class="overflow">ean Lennon</a>
                        <span><i class="fa fa-users"></i> 23</span>
                        <img class="nameCard_rookie_profile bg" src = "../img/rookie/프로필12.jpg"/><!--//nameCard_rookie_profile-->
                    </div><!--//nameCard_rookie -->
                </div><!--//card_rookie_contents-->
                </li>
                <li>
                <div class="card_rookie_contents">
                    <a href=""  class="cover">
                        <div class="like"><i class="fa fa-heart"></i>13</div>
                        <div class="view"><i class="fa fa-eye"></i>253</div>
                        <div class="comments"><i class="fa fa-comment-o"></i>3</div>
                    </a>
                    <div class="sort"><i class="fa fa-video-camera"></i></div>
                    <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                    <img class="contents_rep_Image bg" src="../../img/rookie/커버5.jpg"><!--//contents_rep_image-->
                    <div class="contents_title">
                        <em class="overflow">Black Lips, Moonlandingz</em>
                        <strong>Ballad</strong>
                        <p class="overflow">사람의 예술세계를 더욱 풍성하게 만들었다. 두 사람의 행보를 자세히 살펴보면 알겠지만 사실 </p>
                    </div><!--//contents_title-->
                    <div class="nameCard_rookie">
                        <a href=""  class="overflow">야카</a>
                        <span><i class="fa fa-users"></i> 12</span>
                        <img class="nameCard_rookie_profile bg" src = "../img/rookie/프로필13.jpg"/><!--//nameCard_rookie_profile-->
                    </div><!--//nameCard_rookie -->
                </div><!--//card_rookie_contents-->
                </li>
                <li>
                <div class="card_rookie_contents">
                    <a href=""  class="cover">
                        <div class="like"><i class="fa fa-heart"></i>112</div>
                        <div class="view"><i class="fa fa-eye"></i>234</div>
                        <div class="comments"><i class="fa fa-comment-o"></i>2</div>
                    </a>
                    <div class="sort"><i class="fa fa-headphones"></i></div>
                    <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                     <img class="contents_rep_Image bg" src="../../img/rookie/커버6.jpg"><!--//contents_rep_image-->
                    <div class="contents_title">
                        <em class="overflow">두 사람은 커다란 비닐봉지 안</em>
                        <strong>Hiphop</strong>
                        <p class="overflow">둘의 사랑은 더욱 깊어졌고 1969년 결혼했다</p>
                    </div><!--//contents_title-->
                    <div class="nameCard_rookie">
                        <a href=""  class="overflow">비닐</a>
                        <span><i class="fa fa-users"></i> 22</span>
                        <img class="nameCard_rookie_profile bg" src = "../img/rookie/프로필14.jpg"/><!--//nameCard_rookie_profile-->
                    </div><!--//nameCard_rookie -->
                </div><!--//card_rookie_contents-->
                </li>
                <li>
                <div class="card_rookie_contents">
                    <a href=""  class="cover">
                        <div class="like"><i class="fa fa-heart"></i>760</div>
                        <div class="view"><i class="fa fa-eye"></i>7564</div>
                        <div class="comments"><i class="fa fa-comment-o"></i>55</div>
                    </a>
                    <div class="sort"><i class="fa fa-headphones"></i></div>
                    <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                     <img class="contents_rep_Image bg" src="../../img/rookie/커버7.jpg"><!--//contents_rep_image-->
                    <div class="contents_title">
                        <em class="overflow">[H.A.L.F (Have.A.Little.Fun)]</em>
                        <strong>Folk</strong>
                        <p class="overflow"> Travi$ Scott의 스타일과 매우 흡사하다고 지적한 것이었다.</p>
                    </div><!--//contents_title-->
                    <div class="nameCard_rookie">
                        <a href=""  class="overflow">차차 말론이</a>
                        <span><i class="fa fa-users"></i> 123</span>
                        <img class="nameCard_rookie_profile bg" src = "../img/rookie/프로필15.jpg"/><!--//nameCard_rookie_profile-->
                    </div><!--//nameCard_rookie -->
                </div><!--//card_rookie_contents-->
                </li>
                <li>
                <div class="card_rookie_contents">
                    <a href=""  class="cover">
                        <div class="like"><i class="fa fa-heart"></i>98</div>
                        <div class="view"><i class="fa fa-eye"></i>967</div>
                        <div class="comments"><i class="fa fa-comment-o"></i>8</div>
                    </a>
                    <div class="sort"><i class="fa fa-video-camera"></i></div>
                    <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                     <img class="contents_rep_Image bg" src="../../img/rookie/커버8.jpg"><!--//contents_rep_image-->
                    <div class="contents_title">
                        <em class="overflow">블루칩이 되어가</em>
                        <strong>Electronic</strong>
                        <p class="overflow">영향받은 것을 부정할 수는 없지만</p>
                    </div><!--//contents_title-->
                    <div class="nameCard_rookie">
                        <a href=""  class="overflow">RING RING</a>
                        <span><i class="fa fa-users"></i> 8</span>
                       <img class="nameCard_rookie_profile bg" src = "../img/rookie/프로필16.jpg"/><!--//nameCard_rookie_profile-->
                    </div><!--//nameCard_rookie -->
                </div><!--//card_rookie_contents-->
                </li>
                <li>
                <div class="card_rookie_contents">
                    <a href=""  class="cover">
                        <div class="like"><i class="fa fa-heart"></i>53</div>
                        <div class="view"><i class="fa fa-eye"></i>232</div>
                        <div class="comments"><i class="fa fa-comment-o"></i>7</div>
                    </a>
                    <div class="sort"><i class="fa fa-headphones"></i></div>
                    <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                     <img class="contents_rep_Image bg" src="../../img/rookie/커버9.jpg"><!--//contents_rep_image-->
                    <div class="contents_title">
                        <em class="overflow">'간지' 단 한 곡만</em>
                        <strong>Rap</strong>
                        <p class="overflow">앨범 [Nice],</p>
                    </div><!--//contents_title-->
                    <div class="nameCard_rookie">
                        <a href=""  class="overflow">깊은 인상</a>
                        <span><i class="fa fa-users"></i> 186</span>
                        <img class="nameCard_rookie_profile bg" src = "../img/rookie/프로필17.jpg"/><!--//nameCard_rookie_profile-->
                    </div><!--//nameCard_rookie -->
                </div><!--//card_rookie_contents-->
                </li>
                <li>
                <div class="card_rookie_contents">
                    <a href=""  class="cover">
                        <div class="like"><i class="fa fa-heart"></i>36</div>
                        <div class="view"><i class="fa fa-eye"></i>878</div>
                        <div class="comments"><i class="fa fa-comment-o"></i>19</div>
                    </a>
                    <div class="sort"><i class="fa fa-video-camera"></i></div>
                    <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                     <img class="contents_rep_Image bg" src="../../img/rookie/커버10.jpg"><!--//contents_rep_image-->
                    <div class="contents_title">
                        <em class="overflow">WTF</em>
                        <strong>Electronica</strong>
                        <p class="overflow">WTF (Way to Foundation"의 포문을 연 'My Wave'는 달랐다.</p>
                    </div><!--//contents_title-->
                    <div class="nameCard_rookie">
                        <a href=""  class="overflow">빽빽한 텐션</a>
                        <span><i class="fa fa-users"></i> 65</span>
                       <img class="nameCard_rookie_profile bg" src = "../img/rookie/프로필18.jpg"/><!--//nameCard_rookie_profile-->
                    </div><!--//nameCard_rookie -->
                </div><!--//card_rookie_contents-->
                </li>
                <li>
                <div class="card_rookie_contents">
                    <a href=""  class="cover">
                        <div class="like"><i class="fa fa-heart"></i>86</div>
                        <div class="view"><i class="fa fa-eye"></i>934</div>
                        <div class="comments"><i class="fa fa-comment-o"></i>23</div>
                    </a>
                    <div class="sort"><i class="fa fa-headphones"></i></div>
                    <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                     <img class="contents_rep_Image bg" src="../../img/rookie/커버11.jpg"><!--//contents_rep_image-->
                    <div class="contents_title">
                        <em class="overflow">가장 의외인 걸</em>
                        <strong>Rap</strong>
                        <p class="overflow">오토튠 없이 오직 자신의 목소리로 랩이 아닌 보컬의 형태에 가까운 퍼포먼스를 선</p>
                    </div><!--//contents_title-->
                    <div class="nameCard_rookie">
                        <a href=""  class="overflow">오토튠</a>
                        <span><i class="fa fa-users"></i> 25</span>
                        <img class="nameCard_rookie_profile bg" src = "../img/rookie/프로필19.jpg"/><!--//nameCard_rookie_profile-->
                    </div><!--//nameCard_rookie -->
                </div><!--//card_rookie_contents-->
                </li>
                <li>
                <div class="card_rookie_contents">
                    <a href=""  class="cover">
                        <div class="like"><i class="fa fa-heart"></i>734</div>
                        <div class="view"><i class="fa fa-eye"></i>2397</div>
                        <div class="comments"><i class="fa fa-comment-o"></i>8</div>
                    </a>
                    <div class="sort"><i class="fa fa-video-camera"></i></div>
                    <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                     <img class="contents_rep_Image bg" src="../../img/rookie/커버13.jpg"><!--//contents_rep_image-->
                    <div class="contents_title">
                        <em class="overflow"> [그린웨이브]</em>
                        <strong>Electronica</strong>
                        <p class="overflow">키워드를 중심</p>
                    </div><!--//contents_title-->
                    <div class="nameCard_rookie">
                        <a href=""  class="overflow">역시 백미</a>
                        <span><i class="fa fa-users"></i> 72</span>
                       <img class="nameCard_rookie_profile bg" src = "../img/rookie/프로필20.jpg"/><!--//nameCard_rookie_profile-->
                    </div><!--//nameCard_rookie -->
                </div><!--//card_rookie_contents-->
                </li>
                <li>
                <div class="card_rookie_contents">
                    <a href=""  class="cover">
                        <div class="like"><i class="fa fa-heart"></i>14</div>
                        <div class="view"><i class="fa fa-eye"></i>1753</div>
                        <div class="comments"><i class="fa fa-comment-o"></i>2</div>
                    </a>
                    <div class="sort"><i class="fa fa-headphones"></i></div>
                    <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                     <img class="contents_rep_Image bg" src="../../img/rookie/커버14.jpg"><!--//contents_rep_image-->
                    <div class="contents_title">
                        <em class="overflow">크게 선전</em>
                        <strong>Pop</strong>
                        <p class="overflow"> 튼튼한 기량을 바탕으로 깔끔한 매무새를 자랑했다</p>
                    </div><!--//contents_title-->
                    <div class="nameCard_rookie">
                        <a href=""  class="overflow">Juice</a>
                        <span><i class="fa fa-users"></i> 26</span>
                        <img class="nameCard_rookie_profile bg" src = "../img/rookie/프로필21.jpg"/><!--//nameCard_rookie_profile-->
                    </div><!--//nameCard_rookie -->
                </div><!--//card_rookie_contents-->
                </li>
                <li>
                <div class="card_rookie_contents">
                    <a href=""  class="cover">
                        <div class="like"><i class="fa fa-heart"></i>73</div>
                        <div class="view"><i class="fa fa-eye"></i>834</div>
                        <div class="comments"><i class="fa fa-comment-o"></i>1</div>
                    </a>
                    <div class="sort"><i class="fa fa-headphones"></i></div>
                    <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                     <img class="contents_rep_Image bg" src="../../img/rookie/커버15.jpg"><!--//contents_rep_image-->
                    <div class="contents_title">
                        <em class="overflow">기에 너무 처지지</em>
                        <strong>Electronica</strong>
                        <p class="overflow">점을 맞춘 보이비의 랩도 인상적이다</p>
                    </div><!--//contents_title-->
                    <div class="nameCard_rookie">
                        <a href=""  class="overflow">류리</a>
                        <span><i class="fa fa-users"></i> 84</span>
                       <img class="nameCard_rookie_profile bg" src = "../img/rookie/프로필22.jpg"/><!--//nameCard_rookie_profile-->
                    </div><!--//nameCard_rookie -->
                </div><!--//card_rookie_contents-->
                </li>
                <li>
                <div class="card_rookie_contents">
                    <a href=""  class="cover">
                        <div class="like"><i class="fa fa-heart"></i>723</div>
                        <div class="view"><i class="fa fa-eye"></i>4586</div>
                        <div class="comments"><i class="fa fa-comment-o"></i>71</div>
                    </a>
                    <div class="sort"><i class="fa fa-headphones"></i></div>
                    <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                     <img class="contents_rep_Image bg" src="../../img/rookie/커버16.jpg"><!--//contents_rep_image-->
                    <div class="contents_title">
                        <em class="overflow">'마에스트로</em>
                        <strong>Rap</strong>
                        <p class="overflow"> '마에스트로'가 앰비션 뮤직 합류 전에 발표했던 [돈 벌 시간 2]의 수록곡임에도 단숨에 10대, 20대 초반 대중들의 스타가 되었다는 점이다.</p>
                    </div><!--//contents_title-->
                    <div class="nameCard_rookie">
                        <a href=""  class="overflow">joe</a>
                        <span><i class="fa fa-users"></i> 82</span>
                       <img class="nameCard_rookie_profile bg" src = "../img/rookie/프로필23.jpg"/><!--//nameCard_rookie_profile-->
                    </div><!--//nameCard_rookie -->
                </div><!--//card_rookie_contents-->
                </li>
                <li>
                <div class="card_rookie_contents">
                    <a href=""  class="cover">
                        <div class="like"><i class="fa fa-heart"></i>823</div>
                        <div class="view"><i class="fa fa-eye"></i>2284</div>
                        <div class="comments"><i class="fa fa-comment-o"></i>7</div>
                    </a>
                    <div class="sort"><i class="fa fa-headphones"></i></div>
                    <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                     <img class="contents_rep_Image bg" src="../../img/rookie/커버17.png"><!--//contents_rep_image-->
                    <div class="contents_title">
                        <em class="overflow">Lying</em>
                        <strong>Ballad</strong>
                        <p class="overflow">명곡</p>
                    </div><!--//contents_title-->
                    <div class="nameCard_rookie">
                        <a href=""  class="overflow">oce</a>
                        <span><i class="fa fa-users"></i> 41</span>
                       <img class="nameCard_rookie_profile bg" src = "../img/rookie/프로필24.jpg"/><!--//nameCard_rookie_profile-->
                    </div><!--//nameCard_rookie -->
                </div><!--//card_rookie_contents-->
                </li>
                <li>
                <div class="card_rookie_contents">
                    <a href=""  class="cover">
                        <div class="like"><i class="fa fa-heart"></i>375</div>
                        <div class="view"><i class="fa fa-eye"></i>2977</div>
                        <div class="comments"><i class="fa fa-comment-o"></i>7</div>
                    </a>
                    <div class="sort"><i class="fa fa-headphones"></i></div>
                    <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                     <img class="contents_rep_Image bg" src="../../img/rookie/커버18.jpg"><!--//contents_rep_image-->
                    <div class="contents_title">
                        <em class="overflow">Lying</em>
                        <strong>R&B</strong>
                        <p class="overflow">'Show Me Luv'</p>
                    </div><!--//contents_title-->
                    <div class="nameCard_rookie">
                        <a href=""  class="overflow">Fuice</a>
                        <span><i class="fa fa-users"></i> 2</span>
                        <img class="nameCard_rookie_profile bg" src = "../img/rookie/프로필25.jpg"/><!--//nameCard_rookie_profile-->
                    </div><!--//nameCard_rookie -->
                </div><!--//card_rookie_contents-->
                </li>
                <li>
                <div class="card_rookie_contents">
                    <a href=""  class="cover">
                        <div class="like"><i class="fa fa-heart"></i>734</div>
                        <div class="view"><i class="fa fa-eye"></i>1098</div>
                        <div class="comments"><i class="fa fa-comment-o"></i>4</div>
                    </a>
                    <div class="sort"><i class="fa fa-headphones"></i></div>
                    <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                     <img class="contents_rep_Image bg" src="../../img/rookie/커버19.jpg"><!--//contents_rep_image-->
                    <div class="contents_title">
                        <em class="overflow">순한 뉘앙스를 풍기는</em>
                        <strong>Pop</strong>
                        <p class="overflow">성적인 관계, 래퍼로서의 자신감, 자신이 일궈낸 성공, 무엇을 노래하든 단어 선정이나 표현 방식이 유순한 편이었다.</p>
                    </div><!--//contents_title-->
                    <div class="nameCard_rookie">
                        <a href=""  class="overflow">로꾜</a>
                        <span><i class="fa fa-users"></i> 72</span>
                        <img class="nameCard_rookie_profile bg" src = "../img/rookie/프로필26.jpg"/><!--//nameCard_rookie_profile-->
                    </div><!--//nameCard_rookie -->
                </div><!--//card_rookie_contents-->
                </li>
                <li>
                <div class="card_rookie_contents">
                    <a href=""  class="cover">
                        <div class="like"><i class="fa fa-heart"></i>84</div>
                        <div class="view"><i class="fa fa-eye"></i>2769</div>
                        <div class="comments"><i class="fa fa-comment-o"></i>72</div>
                    </a>
                    <div class="sort"><i class="fa fa-headphones"></i></div>
                    <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                     <img class="contents_rep_Image bg" src="../../img/rookie/커버20.png"><!--//contents_rep_image-->
                    <div class="contents_title">
                        <em class="overflow">착하디착한 모습</em>
                        <strong>Folk</strong>
                        <p class="overflow">은밀함이 잘 배 있어 많은 여성들이 이 곡을 듣고 심쿵했을지도 모르겠다</p>
                    </div><!--//contents_title-->
                    <div class="nameCard_rookie">
                        <a href=""  class="overflow">Kiwi</a>
                        <span><i class="fa fa-users"></i> 17</span>
                        <img class="nameCard_rookie_profile bg" src = "../img/rookie/프로필27.jpg"/><!--//nameCard_rookie_profile-->
                    </div><!--//nameCard_rookie -->
                </div><!--//card_rookie_contents-->
                </li>
                <li>
                <div class="card_rookie_contents">
                    <a href=""  class="cover">
                        <div class="like"><i class="fa fa-heart"></i>875</div>
                        <div class="view"><i class="fa fa-eye"></i>934</div>
                        <div class="comments"><i class="fa fa-comment-o"></i>12</div>
                    </a>
                    <div class="sort"><i class="fa fa-video-camera"></i></div>
                    <!--//sort -영상일 경우 <i class="fa fa-video-camera"></i>-->
                     <img class="contents_rep_Image bg" src="../../img/rookie/커버21.jpg"><!--//contents_rep_image-->
                    <div class="contents_title">
                        <em class="overflow">So Bad</em>
                        <strong>Rap</strong>
                        <p class="overflow"> 자신도 뻔한 욕망의 노예라고 하나, 한편으론 "너를 찡그리게 하고 싶"다는 말이 귀여워 보이기까지 한다.</p>
                    </div><!--//contents_title-->
                    <div class="nameCard_rookie">
                        <a href=""  class="overflow">감아'</a>
                        <span><i class="fa fa-users"></i> 62</span>
                        <img class="nameCard_rookie_profile bg" src = "../img/rookie/프로필28.jpg"/><!--//nameCard_rookie_profile-->
                    </div><!--//nameCard_rookie -->
                </div><!--//card_rookie_contents-->
                </li>
            </ul>
        </div><!--//box_newfeed -->
        <div id="boxRookie">
            <!--루키 카드-->
            <ul>
            <li><div class="card_rookie">
                <a class="cover" href="/rookie/58"></a>
                <img class="card_rookie_profile bg" src="../../img/rookie/FreshKJ2.jpg"><!--//card_rookie_profile-->
                <em class="overflow">FRESH KIWI JAM</em>
                <div class="rookie_genre" class="overflow">Electronica</div><!--//rookie_genre-->
                <span class="c_audio"><i class="fa fa-headphones"></i> 8</span>
                <span class="c_video"><i class="fa fa-video-camera"></i> 6</span>
                <span class="c_follow"><i class="fa fa-users"></i> 1000</span>
            </div><!--//card_rookie --></li>
			
			<li><div class="card_rookie">
                <a href=""  class="cover" href="contentDetail(수림).html"></a>
                 <img class="card_rookie_profile bg" src="../../img/rookie/프로필2.jpg"><!--//card_rookie_profile-->
                <em class="overflow">시몬스침대</em>
                <div class="rookie_genre" class="overflow">Pop</div><!--//rookie_genre-->
                <span class="c_audio"><i class="fa fa-headphones"></i> 253</span>
                <span class="c_video"><i class="fa fa-video-camera"></i> 12</span>
                <span class="c_follow"><i class="fa fa-users"></i> 999</span>
            </div><!--//card_rookie --></li>
            <li><div class="card_rookie">
                <a href=""  class="cover" href="contentDetail(수림).html"></a>
                 <img class="card_rookie_profile bg" src="../../img/rookie/프로필3.jpg"><!--//card_rookie_profile-->
                <em class="overflow">연레기</em>
                <div class="rookie_genre" class="overflow">Hiphop</div><!--//rookie_genre-->
                <span class="c_audio"><i class="fa fa-headphones"></i> 19</span>
                <span class="c_video"><i class="fa fa-video-camera"></i> 2</span>
                <span class="c_follow"><i class="fa fa-users"></i> 8</span>
            </div><!--//card_rookie --></li>
            <li><div class="card_rookie">
                <a href=""  class="cover" href="contentDetail(수림).html"></a>
                <img class="card_rookie_profile bg" src="../../img/rookie/프로필4.jpg"><!--//card_rookie_profile-->
                <em class="overflow">시내야제발</em>
                <div class="rookie_genre" class="overflow">Folk</div><!--//rookie_genre-->
                <span class="c_audio"><i class="fa fa-headphones"></i> 11</span>
                <span class="c_video"><i class="fa fa-video-camera"></i> 1</span>
                <span class="c_follow"><i class="fa fa-users"></i> 70</span>
            </div><!--//card_rookie --></li>
            <li><div class="card_rookie">
                <a href=""  class="cover" href="contentDetail(수림).html"></a>
                 <img class="card_rookie_profile bg" src="../../img/rookie/프로필5.jpg"><!--//card_rookie_profile-->
                <em class="overflow">Zi존 은기</em>
                <div class="rookie_genre" class="overflow">R&B</div><!--//rookie_genre-->
                <span class="c_audio"><i class="fa fa-headphones"></i> 2</span>
                <span class="c_video"><i class="fa fa-video-camera"></i> 1</span>
                <span class="c_follow"><i class="fa fa-users"></i> 102</span>
            </div><!--//card_rookie --></li>
            <li><div class="card_rookie">
                <a href=""  class="cover" href="contentDetail(수림).html"></a>
                <img class="card_rookie_profile bg" src="../../img/rookie/프로필6.jpg"><!--//card_rookie_profile-->
                <em class="overflow">정우성무니</em>
                <div class="rookie_genre" class="overflow">Rap</div><!--//rookie_genre-->
                <span class="c_audio"><i class="fa fa-headphones"></i> 9</span>
                <span class="c_video"><i class="fa fa-video-camera"></i> 47</span>
                <span class="c_follow"><i class="fa fa-users"></i> 90</span>
            </div><!--//card_rookie --></li>
            <li><div class="card_rookie">
                <a href=""  class="cover" href="contentDetail(수림).html"></a>
                 <img class="card_rookie_profile bg" src="../../img/rookie/프로필7.jpg"><!--//card_rookie_profile-->
                <em class="overflow">Jaebal</em>
                <div class="rookie_genre" class="overflow">Ballad</div><!--//rookie_genre-->
                <span class="c_audio"><i class="fa fa-headphones"></i> 20</span>
                <span class="c_video"><i class="fa fa-video-camera"></i> 62</span>
                <span class="c_follow"><i class="fa fa-users"></i> 275</span>
            </div><!--//card_rookie --></li>
            <li><div class="card_rookie">
                <a href=""  class="cover" href="contentDetail(수림).html"></a>
                <img class="card_rookie_profile bg" src="../../img/rookie/프로필8.jpg"><!--//card_rookie_profile-->
                <em class="overflow">fpRh</em>
                <div class="rookie_genre" class="overflow">Electronica</div><!--//rookie_genre-->
                <span class="c_audio"><i class="fa fa-headphones"></i> 23</span>
                <span class="c_video"><i class="fa fa-video-camera"></i> 6</span>
                <span class="c_follow"><i class="fa fa-users"></i> 1</span>
            </div><!--//card_rookie --></li>
            <li><div class="card_rookie">
                <a href=""  class="cover" href="contentDetail(수림).html"></a>
                <img class="card_rookie_profile bg" src="../../img/rookie/프로필9.jpg"><!--//card_rookie_profile-->
                <em class="overflow">Rain</em>
                <div class="rookie_genre" class="overflow">Pop</div><!--//rookie_genre-->
                <span class="c_audio"><i class="fa fa-headphones"></i> 26</span>
                <span class="c_video"><i class="fa fa-video-camera"></i> 33</span>
                <span class="c_follow"><i class="fa fa-users"></i> 0</span>
            </div><!--//card_rookie --></li>
            <li><div class="card_rookie">
                <a href=""  class="cover" href="contentDetail(수림).html"></a>
                <img class="card_rookie_profile bg" src="../../img/rookie/프로필10.jpg"><!--//card_rookie_profile-->
                <em class="overflow">에블바데</em>
                <div class="rookie_genre" class="overflow">Folk</div><!--//rookie_genre-->
                <span class="c_audio"><i class="fa fa-headphones"></i> 1</span>
                <span class="c_video"><i class="fa fa-video-camera"></i> 1</span>
                <span class="c_follow"><i class="fa fa-users"></i> 1</span>
            </div><!--//card_rookie --></li>
            <li><div class="card_rookie">
                <a href=""  class="cover" href="contentDetail(수림).html"></a>
                 <img class="card_rookie_profile bg" src="../../img/rookie/프로필12.jpg"><!--//card_rookie_profile-->
                <em class="overflow">당나귀</em>
                <div class="rookie_genre" class="overflow">Pop</div><!--//rookie_genre-->
                <span class="c_audio"><i class="fa fa-headphones"></i> 2</span>
                <span class="c_video"><i class="fa fa-video-camera"></i> 63</span>
                <span class="c_follow"><i class="fa fa-users"></i> 3</span>
            </div><!--//card_rookie --></li>
            <li><div class="card_rookie">
                <a href=""  class="cover" href="contentDetail(수림).html"></a>
                 <img class="card_rookie_profile bg" src="../../img/rookie/프로필13.jpg"><!--//card_rookie_profile-->
                <em class="overflow">FE</em>
                <div class="rookie_genre" class="overflow">Hiphop</div><!--//rookie_genre-->
                <span class="c_audio"><i class="fa fa-headphones"></i> 1</span>
                <span class="c_video"><i class="fa fa-video-camera"></i> 1</span>
                <span class="c_follow"><i class="fa fa-users"></i> 4</span>
            </div><!--//card_rookie --></li>
            <li><div class="card_rookie">
                <a href=""  class="cover" href="contentDetail(수림).html"></a>
                <img class="card_rookie_profile bg" src="../../img/rookie/프로필14.jpg"><!--//card_rookie_profile-->
                <em class="overflow">레볼루션</em>
                <div class="rookie_genre" class="overflow">Electronica</div><!--//rookie_genre-->
                <span class="c_audio"><i class="fa fa-headphones"></i> 14</span>
                <span class="c_video"><i class="fa fa-video-camera"></i> 2</span>
                <span class="c_follow"><i class="fa fa-users"></i> 153</span>
            </div><!--//card_rookie --></li>
            <li><div class="card_rookie">
                <a href=""  class="cover" href="contentDetail(수림).html"></a>
                 <img class="card_rookie_profile bg" src="../../img/rookie/프로필15.jpg"><!--//card_rookie_profile-->
                <em class="overflow">FE</em>
                <div class="rookie_genre" class="overflow">Pop</div><!--//rookie_genre-->
                <span class="c_audio"><i class="fa fa-headphones"></i> 9</span>
                <span class="c_video"><i class="fa fa-video-camera"></i> 7</span>
                <span class="c_follow"><i class="fa fa-users"></i> 7</span>
            </div><!--//card_rookie --></li>
            <li><div class="card_rookie">
                <a href=""  class="cover" href="contentDetail(수림).html"></a>
                 <img class="card_rookie_profile bg" src="../../img/rookie/프로필16.jpg"><!--//card_rookie_profile-->
                <em class="overflow">노래</em>
                <div class="rookie_genre" class="overflow">Electronica</div><!--//rookie_genre-->
                <span class="c_audio"><i class="fa fa-headphones"></i> 9</span>
                <span class="c_video"><i class="fa fa-video-camera"></i> 9</span>
                <span class="c_follow"><i class="fa fa-users"></i> 29</span>
            </div><!--//card_rookie --></li>
            <li><div class="card_rookie">
                <a href=""  class="cover" href="contentDetail(수림).html"></a>
                 <img class="card_rookie_profile bg" src="../../img/rookie/프로필17.jpg"><!--//card_rookie_profile-->
                <em class="overflow">아홉수</em>
                <div class="rookie_genre" class="overflow">Rap</div><!--//rookie_genre-->
                <span class="c_audio"><i class="fa fa-headphones"></i> 14</span>
                <span class="c_video"><i class="fa fa-video-camera"></i> 2</span>
                <span class="c_follow"><i class="fa fa-users"></i> 124</span>
            </div><!--//card_rookie --></li>
            <li><div class="card_rookie">
                <a href=""  class="cover" href="contentDetail(수림).html"></a>
                 <img class="card_rookie_profile bg" src="../../img/rookie/프로필18.jpg"><!--//card_rookie_profile-->
                <em class="overflow">KIWI</em>
                <div class="rookie_genre" class="overflow">Folk</div><!--//rookie_genre-->
                <span class="c_audio"><i class="fa fa-headphones"></i> 19</span>
                <span class="c_video"><i class="fa fa-video-camera"></i> 26</span>
                <span class="c_follow"><i class="fa fa-users"></i> 64</span>
            </div><!--//card_rookie --></li>
            <li><div class="card_rookie">
                <a href=""  class="cover" href="contentDetail(수림).html"></a>
                <img class="card_rookie_profile bg" src="../../img/rookie/프로필19.jpg"><!--//card_rookie_profile-->
                <em class="overflow">왕눈이</em>
                <div class="rookie_genre" class="overflow">Pop</div><!--//rookie_genre-->
                <span class="c_audio"><i class="fa fa-headphones"></i> 53</span>
                <span class="c_video"><i class="fa fa-video-camera"></i> 52</span>
                <span class="c_follow"><i class="fa fa-users"></i> 25</span>
            </div><!--//card_rookie --></li>
            <li><div class="card_rookie">
                <a href=""  class="cover" href="contentDetail(수림).html"></a>
                 <img class="card_rookie_profile bg" src="../../img/rookie/프로필20.jpg"><!--//card_rookie_profile-->
                <em class="overflow">JEwel</em>
                <div class="rookie_genre" class="overflow">Rap</div><!--//rookie_genre-->
                <span class="c_audio"><i class="fa fa-headphones"></i> 25</span>
                <span class="c_video"><i class="fa fa-video-camera"></i> 33</span>
                <span class="c_follow"><i class="fa fa-users"></i> 42</span>
            </div><!--//card_rookie --></li>
            <li><div class="card_rookie">
                <a href=""  class="cover" href="contentDetail(수림).html"></a>
                 <img class="card_rookie_profile bg" src="../../img/rookie/프로필21.jpg"><!--//card_rookie_profile-->
                <em class="overflow">아이폰</em>
                <div class="rookie_genre" class="overflow">Rap</div><!--//rookie_genre-->
                <span class="c_audio"><i class="fa fa-headphones"></i> 343</span>
                <span class="c_video"><i class="fa fa-video-camera"></i> 12</span>
                <span class="c_follow"><i class="fa fa-users"></i> 152</span>
            </div><!--//card_rookie --></li>
            </ul>
        </div><!--//box_rookie -->
    </div><!--//wrap_contents-->


</div><!--//section_rookie-->

<div class="box_user_upgrade go">
</div><!--//boxUserUpgrade -->
<div class="user_upgrade go">
    <div class="type_set">
        <div class="undo"><i class="fa fa-undo"></i></div>
        <h1>루키가 되어보세요!</h1>
        <div class="solo"><img src="../img/rookie/singer.png" width="150" height="150"/><em>SOLO USER</em></div>
        <div class="band"><img src="../img/rookie/band.png" width="150" height="150"/><em>BAND USER</em></div>
    </div><!--//typeSet -->
    <div class="plus_band">
        <div class="undo"><i class="fa fa-undo"></i></div>
        <h1>밴드원을 추가해주세요!</h1>

        <div class="box_search search"><i class="fa fa-search"></i><input placeholder=' 유저 닉네임을 입력해주세요.'/></div>
        <div class="find_user">
            <!--//네임카드만 나ㅗㅇ기 -->
        </div><!--//box_search-->

        <button class="bander_plus">밴드원 추가하기</button>
        <button class="later_plus">나중에 추가하기</button>
    </div><!--//plusBand -->
    <div class="cardSet" >
        <div class="undo"><i class="fa fa-undo"></i></div>
        <h1>당신의 루키 카드를 만들어보세요!</h1>

        <div class="setcard_rookie">
            <label>
            <div id="setcardRookieProfile" class="bg">
            <input type="file" id="inputRookieProfile" hidden/>
           	<img src="" id="imgRookieProfile"/>
            </div><!--//card_rookie_profile-->
            </label>
            <input class="setname" placeholder="활동명을 입력해주세요."/>
            <button class="genreBeforeSet">대표 장르</button>
            <span id="c_audio"><i class="fa fa-headphones"></i> 0</span>
            <span id="c_video"><i class="fa fa-video-camera"></i> 0</span>
            <span id="c_follow"><i class="fa fa-users"></i> 0</span>
        </div><!--//card_rookie -->
        <div class="setgenre">
            <h3> ▶ 대표 장르를 선택해주세요.</h3>
            <button>Pop</button>
            <button>Rock</button>
            <button>Electronica</button>
            <button>Jazz</button>
            <button>Hiphop</button>
            <button>R&B</button>
            <button>Fork</button>
            <button>ETC</button>
        </div><!--//setgenre -->
        <a class="uploadLink" href="/rookie/registForm">컨텐츠 업로드하기</a>
    </div><!--//cardSet-->
</div><!--//userUpgrade-->
</div>



	<c:import url="../view/template/footer.jsp"></c:import>
<script src="../../js/jquery-3.2.1.min.js"></script>
<script>

    var $box_search = $(".box_search");

    $box_search.click(function () {

    })
    $(".box_search i").click(function () {
        var x = $box_search.css("width");
        if(x==="235px"){
            $box_search.css("width","50");
            $(".box_search input").css("width","0");
            $(this).css("color","#969696");
        }else{
            $(".box_search input").css("width","170").focus();
            $box_search.css("width","235");
            $(this).css("color","#99cccc");
        }
    })
    /*
     * 루키버튼 & 큰 컨텐츠 종류 제어
     * */
    var $box_rookie = $("#boxRookie");
    var $rookieBtn = $("#rookieBtn");

    var $box_content = $("#boxNewfeed");
    var $feedBtn = $("#newfeedBtn");

    $rookieBtn.click(function () {
        $rookieBtn.addClass("on");
        $feedBtn.removeClass("on");
        $box_rookie.show();
        $box_content.hide();

    })

    $feedBtn.click(function () {
        $feedBtn.addClass("on");
        $rookieBtn.removeClass("on");
        $box_rookie.hide();
        $box_content.show();
    })


    var $left = $(".nav>.fa-chevron-left");
    var $right = $(".nav>.fa-chevron-right");

    var $contents = $(".showContents>ul");
    var x = 0;
    $left.click(function () {
//        alert($contents.css("top")+x);
        x-=1000;
        if(x<-2000){
            x= 0;
            $contents.css("left",x);
        }else{
            $contents.css("left",x);
        }

    })
    $right.click(function () {
        x+=1000;
        if(x>0){
            x= -2000;
            $contents.css("left",x);
        }else{
            $contents.css("left",x);
        }
    })
    var $genre = $(".genreBeforeSet");
    var $genrebtns = $(".setgenre button");

    $genrebtns.click(function () {
       var selectGenre = $(this).text();
       $genre.text(selectGenre);
    });

    var $typeSet = $(".type_set");
    var $solo = $(".solo");
    var $band = $(".band");

    var $plusBand = $(".plus_band");
    var $later_plus = $(".later_plus");
    var $bander_plus = $(".bander_plus");

    var $cardSet = $(".cardSet");

    var $box = $(".box_user_upgrade");
    var $go = $(".go");

    var $register = $("#register");

    var $undo = $(".undo");

    $undo.click(function () {
        $typeSet.show();
        $cardSet.hide();
        $plusBand.hide();
    })

    $register.click(function () {
        $box.fadeIn(500);
        $go.fadeIn(500);
    })

    $solo.click(function () {
        $typeSet.hide();
        $cardSet.show();
    })
    $band.click(function () {
        $typeSet.hide();
        $plusBand.show();
    })
    $later_plus.click(function () {
        $plusBand.hide();
        $cardSet.show();
    })
    $bander_plus.click(function () {
        $plusBand.hide();
        $cardSet.show();
    })

    $box.click(function () {
        $go.fadeOut(500);
    })
    
    $("#q").keyup(function (e) {
        var code = e.keyCode;
        if(code==13) {
            window.location.href="/rookie/search";
        }
    })

    $("#inputRookieProfile").change(function () {

        $("#imgRookieProfile").attr("src","img/rookie/박원1.jpg").css("display","block");
	})
</script>
</body>
</html>