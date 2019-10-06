<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>공연장 QnA</title>
    <link rel="stylesheet" href="css/font-awesome.min.css"/>
    <link rel="stylesheet" href="css/reset.css"/>
    <link rel="stylesheet" href="css/kakao.font.css"/>
    <link rel="stylesheet" href="css/concert/conDetail_header.css"/>
    <link rel="stylesheet" href="css/concert/ticketTable.css"/><!--2017.06.18 신애 추가 -->
    <link rel="stylesheet" href="css/template/template.css"/>
	<link rel="shortcut icon" type="image/x-icon" href="/img/Logo/favicon.ico" />
    <style>
        body{
            font-family:'Kakao', sans-serif;
            line-height:1.3em ;
        }


        #wrap{
            width: 1000px;
            margin: auto;
            padding-top: 70px;
        }

        .txt_qna{
            width: 1000px;
            height: 70px;
            text-align: center;
            font-size: 30px;
            font-weight: bold;
            margin-top: 40px;
            margin-bottom: 40px;
            color: #676767;
        }

        #cmtpgn_write_box{
            width: 1000px;
        }

        .fc_strong{
            font-size: 20px;
            color: #424242;
            font-weight: bold;
        }
        
        .textarea_wrap2{
            width: 1000px;
            min-height: 66px;
            overflow: hidden;
            margin-left: 70px;
        }
        
        .textarea_wrap2>.write , .textarea_wrap2>.wrap_btn02{
            float: left;
        }

        .textarea_wrap2>.write {
            width: 800px;
        }

        .textarea_wrap2>.wrap_btn02{
            width: 198px;
        }

        .wrap_btn02>button {
            width: 66px;
            height: 66px;
            border: 1px solid #424242;
            margin-left: 20px;
            cursor: pointer;
        }

        .input_write {
            width: 800px;
            min-height: 60px;
        }

        .fl_left {
            margin-top: 40px;
        }



        /* QnA 댓글부분 */

        .list_q{
            overflow: hidden;
            margin-top: 20px;

            border-bottom: 1px solid #999999;
        }

        .user_qna{
            width: 80px;
            height: 24px;
            float: left;
            overflow: hidden;
        }

        .user_qna>span, .user_qna img{
            float: left;
            line-height: 24px;
        }

        .user_qna>img{
            width: 24px;
            height: 24px;
            margin-right: 5px;
        }

        .qna_content {
            width: 800px;
            min-height: 60px;
            float: left;
            margin-left: 20px;
            padding: 20px;
            overflow: hidden;
        }

        .qna_content .fa{
            float: right;
            cursor: pointer;
        }

        .qna_content a{
            text-decoration: none;
            color: #999999;
            font-size: 15px;
        }

        .qna_content .content_reply_regdate {
            color: #676767;
            font-size: 10px;
        }

        .not_list{
            width: 850px;
            height: 150px ;
            margin: auto;
            border: 1px solid #676767;
            border-radius: 10px;
            text-align: center;
            line-height: 150px;
            margin-top: 20px;
            margin-bottom: 40px;
            font-size: 25px;
            color: #676767;
            display: none;
        }

        /* 페이징 css */

        .pageing {
            margin: auto;
            margin-top: 40px;
            width: 200px;
            height: 20px;
            line-height: 20px;
            text-align: center;
            font-size: 20px;
            cursor: pointer;
        }

        .pageing>span,i {
            padding: 5px;

        }

        #box_cont_tab>.cont_tab_qna>a{
            border-bottom: 1px solid #0099cc;
        }




    </style>
