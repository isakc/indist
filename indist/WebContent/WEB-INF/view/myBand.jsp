<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    
    <c:import url="../view/template/link.jsp"></c:import>
    <title>내정보</title>
    <style>

        #content{
            width: 1000px;
            margin: auto;
            min-height: 800px;
        }

        #footer{
            margin-top: 100px;
        }

        /* 밴드 리스트 css */
        .card_rookie {
            width: 230px;
            height: 320px;
            background-color: #fff;
            position: relative;
            float: left;
            margin: 10px;
            text-align: center;

            /*외곽선 추가*/
            box-shadow: 0 0 1px #424242;
        }

        .card_rookie:hover {
            cursor: pointer;
        }

        .card_rookie span {
            color: #969696;
            display: block;
            position: absolute;
        }

        .card_rookie em {
            text-align: center;
            display: block;
            width: 180px;
            color: #99cccc;
            position: absolute;
            top: 180px;
            left: 25px;
            font-size: 20px;
        }

        .card_rookie_profile {
            width: 148px;
            height: 148px;
            border-radius: 200px;
            background-image: url(img/rookie/박원1.jpg);
            position: absolute;
            top: 20px;
            left: 40px;
            border: 1px solid #99cccc;
            /*background-color: #2B6396;*/
        }

        .card_rookie_profile img{
            width: 149px;
            height: 149px;
            border-radius: 200px;
            cursor: pointer;
        }

        .card_rookie_profile img:hover{
            background-color: #BDBDBD;
        }

        #inputImgUpload{
            display: none;
        }

        .rookie_genre {
            width: 80px;
            height: 8px;
            border-radius: 20px;
            text-align: center;
            line-height: 6px;
            font-size: 15px;
            background-color: rgba(0, 0, 0, .2);
            color: #424242;
            padding: 10px;
            position: absolute;
            top: 210px;
            left: 65px;
        }

        .c_audio {
            top: 245px;
            left: 75px;
            font-size: 14px;
        }

        .c_video {
            top: 245px;
            right: 75px;
            font-size: 14px;
        }

        .c_follow {
            width: 100px;
            text-align: center;
            top: 280px;
            left: 65px;
            font-size: 16px;
        }

        /*추가하는것*/

        .box_myBand_group{
            width: 1000px;
            overflow: hidden;
            margin-top: 50px;
        }

        #boxUpdateMyBand{
            display: none;
        }

        #card_MyBand {
            width: 1000px;
            overflow: hidden;
            /*background-color: turquoise;*/
        }

        #boxAddMember{
            display: none;
        }

        #listMyMember {
            width: 1000px;
            overflow: hidden;
            /*background-color: indigo;*/
        }

        #boxMemberSearch {
            width: 1000px;
            overflow: hidden;
            /*background-color: turquoise;*/
        }

        /*수정하는 input 요소 추가*/
        .card_rookie>input {
            text-align: center;
            display: block;
            width: 180px;
            color: #99cccc;
            position: absolute;
            top: 180px;
            left: 25px;
            font-size: 20px;
        }

        .card_rookie input {
            color: #000;
        }

        .card_rookie input:focus{
            outline: none;
        }

        .card_rookie .fa-plus {
            font-size: 100px;
            margin-top: 100px;
        }

        /*장르 선택 리스트 추가*/
        #boxBandGenre{
            width: 230px;
            height: 80px;
            position: absolute;
            top: 210px;
            /*background-color: #0099cc;*/
        }

        .rookie_genre_list{
            /*background-color: red;*/
            width: 85px;
            height: 8px;
            font-size: 15px;
            padding: 10px;
            border-radius: 20px;
            background-color: rgba(0, 0, 0, .2);
            margin-top: 10px;
            margin-right: 5px;
            margin-left: 5px;
            float:left;
            cursor: pointer;
            line-height: 8px;
        }

        .rookie_genre_list:hover{
            background-color: rgba(0, 0, 0, .5);
        }

        .rookie_genre_list.on{
            background-color: rgba(0, 0, 0, .5);
        }

        #listAddMember{
            width: 1000px;
            overflow: hidden;
        }

        #inputMemberSearch{
            width: 300px;
            height: 30px;
            margin-left: 30px;
            font-family: FontAwesome;
            font-size: 15px;
            padding-left: 20px;
            border-radius: 20px;
            border: 1px solid #424242;
        }

        #inputMemberSearch:focus{
            outline: none;
        }

        .card_rookie_update{
            height: 400px;
        }

        .card_rookie_update:hover{
            cursor: auto;
        }

        h2{
            font-size: 30px;
        }

        .rookie_genre_choice{
            font-size: 30px;
        }

        #boxMyBandBtn{
            margin-top: 100px;
            /*background-color: #2B6396;*/
            display: none;
        }

        #boxMyBandBtn button{
            border: none;
            cursor: pointer;
            width: 200px;
            height: 30px;
            font-family: 'Noto Sans KR', sans-serif;
            font-size: 20px;
            background-color: #99cccc;
        }
        
        .card_rookie .txt_wait{
			font-size: 30px;
			margin-top: 80px;
			color: white;
			background-color: #424242;
			display: inline-block;
			width: 230px;
			height: 30px;
			position: relative;
		}
    </style>
