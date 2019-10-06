<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Registration Form</title>
    
	<c:import url="template/link.jsp"></c:import>
    <style>
        body{
            font-family: "Noto Sans KR", sans-serif;
        }
        form{
            width: 100%;
            min-height: 800px;
            /*background-color: pink;*/
        }
        input:focus {
            outline: none;
        }
        .bg{
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
        }

        .hide{
            overflow: hidden;
            text-indent: -99999px;
        }
        #sectionRegForm{
            width: 1000px;
            min-height: 300px;
            position: relative;
            margin: auto;
            /*background-color: blue;*/
        }
        #formSort{
            width: 285px;
            height: 52px;
            position: relative;
            margin: 20px 0;
            background-color: #99cccc;
            top:0;
            left: 0;
        }
        .formbtn{
            border: 1px solid #99cccc;
            width: 140px;
            height: 50px;
            float: left;
            line-height: 50px;
            text-align: center;
            color: #969696;
            transition: .2s ease;
            background-color: #fff;
            font-size: 25px;
            font-weight: 700;
        }
        .formbtn:hover{
            cursor: pointer;
        }
        #musicBtn:hover, #movieBtn:hover {
            color: #fff;
            background-color: #99cccc;
        }
        .on{
            background-color: #99cccc;
            color:#fff ;
        }


    </style>
    <style>
        #formMusic{
            width: 980px;
            min-height: 800px;
            position: relative;
            font-size: 20px;
            line-height: 25px;
            padding:0 10px;
            /*background-color: yellowgreen;*/
        }
        #formMovie{
            display: none;
            width: 980px;
            min-height: 600px;
            font-size: 20px;
            line-height: 25px;
            padding:0 10px;
            position: relative;
         }
        .cr_title{
            display: block;
            width: 820px;
            height: 20px;
            position: absolute;
            top:25px;
            left: 140px;
        }
        #sectionRegForm button{
            cursor: pointer;
            border-style: none;
            width: 130px;
            height: 23px;
            border-radius: 20px;
            text-align: center;
            line-height: 15px;
            font-size: 15px;
            font-weight: 500;
            color: #424242;
            padding: 0 10px;
            background-color: rgba(0,0,0,0.2);
            font-family: 'Noto Sans KR', sans-serif;
        }
        #sectionRegForm h2{
            margin-bottom: 10px;
        }
        .exImage{
            display: block;
            position: absolute;
            top:70px;
            left:140px;
        }
        #sectionRegForm span{
            color: #969696;
            font-size: 15px;
            display: block;
            margin: 5px 0;
        }
        .wrap_upload{
            position: absolute;
            top: 70px;
            left: 370px;

        }
        .wrap_upload h2{
            margin-top: 13px;
        }

        .contentsExp{
            width: 820px;
            height: 300px;
            position: absolute;
            top:320px;
            left: 140px;

        }
        #sectionRegForm .regBtn{
            width: 200px;
            height: 40px;
            font-size: 25px;
            font-weight: 700;
            position: absolute;
            top:670px;
            left: 435px;
            color: #fff;
            background-color: #99cccc;
            transition: .2s ease;
        }
        #sectionRegForm .regBtn:hover{
            background-color: #0099cc;
        }
        .term{
            width: 960px;
            height: 100px;
            border: 1px solid #969696;
            color: #424242;
            font-size: 14px;
            padding: 5px;
            overflow-y: scroll;
            /*margin-bottom: 20px;*/
            line-height: 20px;
        }
        .box_term{
            width: 1000px;
            min-height: 100px;
            position: relative;
            top: 0px;
            /*float: left;*/
            /*background-color: red;*/
            margin-bottom: 50px;
        }
        .box_term h2{
            font-size: 20px;
            font-weight: 700;
        }
        .upload_url{
            position: absolute;
            right: 35px;
            width: 440px;
            height: 20px;
            color: #969696;
            border: 1px solid #A9A9A9;
            top:5px;
            font-size: 13px;
            line-height: 20px;
        }
        .upload_url.img{
            top:65px;
        }
        /*#content{*/
            /*margin-bottom: 50px;*/
        /*}*/
        
        #sectionRegForm .btnCategory.on{
        	background-color: #99cccc;
        }
        
        button:focus{
        	outline: none;
        }
    </style>
</head>
<body>
<div id="wrap">
    <h1 class="screen_out">Content Regist Page</h1>


	<c:import url="../view/template/header.jsp"></c:import>
