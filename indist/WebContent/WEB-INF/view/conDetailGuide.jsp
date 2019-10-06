<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>예매안내</title>
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


        #box_cont_tab>.cont_tab_notice>a{
            border-bottom: 1px solid #0099cc;
        }

        #concert_img>img{
            width: 1000px;
        }

        #concert_footer>img{
            margin-top: 80px;
            width: 1000px;
        }
    </style>
</head>
<body>
	<c:import url="template/header.jsp">
	</c:import>

	<c:import url="template/conDetailHeader.jsp">
	</c:import>
    <div id="concert_img">
        <img src="img/concert/콘서트_예매안내.png"/>
    </div><!-- //concert_img -->

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