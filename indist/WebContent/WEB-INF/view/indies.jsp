<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Indie - INDIST</title>
	<c:import url="template/link.jsp"></c:import>
	<link rel="stylesheet" href="../css/indie/indieTemplate.css"/>
	<link rel="stylesheet" href="../css/indie/main/cate_search.css">
	<link rel="stylesheet" href="../css/indie/main/hotIndie.css"/>
	<link rel="stylesheet" href="../css/indie/main/list.css"/>
	<link rel="shortcut icon" type="image/x-icon" href="/img/Logo/favicon.ico" />
    
	<style>
		.change {
			display: none;
		}
	</style>
</head>
<body>
    <div id="wrap">
        <h1 class="screen_out">Indie Main Page</h1>
		<c:import url="../view/template/header.jsp"></c:import>
        <div id="content">
            <div id="hotIndie">
                <span class="arrow left">
                    <span class="fa-stack fa-lg">
                        <i class="fa fa-circle-o fa-stack-2x"></i>
                        <i class="fa fa-chevron-left fa-stack-1x"></i>
                    </span>
                </span>
                <div id="hotIndieList">
                    <ul>
                        <li>
                            <img src="../img/indie/profile/indi_profile_soran.jpg"/>
                            <span class="cover"><a href=""></a>소란(SORAN)</span>
                        </li>
                        <li>
                            <img src="../img/indie/profile/indi_profile_10cm.jpg"/>
                            <span class="cover"><a href=""></a>10cm</span>
                        </li>
                        <li>
                        	<img src="../img/indie/profile/indi_profile_볼빨간사춘기.jpg"/>
                        	<span class="cover"><a href=""></a>볼빨간 사춘기</span>
                       	</li>
                        <li>
                            <img src="../img/indie/profile/indi_profile_수란.jpg"/>
                            <span class="cover"><a href=""></a>수란(SURAN)</span>
                        </li>
                        <li>
                        	<img src="../img/indie/profile/indi_profile_혁오.jpg"/>
                        	<span class="cover"><a href=""></a>혁오(HYUKOH)</span>
                        </li>
                        <li>
                        	<img src="../img/indie/profile/indi_profile_신현희와김루트.jpg"/>
                        	<span class="cover"><a href=""></a>신현희와 김루트</span>
                       	</li>
                       	<li>
                        	<img src="../img/indie/profile/indi_profile_어반자카파.jpg"/>
                        	<span class="cover"><a href=""></a>어반 자카파(Urban Zakapa)</span>
                       	</li>
                       	<li>
                        	<img src="../img/indie/profile/indi_profile_브로콜리너마저.jpg"/>
                        	<span class="cover"><a href=""></a>브로콜리 너마저</span>
                       	</li>
                       	<li>
                        	<img src="../img/indie/profile/indi_profile_국가스텐.jpg"/>
                        	<span class="cover"><a href=""></a>국카스텐(Guckkasten)</span>
                       	</li>
                    </ul>
                </div> <!-- // .hot_indie_list -->
                <span class="arrow right">
                    <span class="fa-stack fa-lg">
                        <i class="fa fa-circle-o fa-stack-2x"></i>
                        <i class="fa fa-chevron-right fa-stack-1x"></i>
                    </span>
                </span>
            </div> <!-- // #hotIndie -->
            <div id="contentAux">
                <div id="indieListCate">
                    <ul>
                        <li class="on">All</li>
                        <li>Pop</li>
                        <li>Rock</li>
                        <li>Electronic</li>
                        <li>Jazz</li>
                        <li>Hip-Hop</li>
                        <li>R&B</li>
                        <li>Folk</li>
                        <li>Etc</li>
                    </ul>
                    <select id="indieListOrder" name="option" class="selectBox_album">
                        <option value="newest">최신순</option>
                        <option value="likes">인기순</option>
                    </select>
                </div> <!-- // #indieListCate -->
                <div id="indieSearch">
                    <form id="indieSearchForm" action="/indie/search" method="post">
                        <input id="q" name="q" placeholder="검색어를 입력하세요"/>
                        <button class="btn_indie_search"><i class="fa fa-search"></i></button>
                    </form> <!-- // #indieSearchForm -->
                    <div id="indieAutoFrame">
                        <div class="search_indie">
                            <h3>아티스트</h3>
                            <ul>
                                <li>
                                    <a href="">
                                        <img src="../img/indie/profile/soran.jpg" alt=""/>
                                        <div class="musician_info">
                                            <span class="musician_name ellipsis">소란(SORAN)</span>
                                            <span class="debut_genre">2009 | Ballad</span>
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
                                        <img src="../img/indie/album/perfectday.jpg" alt=""/>
                                        <div class="album_info">
                                            <span class="album_name ellipsis">Perfect Day</span>
                                            <span class="musician_name ellipsis">소란(SORAN)</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="../img/indie/album/album_cover.jpg" alt=""/>
                                        <div class="album_info">
                                            <span class="album_name ellipsis">싱포유 - 네번째이야기 가족을 부탁해</span>
                                            <span class="musician_name ellipsis">소란(SORAN)</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="../img/indie/album/study.jpg" alt=""/>
                                        <div class="album_info">
                                            <span class="album_name ellipsis">너를 공부해</span>
                                            <span class="musician_name ellipsis">소란(SORAN)</span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="search_music">
                            <h3>곡</h3>
                            <ul>
                                <li>
                                    <a href="">
                                        <img src="../img/indie/album/perfectday.jpg" alt=""/>
                                        <div class="music_info">
                                            <span class="music_name ellipsis">Perfect Day</span>
                                            <span class="musician_name ellipsis">소란(SORAN)</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="../img/indie/album/mom.jpg" alt=""/>
                                        <div class="music_info">
                                            <span class="music_name ellipsis">엄마, 기억나</span>
                                            <span class="musician_name ellipsis">소란(SORAN)</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="img/indie/album/study.jpg" alt=""/>
                                        <div class="music_info">
                                            <span class="music_name ellipsis">너를 공부해</span>
                                            <span class="musician_name ellipsis">소란(SORAN)</span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div> <!-- // #indieSearch -->
                <div id="indieList">
                    <ul class="default">
                    	<li class="rock">
                            <span class="indie_profile">
                                <img src="../img/indie/profile/soran.jpg" alt="soran"/>
                            </span>
                            <span class="musician_name">
                                <a href="indieDetail.html">소란(SORAN)</a>
                            </span>
                            <span class="rep_genre_box">
                                <span class="rep_genre">
                                    Rock
                                </span>
                            </span>
                            <span class="musician_contents">
                                <span class="musician_content album">
                                    <em>23</em> Album
                                </span>
                                <span class="musician_content concert">
                                    <em>23</em> Concert</span>
							</span>
                            <span class="musician_likes">
                                <i class="fa fa-users"></i>
                                <em>1,956</em>
                            </span>
                        </li>
                        <li>
                            <span class="indie_profile">
                                <img src="../img/indie/profile/10cm.jpg" alt="10cm"/>
                            </span>
                            <span class="musician_name">
                                <a href="indieDetail.html">10cm</a>
                            </span>
                            <span class="rep_genre_box">
                                <span class="rep_genre">
                                    Folk
                                </span>
                            </span>
                            <span class="musician_contents">
                                <span class="musician_content album">
                                    <em>40</em> Album
                                </span>
                                <span class="musician_content concert">
                                    <em>100</em> Concert</span>
                                </span>
                            <span class="musician_likes">
                                <i class="fa fa-users"></i>
                                <em>3,761</em>
                            </span>
                        </li>
                        <li>
                            <span class="indie_profile">
                                <img src="../img/indie/profile/hyukoh.jpg" alt="hyukoh"/>
                            </span>
                            <span class="musician_name">
                                <a href="indieDetail.html">혁오(HYUKOH)</a>
                            </span>
                            <span class="rep_genre_box">
                                <span class="rep_genre">
                                    Ballad
                                </span>
                            </span>
                            <span class="musician_contents">
                                <span class="musician_content album">
                                    <em>7</em> Album
                                </span>
                                <span class="musician_content concert">
                                    <em>5</em> Concert</span>
                                </span>
                            <span class="musician_likes">
                                <i class="fa fa-users"></i>
                                <em>3,377</em>
                            </span>
                        </li>
                        <li>
                            <span class="indie_profile">
                                <img src="../img/indie/profile/shin_kim.jpg" alt="shin_kim"/>
                            </span>
                            <span class="musician_name">
                                <a href="indieDetail.html">신현희와 김루트</a>
                            </span>
                            <span class="rep_genre_box">
                                <span class="rep_genre">
                                    Folk
                                </span>
                            </span>
                            <span class="musician_contents">
                                <span class="musician_content album">
                                    <em>16</em> Album
                                </span>
                                <span class="musician_content concert">
                                    <em>1</em> Concert</span>
							</span>
                            <span class="musician_likes">
                                <i class="fa fa-users"></i>
                                <em>3,066</em>
                            </span>
                        </li>
                        <li>
                            <span class="indie_profile">
                                <img src="../img/indie/profile/boll.jpg" alt="boll"/>
                            </span>
                            <span class="musician_name">
                                <a href="indieDetail.html">볼빨간 사춘기</a>
                            </span>
                            <span class="rep_genre_box">
                                <span class="rep_genre">
                                    Folk
                                </span>
                            </span>
                            <span class="musician_contents">
                                <span class="musician_content album">
                                    <em>10</em> Album
                                </span>
                                <span class="musician_content concert">
                                    <em>2</em> Concert</span>
                                </span>
                            <span class="musician_likes">
                                <i class="fa fa-users"></i>
                                <em>4,536</em>
                            </span>
                        </li>
                        <li>
                            <span class="indie_profile">
                                <img src="img/indie/profile/urban.jpg" alt="urban"/>
                            </span>
                            <span class="musician_name">
                                <a href="indieDetail.html">어반 자카파(Urban Zakapa)</a>
                            </span>
                            <span class="rep_genre_box">
                                <span class="rep_genre">
                                    R&B
                                </span>
                            </span>
                            <span class="musician_contents">
                                <span class="musician_content album">
                                    <em>32</em> Album
                                </span>
                                <span class="musician_content concert">
                                    <em>88</em> Concert</span>
                                </span>
                            <span class="musician_likes">
                                <i class="fa fa-users"></i>
                                <em>4,923</em>
                            </span>
                        </li>
                    </ul>
                    <ul class="change">
                        <li>
                            <span class="indie_profile">
                                <img src="../img/indie/profile/10cm.jpg" alt="10cm"/>
                            </span>
                            <span class="musician_name">
                                <a href="indieDetail.html">10cm</a>
                            </span>
                            <span class="rep_genre_box">
                                <span class="rep_genre">
                                    Folk
                                </span>
                            </span>
                            <span class="musician_contents">
                                <span class="musician_content album">
                                    <em>40</em> Album
                                </span>
                                <span class="musician_content concert">
                                    <em>100</em> Concert</span>
                                </span>
                            <span class="musician_likes">
                                <i class="fa fa-users"></i>
                                <em>3,761</em>
                            </span>
                        </li>
                        <li class="rock">
                            <span class="indie_profile">
                                <img src="../img/indie/profile/soran.jpg" alt="soran"/>
                            </span>
                            <span class="musician_name">
                                <a href="indieDetail.html">소란(SORAN)</a>
                            </span>
                            <span class="rep_genre_box">
                                <span class="rep_genre">
                                    Rock
                                </span>
                            </span>
                            <span class="musician_contents">
                                <span class="musician_content album">
                                    <em>23</em> Album
                                </span>
                                <span class="musician_content concert">
                                    <em>23</em> Concert</span>
							</span>
                            <span class="musician_likes">
                                <i class="fa fa-users"></i>
                                <em>1,956</em>
                            </span>
                        </li>
                        <li>
                            <span class="indie_profile">
                                <img src="../img/indie/profile/boll.jpg" alt="boll"/>
                            </span>
                            <span class="musician_name">
                                <a href="indieDetail.html">볼빨간 사춘기</a>
                            </span>
                            <span class="rep_genre_box">
                                <span class="rep_genre">
                                    Folk
                                </span>
                            </span>
                            <span class="musician_contents">
                                <span class="musician_content album">
                                    <em>10</em> Album
                                </span>
                                <span class="musician_content concert">
                                    <em>2</em> Concert</span>
                                </span>
                            <span class="musician_likes">
                                <i class="fa fa-users"></i>
                                <em>4,536</em>
                            </span>
                        </li>
                        <li>
                            <span class="indie_profile">
                                <img src="../img/indie/profile/hyukoh.jpg" alt="hyukoh"/>
                            </span>
                            <span class="musician_name">
                                <a href="indieDetail.html">혁오(HYUKOH)</a>
                            </span>
                            <span class="rep_genre_box">
                                <span class="rep_genre">
                                    Ballad
                                </span>
                            </span>
                            <span class="musician_contents">
                                <span class="musician_content album">
                                    <em>7</em> Album
                                </span>
                                <span class="musician_content concert">
                                    <em>5</em> Concert</span>
                                </span>
                            <span class="musician_likes">
                                <i class="fa fa-users"></i>
                                <em>3,377</em>
                            </span>
                        </li>
                        <li>
                            <span class="indie_profile">
                                <img src="img/indie/profile/urban.jpg" alt="urban"/>
                            </span>
                            <span class="musician_name">
                                <a href="indieDetail.html">어반 자카파(Urban Zakapa)</a>
                            </span>
                            <span class="rep_genre_box">
                                <span class="rep_genre">
                                    R&B
                                </span>
                            </span>
                            <span class="musician_contents">
                                <span class="musician_content album">
                                    <em>32</em> Album
                                </span>
                                <span class="musician_content concert">
                                    <em>88</em> Concert</span>
                                </span>
                            <span class="musician_likes">
                                <i class="fa fa-users"></i>
                                <em>4,923</em>
                            </span>
                        </li>
                        <li>
                            <span class="indie_profile">
                                <img src="../img/indie/profile/shin_kim.jpg" alt="shin_kim"/>
                            </span>
                            <span class="musician_name">
                                <a href="indieDetail.html">신현희와 김루트</a>
                            </span>
                            <span class="rep_genre_box">
                                <span class="rep_genre">
                                    Folk
                                </span>
                            </span>
                            <span class="musician_contents">
                                <span class="musician_content album">
                                    <em>16</em> Album
                                </span>
                                <span class="musician_content concert">
                                    <em>1</em> Concert</span>
							</span>
                            <span class="musician_likes">
                                <i class="fa fa-users"></i>
                                <em>3,066</em>
                            </span>
                        </li>
                    </ul>
                </div> <!-- // #indieList -->
            </div> <!-- // #indieList -->
        </div> <!-- // #content -->
        
	<c:import url="../view/template/footer.jsp"></c:import>
    </div> <!-- // #wrap -->