</head>
<body>

<c:import url="../view/template/header.jsp"></c:import>
    
<div id="content">
    <!-- 가입된 밴드 리스트 -->
    <div class="box_myBand_group" id="listMyBand">
        <h2>나의 밴드</h2>
        <ul>
        <c:forEach items="${myBand }" var="band">
            <li>
                <div class="card_rookie card_rookie_list">
                <input type="hidden" id="rookieNo" value=${band.no }  />
                    <a class="cover" href="contentDetail.html"></a>
                    <div class="card_rookie_profile" class="bg">
                    	<img src="img/rookie/rookieProfile/${band.profile }" />
                    </div><!--//card_rookie_profile-->
                    <em class="rookie_name" class="overflow">${band.name }</em>
                    <div class="rookie_genre" class="overflow">${band.genre }</div><!--//rookie_genre-->
                    <span class="c_audio"><i class="fa fa-headphones"></i> ${band.music }</span>
                    <span class="c_video"><i class="fa fa-video-camera"></i> ${band.video }</span>
                    <span class="c_follow"><i class="fa fa-users"></i> ${band.likes }</span>
                </div><!--//card_rookie -->
            </li>
          </c:forEach>

            <li>
                <div class="card_rookie card_rookie_plus">
                    <i class="fa fa-plus"></i>
                </div><!--//card_rookie -->
            </li>
        </ul>
    </div>

    <form id="formBandUpdate" method="post" enctype="multipart/form-data">

    </form>
    <!-- 밴드 수정, 추가 -->
    <div class="box_myBand_group" id="boxUpdateMyBand">
        <!--추가, 수정하는 밴드 카드 하나 -->
        <h2>밴드 수정</h2>
        <div id="card_MyBand">
            <div class="card_rookie card_rookie_update">
                <a class="cover" href="contentDetail"></a>
                <div class="card_rookie_profile" class="bg">
                    <label>
                        <img src="img/rookie/박원1.jpg" alt="프로필 기본사진"
                             id="imgProfile">
                        <input type="file" form="formBandUpdate" name="imgUpload"
                               id="inputImgUpload" accept="image/*"/>
                    </label>
                </div><!--//card_rookie_profile-->
                <input id="inputRookieName" name="rookieName" value=""/>
                <ul id="boxBandGenre">
                    <li><div class="rookie_genre_choice">장르선택</div></li>
                    <li><div class="rookie_genre_list">POP</div><!--//rookie_genre--></li>
                    <li><div class="rookie_genre_list">ROCK</div><!--//rookie_genre--></li>
                    <li><div class="rookie_genre_list">ELECTRONIC</div><!--//rookie_genre--></li>
                    <li><div class="rookie_genre_list">JAZZ</div><!--//rookie_genre--></li>
                    <li><div class="rookie_genre_list">HIP HOP</div><!--//rookie_genre--></li>
                    <li><div class="rookie_genre_list">R&B</div><!--//rookie_genre--></li>
                    <li><div class="rookie_genre_list">FOLK</div><!--//rookie_genre--></li>
                    <li><div class="rookie_genre_list">ETC</div><!--//rookie_genre--></li>
                </ul>
            </div><!--//card_rookie -->
        </div>

        <!--밴드에 속해있는 멤버리스트 -->
        <div>
            <h2>멤버 목록</h2>
            <ul id="listMyMember">

            </ul>
				<div class="card_rookie card_rookie_plus">
				<i class="fa fa-plus"></i>
				</div><!--//card_rookie -->
        </div>
    </div>

    <!-- 밴드멤버 추가 -->
    <div class="box_myBand_group" id="boxAddMember">
        <div id="boxMemberSearch">
            <input type="text" id="inputMemberSearch" name="searchString"
                   placeholder= "&#xf002; 검색어를 입력해주세요"/>
        </div>

        <div id="listAddMember">
            <ul id="listMember">

            </ul>
        </div>
    </div>
    <div id="boxMyBandBtn">
    <form action="/myBand" method="POST">
        <button type="submit">수정하기</button>
    </form>
    </div>