</head>
<body>
	<c:import url="template/header.jsp">
	</c:import>

	<c:import url="template/conDetailHeader.jsp">
	</c:import>
    <div class="txt_qna">
        <p class="txt">
            QnA 게시판은 여러분 모두 질문과 답변에 참여할 수 있는 공간입니다.
        </p>
    </div><!-- //btn_qna -->
    <div class="cmtpgn" name="cmtpgn" id="cmtpgb">
        <div id="cmtpgn_write_box">
                <div title="QnA 입력 창 (500자 이내 입력 가능)" class="textarea_wrap2">
                    <div class="ancm cmtpgn_guide write">
                        <textarea placeholder="* 게시된 글의 저작권은 글을 작성한 회원에게 있으며 게시물로 인해 발생하는 문제는 게시자 본인에게 책임이 있습니다."
                                  class="input_write"></textarea>
                    </div><!-- //d_cmtpgn_cmt_guide -->
                    <div class="wrap_btn02">
                        <button type="button" title="글 등록" class="btn_reg_write">
                            <span class="txt">등록</span>
                        </button>
                </div><!-- //wrap_btn02 -->
        </div><!-- //re_textarea_wrap2 -->
    </div><!-- //d_cmtpgn_cmt_write_box -->
    <div id="cmtpgn_count_wrapper">
        <div class="fl_left">
                <span class="fc_strong">
                    QnA 총
                    <span>5</span>
                    개
                </span>
        </div><!-- //fl_left -->
    </div><!-- //d_cmtpgn_cmt_count_wrapper -->
    <div class="list_cmt" id="cmtpgn_list_wrapper">
        <div class="not_list">
              등록된 QnA가 없습니다.
        </div><!-- //not_list -->
        <div class="box_list_qna">
            <ul class="list_qna">
                <li class="list_q">
                    <div class="user_qna">
                        <img src="img/concert/콘서트_후기_qna_img.png" />
                        <span>장문복</span>
                    </div><!-- //user_qna -->
                    <div class="qna_content">
                        <div class="qna_user_content">
                            <span class="content_reply">브로콜리너마저 기대됩니다~</span>
                            <br>
                            <span class="content_reply_regdate">2017. 06. 21. 18:13</span>
                            <br>
                            <a href="">신고</a>
                            <i class="fa fa-close" title="삭제"></i>
                        </div><!-- //qna_user_content -->
                    </div><!-- //qna_content -->
                </li>
                <li class="list_q">
                    <div class="user_qna">
                        <img src="img/concert/콘서트_후기_qna_img.png" />
                        <span>이대휘</span>
                    </div><!-- //user_qna -->
                    <div class="qna_content">
                        <div class="qna_user_content">
                            <span class="content_reply">장미여관이 출연하다니요!!! 정말 기대됩니다!!</span>
                            <br>
                            <span class="content_reply_regdate">2017. 06. 21. 18:13</span>
                            <br>
                            <a href="">신고</a>
                            <i class="fa fa-close" title="삭제"></i>
                        </div><!-- //qna_user_content -->
                    </div><!-- //qna_content -->
                </li>
                <li class="list_q">
                    <div class="user_qna">
                        <img src="img/concert/콘서트_후기_qna_img.png" />
                        <span>옹성우</span>
                    </div><!-- //user_qna -->
                    <div class="qna_content">
                        <div class="qna_user_content">
                            <span class="content_reply">브로컬리너마저 볼사람 나야나~ 나야나!</span>
                            <br>
                            <span class="content_reply_regdate">2017. 06. 21. 18:13</span>
                            <br>
                            <a href="">신고</a>
                            <i class="fa fa-close" title="삭제"></i>
                        </div><!-- //qna_user_content -->
                    </div><!-- //qna_content -->
                </li>
                <li class="list_q">
                    <div class="user_qna">
                        <img src="img/concert/콘서트_후기_qna_img.png" />
                        <span>당나귀</span>
                    </div><!-- //user_qna -->
                    <div class="qna_content">
                        <div class="qna_user_content">
                            <span class="content_reply">우와 ㅋㅋㅋ 출연진 클라스 보소</span>
                            <br>
                            <span class="content_reply_regdate">2017. 06. 21. 18:13</span>
                            <br>
                            <a href="">신고</a>
                            <i class="fa fa-close" title="삭제"></i>
                        </div><!-- //qna_user_content -->
                    </div><!-- //qna_content -->
                </li>
                <li class="list_q">
                    <div class="user_qna">
                        <img src="img/concert/콘서트_후기_qna_img.png" />
                        <span>아이유</span>
                    </div><!-- //user_qna -->
                    <div class="qna_content">
                        <div class="qna_user_content">
                            <span class="content_reply">가격이 정말 착하네요!</span>
                            <br>
                            <span class="content_reply_regdate">2017. 06. 21. 18:13</span>
                            <br>
                            <a href="">신고</a>
                            <i class="fa fa-close" title="삭제"></i>
                        </div><!-- //qna_user_content -->
                    </div><!-- //qna_content -->
                </li>
            </ul>
        </div><!-- //box_list_qna -->
    </div><!-- //cmtpgn_list_wrapper -->
    </div><!-- //d_cmtpgb -->
    <div class="pageing">
        <i class="fa fa-arrow-left"></i>
        <span style="color: #99cccc">1</span>
        <span>2</span>
        <span>3</span>
        <span>4</span>
        <span>5</span>
        <i class="fa fa-arrow-right"></i>
    </div>
    <div id="concert_footer">
        <img src="img/concert/콘서트_하단.png"/>
    </div><!-- //concert_footer -->
</div><!-- //wrap -->

	<c:import url="template/footer.jsp">
	</c:import>


<script src="js/jquery-3.2.1.min.js"></script>
	<c:import url="template/conHeaderSript.jsp">
	</c:import>
</body>
</html>