<script src="js/jquery-3.2.1.min.js"></script>
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
</script> <!-- tamplate -->
<script>
    var $hotIndieUl = $("#hotIndieList ul");
    var $indieArrow = $("#hotIndie .arrow");
    var hotIndiePosition = 0;
    $indieArrow.click(function () {
        var $this = $(this);
        if($this.hasClass("left")) {
            hotIndiePosition = hotIndiePosition - 1000;
            if(hotIndiePosition==-3000) {hotIndiePosition = 0;}
        }else {
            hotIndiePosition = hotIndiePosition + 1000;
            if(hotIndiePosition==1000) {hotIndiePosition = -2000;}
        }
        $hotIndieUl.css("left",hotIndiePosition);
    });
    var $q = $("#q");
    var $indieAuto = $("#indieAutoFrame");
    $q.keyup(function () {
    	var q = $q.val();
    	if(q=="소란") {
    		$indieAuto.css("height",466);
    	}else {
    		$indieAuto.css("height",0);
    	}
        /* ajax success 시 */
//        $("#indieAutoFrame").css("border","5px solid #424242");
    })
    var $btnSearch = $(".btn_indie_search");
    $q.focus(function() {
        $btnSearch.css("right",15);
    }).blur(function(){
    	$indieAuto.css("height",0);
        $btnSearch.css("right","");
    });
    $("#indieListOrder").change(function () {
		$(".default").hide();
		$(".change").show();
	})
    var $liCate = $("#indieListCate li");
    $liCate.click(function () {
		var $this = $(this);
		var genre = $this.text();
		$liCate.removeClass("on");
		$this.addClass("on");
		if(genre=="Rock") {
			$("#indieList li").hide();
			$("#indieList .change li.rock").show();
		}
	})
	
</script> <!-- indies page -->
</body>
</html>