</div> <!-- #content end -->

<c:import url="../view/template/footer.jsp"></c:import>

<script type= "text/template" id="memberTmpl">
<@ _.each(members,function(member){ @>
<li>
	<div class="card_rookie">
	<a class="cover" href="contentDetail"></a>
	<div class="card_rookie_profile" class="bg">
		<img src="img/profile/<@=member.profile @>" />
	</div><!--//card_rookie_profile-->
	<@if(member.join === 'F'){ @>
	<span class="txt_wait">승인 대기중</span>
	<@ } @>
	<em class="overflow"><@=member.name @></em>
	<div class="rookie_genre" class="overflow"><@=member.genre @></div><!--//rookie_genre-->
	<span class="c_audio"><i class="fa fa-headphones"></i> <@=member.music @></span>
	<span class="c_video"><i class="fa fa-video-camera"></i> <@=member.video @></span>
	<span class="c_follow"><i class="fa fa-users"></i> <@=member.likes @></span>
	</div><!--//card_rookie -->
</li>
<@ })@>
</script>

<script type="text/template" id="memberListTmpl">
<@ _.each(rookies,function(rookie){ @>

<li data-no=<@=rookie.no @>>
	<div class="card_rookie" data-no=<@=rookie.no@>>
	<a class="cover" href="contentDetail"></a>
	<div class="card_rookie_profile" class="bg">
		<img src="img/rookie/rookieProfile/<@=rookie.profile @>" />
	</div><!--//card_rookie_profile-->
	<em class="overflow"><@=rookie.name @></em>
	<div class="rookie_genre" class="overflow"><@=rookie.genre @></div><!--//rookie_genre-->
	<span class="c_audio"><i class="fa fa-headphones"></i> <@=rookie.music @></span>
	<span class="c_video"><i class="fa fa-video-camera"></i> <@=rookie.video @></span>
	<span class="c_follow"><i class="fa fa-users"></i> <@=rookie.likes @></span>
	</div><!--//card_rookie -->
</li>
<@ })@>
</script>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/underscore-min.js"></script>
<script>
		//underscore 세팅
		_.templateSettings = {
		interpolate: /\<\@\=(.+?)\@\>/gim,
		evaluate: /\<\@(.+?)\@\>/gim,
		escape: /\<\@\-(.+?)\@\>/gim
		};
		
		//검색 시 루키리스트 나오는 템플릿
		var tmp = _.template($("#memberTmpl").html());
		var $listMyMember = $("#listMyMember");
		var tmp2 = _.template($("#memberListTmpl").html());

    var $plusMyBand = $("#listMyBand .card_rookie_plus");
    var $plusMember = $(".card_rookie_plus");
    var $cardList = $(".card_rookie_list");
    var $inputMemberSearch = $("#inputMemberSearch");
    var $imgProfile = $("#imgProfile");
    var $rookieGenreList = $(".rookie_genre_list");
    var $inputRookieName = $("#inputRookieName");
    
    //밴드 추가 클릭시
    $plusMyBand.click(function () {
    	$inputRookieName.val("");
    	$rookieGenreList.removeClass("on");
    	$imgProfile.attr("src", "");
        $("#boxUpdateMyBand").css("display", "block");
    });

    //멤버 추가 클릭 시
    $plusMember.click(function () {
        $("#boxAddMember").css("display", "block");
    });
    
    var genre;
    //장르 선택 시
    $rookieGenreList.click(function () {
    	genre = $(this).text();
    	$rookieGenreList.removeClass("on");
		$(this).addClass("on");
	});
    
    //밴드 수정 할 때
    var bandNo;
    $cardList.click(function () {
    	var profile = $(this).find(".card_rookie_profile img").attr("src");
    	var rookieGenre = $(this).find(".rookie_genre").text();
    	var rookieName = $(this).find(".rookie_name").text();
    	bandNo = $(this).find("#rookieNo").val();
    	
    	$imgProfile.attr("src", profile);
    	$inputRookieName.val(rookieName);
    	
    	for(var i=0; i<8; i++){
    		var genre = $(".rookie_genre_list").eq(i).text();
    		if(genre === rookieGenre){
    	    	$(".rookie_genre_list").eq(i).addClass("on");
    		}
    	}
    	$("#boxUpdateMyBand").css("display", "block");
    	getMembers(bandNo);
	});
    
    //그 밴드 멤버를 얻을때
    function getMembers(bandNo) {
		$.ajax("/getMembers",{
			type: "get",
			data: {"bandNo": bandNo},
			dataType: "json",
			error: function () {
				alert("에러");
			},
			success : function (json) {
				$listMyMember.html(tmp({"members":json}));
			}//success end
		}) //ajax end
	}//getMembers end
	
	//루키멤버 키워드 입력 시
	$inputMemberSearch.keyup(function () {
		var query = $inputMemberSearch.val();
		searchRookie(query);
	})//keyup end
	
	//루키멤버 검색
	function searchRookie(name) {
		$.ajax("/searchMember",{
			type: "get",
			data: {"name": name},
			dataType: "json",
			error: function () {
				alert("에러");
			},
			success : function (json) {
				$("#listAddMember ul").html(tmp2({"rookies":json}));
			}//success end
		}) //ajax end
	}//searchRookie
	
	function addMember(no) {
		$.ajax("/addMember",{
			type: "post",
			data: {"memNo": no, "bandNo": bandNo},
			dataType: "json",
			error: function () {
				alert("에러");
			},
			success : function (json) {
				if(json){
					getMembers(bandNo);
					alert("멤버를 추가했습니다.");
				}else{
					alert("멤버를 추가하는데 실패했습니다.");
				}//if~ else end
				
			}//success end
		})//ajax end
	}//addMember end
	
	var no;
	$("#listMember").on("click", ".card_rookie" ,function () {
		no= $(this).attr("data-no");
		var result = confirm("밴드에 추가하시겠습니까?");
		if(result){
			addMember(no);
		}
	})//click end
    
    /*header, footer*/
    var $click=$(".click");
    var $myAlertBox=$(".myAlertBox");
    var $alert=$("#alert");
    var $alertBox=$(".alertBox");
    var $body=$("body");
    var $topBtn = $("#topBtn");
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