<div id="content">
    <div id="sectionRegForm">
        <div id="formSort">
            <div id="musicBtn" class="formbtn on">음원 등록</div><!--//musicBtn -->
            <div id="movieBtn" class="formbtn">영상 등록</div><!--//movie btn -->
        </div><!--//formSort-->
        <div id="formMusic">
            <form action="/rookie/content/5" method="POST">
                <fieldset>
                    <legend class="hide">컨텐츠 등록 폼</legend>
                    <h2>컨텐츠 제목</h2><input class="cr_title" autocomplete="off" placeholder="컨텐츠 타이틀을 입력해주세요."/>
                    <h2>음원 등록</h2>
                    <div class="upload_form">
                    <img title="음원 카드 예시" width="200"height="230" src="../../img/rookie/exCard.png" class="exImage"/>
                        <div class="wrap_upload">
                            <input type="file"></input>
                            <span>음원은 mp3 파일만 등록 가능합니다. 본인 창작물인 미발표곡만 등록 가능합니다.</span>
                            <input type="file"></input>
                            <span>대표 이미지를 등록해주세요.(컨텐츠 카드에 삽입됩니다. 4:3 비율에 최적화되어 있습니다.)</span>
                            <h2>컨텐츠 장르</h2>
                            <div class="select_genre">
                                <button class="btnCategory" type="button">Pop</button>
                                <button class="btnCategory" type="button">Rock</button>
                                <button class="btnCategory" type="button">Electronica</button>
                                <button class="btnCategory" type="button">Jazz</button>
                                <button class="btnCategory" type="button">Hiphop</button>
                                <button class="btnCategory" type="button">R&B</button>
                                <button class="btnCategory" type="button">Fork</button>
                                <button class="btnCategory" type="button">ETC</button>
                            </div><!--//select_genre -->

                    </div><!--//.wrap_upload -->
                        <textarea style="resize: none;" class="contentsExp" placeholder="컨텐츠에대한 소개글을 입력해주세요."></textarea>
                        <button class="regBtn" >음원 등록</button>
                        </div><!--//uploadForm -->
                </fieldset>
            </form>
        </div><!--//formMusic -->
        <div id="formMovie">
            <form action="/rookie/content/5" method="POST">
                <fieldset>
                    <legend class="hide">컨텐츠 등록 폼</legend>
                    <h2>컨텐츠 제목</h2><input class="cr_title" autocomplete="off" placeholder="컨텐츠 타이틀을 입력해주세요."/>
                    <h2>영상 등록</h2>
                    <div class="upload_form">
                        <img title="음원 카드 예시" width="200"height="230" src="../../img/rookie/exImage_video.png" class="exImage"/>
                        <div class="wrap_upload">
                         	<input type="file"></input>
							<span>파일 용량 2G 이하, mp4, avi wmf 인 본인 창작 영상물로 등록 가능합니다.</span> 
                             <input type="file"></input>
                            <span>대표 이미지를 등록해주세요.(컨텐츠 카드에 삽입됩니다. 4:3 비율에 최적화되어 있습니다.)</span>
                            
                           <h2>컨텐츠 장르</h2>
                            <div class="select_genre">
                                <button class="btnCategory" type="button">Pop</button>
                                <button class="btnCategory" type="button">Rock</button>
                                <button class="btnCategory" type="button">Electronica</button>
                                <button class="btnCategory" type="button">Jazz</button>
                                <button class="btnCategory" type="button">Hiphop</button>
                                <button class="btnCategory" type="button">R&B</button>
                                <button class="btnCategory" type="button">Fork</button>
                                <button class="btnCategory" type="button">ETC</button>
                            </div><!--//select_genre -->

                        </div><!--//.wrap_upload -->
                        <textarea style="resize: none;" class="contentsExp" placeholder="컨텐츠에대한 소개글을 입력해주세요."></textarea>
                        <button class="regBtn">영상 등록</button>
                    </div><!--//uploadForm -->
                </fieldset>
            </form>
        </div><!--//formMovie -->
        <div class="box_term">
            <h2>루키 컨텐츠 등록 이용 약관</h2>
            <div class="term">
                <ol>
                    <li><strong>제 1조 : 목적</strong></li>
                    <li>본 특약은 음악 창작자가 네이버 주식회사(이하 "회사")가 제공하는 "뮤지션 리그(<a href="http://music.dangnagui.com/musicianLeague/" target="_blank">http://music.dangnagui.com/musicianLeague/</a>)"에 참가하는 것에 관련하여 "회사"와 "뮤지션"과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정하는 것을 목적으로 합니다.</li>
                    <li></li>
                    <li><strong>제 2조 : 정의</strong><br>
                    <li>본 특약에서 사용되는 용어의 정의는 다음과 같습니다.</li>
                    <li>1. "ROOKIE리그"라 함은 당나귀(<a href="http://music.dangnagui.com" target="_blank">http://music.dangnagui.com</a>) 내에 위치하며, "ROOKIE"으로 정의된 이용자들이 단말기의 종류와 상관 없이 직접 컨텐츠를 등록하고 관리할 수 있는 유•무선 무료 플랫폼서비스를 말합니다.</li>
                    <li>2. "ROOKIE"이라 함은 당나귀ID로 로그인 하고, ROOKIE 리그 "곡 등록"을 통해 "ROOKIE리그" 참여를 신청하고, "회사"의 승인을 통해 "ROOKIE리그" 이용 권한을 받은 이용자들을 말합니다.</li>
                    <li>3. "컨텐츠"라 함은 "ROOKIE"이 "ROOKIE리그"를 이용함에 있어 "ROOKIE리그"에 게시한 문자, 음성, 음향, 화상, 동영상 등의 정보 형태의 글, 음원, 동영상 및 각종 파일을 말합니다. </li>
                    <li>4. "곡 등록" 이라 함은 당나귀 이용자가 회사가 운영하는 "ROOKIE리그"에 참가하기 위해, 음악을 주제로 한 "컨텐츠"를 등록하고 회사의 심사를 받아, 참여 자격을 얻는 신청 프로세스를 말합니다.</li>
                    <li>5. "관리페이지"라 함은 "곡 등록"을 통해 회사의 승인을 얻어 "ROOKIE리그"를 이용하는 "ROOKIE"에게 "컨텐츠"의 등록을 위해 제공되는 플랫폼시스템을 말합니다.</li>
                    <li></li>
                    <li><strong>제 3조 : 이용 계약의 성립</strong></li>
                    <li>1. "ROOKIE리그" 이용계약은 "ROOKIE"이 되고자 하는 자가 "곡 등록"을 통해 본 특약의 내용에 동의를 하고 "컨텐츠"를 등록하면 "회사"가 "ROOKIE리그" 참여 여부를 승낙함으로서 체결됩니다.</li>
                    <li>2. 회사는 "ROOKIE"이 되고자 하는 자가 "곡 등록"으로 등록한 "컨텐츠"에 대한 검토 후 "ROOKIE" 권한 부여를 승낙하거나 거부할 수 있습니다. "회사"는 다음 각 호에 해당하는 "곡 등록"에 대하여는 승낙을 하지 않거나 사후에라도 승낙을 취소할 수 있습니다.</li>
                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1) "곡 등록" 또는 "ROOKIE" 등록을 실명이 아니거나 타인의 명의를 이용한 경우 및 허위의 정보를 기재한 경우</li>
                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2) "곡 등록" 시 "ROOKIE"이 되고자 하는 자 등록한 "컨텐츠"가 타인의 저작권 등 권리를 침해하는 것으로 판명될 경우</li>
                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3) "곡 등록" 시 "ROOKIE"이 되고자 하는 자가 등록한 "컨텐츠"가 불법, 범죄 등 반사회적 내용을 담아 "ROOKIE리그"에서 게재가 불가할 경우</li>
                    <li>3. 회사는 "ROOKIE"과 "컨텐츠"에 대하여 회사정책에 따라 등급을 구분하고 서비스 메뉴를 세분화하여 "컨텐츠"의 노출에 차등을 둘 수 있습니다.</li>
                    <li>4. 회사는 "ROOKIE"과 "ROOKIE"이 등록한 "컨텐츠"에 대하여 "영화 및 비디오물의 진흥에 관한 법률" 및 "청소년보호법" 등 관련 법령에 따른 등급 및 연령 준수를 위해 이용제한이나 등급별 제한을 할 수 있습니다.</li>
                    <li></li>
                    <li><strong>제 4조 : 회사의 의무</strong></li>
                    <li>1. "ROOKIE"의 "컨텐츠"가 정보통신망법이용촉진등에관한법률, 음반산업진흥에관한법률 및 저작권법 등 관련 법령에 위반되는 내용을 포함하는 경우, 권리자는 관련법이 정한 절차에 따라 해당 "컨텐츠"의 게시중단 및 삭제 등을 요청할 수 있으며, 회사는 관련 법령에 따라 조치를 취할 수 있습니다.</li>
                    <li>2. 회사는 전항에 따른 권리자의 요청이 없는 경우라도 권리침해가 인정될 만한 사유가 있거나 기타 회사 정책 및 관련법에 위반되는 경우에는 관련법에 따라 해당 "컨텐츠"에 대해 임시조치 및 노출중단 등을 취할 수 있습니다.</li>
                    <li>3. 회사는 "ROOKIE"이 원활하게 "ROOKIE리그"를 이용할 수 있도록 안정적으로 서비스를 제공 해야 하며, 이를 위한 회사의 의무사항은 당나귀 이용약관(<a href="http://www.dangnagui.com/rules/service.html" target="_blank">http://www.dangnagui.com/rules/service.html</a>)이 정의하는 바를 따릅니다.</li>
                    <li></li>
                    <li><strong>제 5조 : ROOKIE의 의무</strong></li>
                    <li>1. "ROOKIE"은 다음 행위를 하여서는 안 됩니다.</li>
                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1) "곡 등록" 또는 프로필의 변경 시 허위내용의 등록</li>
                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2) 타인의 정보도용</li>
                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3) 회사가 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시</li>
                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4) 회사와 기타 제3자의 저작권, 저작인격권, 초상권 등 지적재산권에 대한 침해</li>
                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5) 회사 및 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위</li>
                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6) 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 "ROOKIE리그"에 공개 또는 게시하는 행위</li>
                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7) 회사의 동의 없이 영리를 목적으로 "ROOKIE리그"를 사용하는 행위</li>
                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;8) 법령에 의하여 사전신고 또는 심의를 받아야 하는 컨텐츠를 사전심고 또는 사전심의 없이 "ROOKIE리그"에 등록하는 행위</li>
                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;9) 기타 불법적이거나 부당한 행위</li>
                    <li>2. "ROOKIE"은 관계법, 본 특약의 규정, 이용안내 및 "ROOKIE리그"와 관련하여 회사가 공지한 주의사항 및 통지사항 등을 준수하여야 합니다.</li>
                    <li>3, "ROOKIE"이 이를 지키지 않을 경우 회사는 "ROOKIE"의 "ROOKIE리그" 이용을 제한할 수 있으며, 이에 따른 "ROOKIE"의 불이익에 대해서 회사는 책임지지 않습니다.</li>
                    <li></li>
                    <li><strong>제 6조 : 컨텐츠의 저작권</strong></li>
                    <li>1. "ROOKIE"이 "ROOKIE리그" 내에 게시한 "컨텐츠"의 저작권은 그 권리자에게 귀속됩니다.</li>
                    <li>2. "ROOKIE"이 "ROOKIE리그" 내에 게시하는 "컨텐츠"는 "ROOKIE 리그(<a href="http://music.dangnagui.com/musicianLeague/" target="_blank">http://music.dangnagui.com/musicianLeague/</a>)" 및 당나귀 TV캐스트(<a href="http://tvcast.dangnagui.com/" target="_blank">http://tvcast.dangnagui.com/</a>)를 비롯하여 당나귀(<a href="http://www.dangnagui.com" target="_blank">http://www.dangnagui.com</a>)의 검색결과 내지 "ROOKIE리그" 및 관련 프로모션 등에 노출될 수 있으며, 해당 노출을 위해 필요한 범위 내에서는 일부 수정, 복제, 편집되어 게시될 수 있습니다. 이 경우, 회사는 저작권법 규정을 준수하며, "ROOKIE"은 언제든지 고객센터 또는 "ROOKIE리그" 내 "관리페이지"를 통해 해당 게시물에 대해 삭제, 검색결과 제외, 비공개 등의 조치를 취할 수 있습니다. </li>
                    <li>3. "ROOKIE"이 "ROOKIE리그" 내에 게시한 "컨텐츠"를 삭제하는 경우에도 "회사"는 저작권료, 실연료 기타 권리사용료의 정산 및 지급을 위하여 필요한 범위 내에서 "컨텐츠"의 재생 및 다운로드 관련 통계를 계속 보유할 수 있습니다.</li>
                    <li></li>
                    <li><strong>제 7조 : 서비스의 중단, 해지 등</strong></li>
                    <li>1. "ROOKIE"은 언제든지 당나귀 고객센터 또는 내 정보 관리 메뉴 등을 통하여 이용계약 해지 신청을 할 수 있으며, 회사는 관련 법령이 정하는 바에 따라 이를 즉시 처리합니다.</li>
                    <li>2. "ROOKIE"이 본 특약을 해지할 경우, 관련 법령 및 개인정보 처리방침에 따라 회사가 "ROOKIE"의 정보를 보유하는 경우를 제외하고 회사는 본 특약의 해지 즉시 "ROOKIE"의 모든 데이터를 삭제합니다. 3. "ROOKIE"이 본 특약을 해지하는 경우, "ROOKIE"이 작성 및 등록한 "컨텐츠" 일체는 삭제됩니다. 다만, 별도의 이벤트를 통해 상금 또는 특전을 받은 "컨텐츠"는 해당 이벤트 특약에 의거하여 그대로 존속 유지될 수 있습니다. </li>
                    <li>4. 회사는 "ROOKIE"이 본 특약을 위반할 경우 7일 이상의 기간을 정하여 그 시정을 요청할 수 있으며, 해당 기간 동안 시정이 되지 않을 경우 이용계약을 해지할 수 있습니다. 단, "회사"는 "ROOKIE"의 본 특약 위반행위 또는 불법행위 등으로 인하여 "회사"에 발생할 위험이 크다고 판단할 경우 "컨텐츠"의 노출을 즉시 중단할 수 있으며, "컨텐츠" 노출 중단 후 "ROOKIE"에게 사후 통지할 수 있습니다.</li>
                    <li>5. "ROOKIE"은 필요할 경우 본 특약의 해지 전 스스로 "컨텐츠"를 백업하여야 합니다.</li>
                    <li></li>
                    <li><strong>제 8조 : 기타</strong></li>
                    <li>본 특약에서 정의되지 않은 내용은 당나귀 이용약관(<a href="http://www.dangnagui.com/policy/service.html" target="_blank">http://www.dangnagui.com/policy/service.html</a>) 및 당나귀 페이 이용약관(<a href="http://www.dangnagui.com/policy/service_paid.html" target="_blank">http://www.dangnagui.com/policy/service_paid.html</a>)을 적용합니다. </li>
                    <li></li>
                    <li>부칙</li>
                    <li>1. 본 특약은 2014년 7월 31일부터 적용됩니다.</li>
                    <li></li>
                </ol>
            </div><!--//.term-->
            <h2>컨텐츠 등록 안내</h2>
            <div class="term">
                저작권 등 다른 사람의 권리를 침해하거나 명예를 훼손하는 음원이나 동영상은 ROOKIE 리그 이용약관 및 관련 법률에 의해 제재를 받으실 수 있습니다.<br>
                법령에서 정하는 음악영상을(정규 뮤직비디오)을 등록하실 경우 영상물등급위원회 사전등급분류를 받아야 합니다.<br>
                (라이브 영상 악기 연주, 메이킹 영상 등은 등급분류 대상에 해당하지 않습니다.)<br>
                리그 참가가 불가한 경우, 등록하신 음악 컨텐츠는 바로 삭제되며, 당나귀에는 저장되지 않습니다.<br>
                ROOKIE의 이름, 대표이미지, SNS(선택)는 프로필 등록을 위해 사용되며, 서비스 이용 기간 동안 보관합니다.
            </div><!--//term-->
        </div><!--//box_term -->
    </div><!-- sectionRegForm -->
</div><!-- content end -->



	<c:import url="../view/template/footer.jsp"></c:import>
</div>
<script src="../../js/jquery-3.2.1.min.js"></script>
<script>
    var $formMusic = $("#formMusic");
    var $musicBtn = $("#musicBtn");

    var $formMovie = $("#formMovie");
    var $movieBtn = $("#movieBtn");

    $musicBtn.click(function () {
        $musicBtn.addClass("on");
        $movieBtn.removeClass("on");
        $formMusic.show();
        $formMovie.hide();

    })

    $movieBtn.click(function () {
        $movieBtn.addClass("on");
        $musicBtn.removeClass("on");
        $formMusic.hide();
        $formMovie.show();
    })
    
    $(".btnCategory").click(function () {
    	
    	$(".btnCategory").removeClass("on");
		$(this).addClass("on");
	})
</script>
</body>
</html>