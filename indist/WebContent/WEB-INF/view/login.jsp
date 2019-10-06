<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>login</title>
    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/nanoscroller.css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/noto.sans.korea.css" />
	<link rel="shortcut icon" type="image/x-icon" href="/img/Logo/favicon.ico" />
    <style>
        body{
            padding: 0px;
            margin: 0px;
            background-image: url("img/indexBg/bandImg6.jpg");
            background-repeat: no-repeat;
            background-size: cover;
        }
        #wrap{
            width: 100%;
            height: 100%;
            background: rgba(0,0,0,.7) ;
            position: fixed;
            left: 0;
            top: 0;

        }
        #joinHeader{
            width: 100%;
            height: 70px;
            position: fixed;

        }
        #joinTitle{
            background-color: white;
            width:100px;
            height: 40px;
            display: block;
            text-align: center;
            line-height: 40px;
            border-radius: 20px;
            position: absolute;
            right:40px;
            top:35px;
            cursor: pointer;
        }
        #joinTitle a{
            color: rgba(0,0,0,.5);
            font-weight: bold;
            font-size:15px;
            text-decoration: none;
        }
        #headerLogo{
            background-image:url("img/Logo/headerLogo.png");
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            width:140px;
            height:60px;
            position: absolute;
            left:30px;
            top:30px;
        }
        #loginBox{
            width: 300px;
            height: 480px;
            text-align: center;
            position: absolute;
            left: 50%;
            top:50%;
            margin-left: -150px;
            margin-top: -215px;
        }

        #loginTitle>span{
            font-size: 30px;
            font-weight: bold;
            color:#07bb91;
        }
        .sign_input{
            margin: auto;
            position: relative;
            display: block;
            border-bottom: 1px solid rgba(154,151,161,0.2);
            width: 240px;
            height: 35px;
            line-height: 35px;
            padding: 5px 18px;
            padding-right: 42px;
            background-color: #ffffff;

        }
        input:focus{
            outline: none;
        }
        .email{
            margin-top: 10px;
            border-radius: 10px 10px 0 0;
            outline: none;
        }
        .pwd{
            border-radius: 0 0 10px 10px;
            outline: none;
        }
        .sign_input>input{
            width: 100%;
            color: #121218;
            font-size: 16px;
            letter-spacing: -.10px;
            border: 0;
            background-color: #ffffff;
            background-image: none;
        }
        .loginSubmitInput{
            display: inline-block;
            position: relative;
            text-align: center;
            border-radius: 40px;
            margin-top: 16px;
            background-color: #07bb91;
            color: #ffffff;
            width: 300px;
            height: 48px;
            line-height: 48px;
            margin-bottom: 21px;
            font-size: 18px;
            border: none;
            cursor: pointer;
            text-decoration: none;
        }
    </style>
</head>
<body>
<div id="wrap">
    <div id="joinHeader">
        <div id="joinHeaderBox">
            <a href="index"><div id="headerLogo"></div></a>
            <div id="joinTitle"><a href="join">회원가입</a></div>
        </div>
    </div>
    
    <div id="loginBox">
    <img src="img/Logo/donkey.png" width="160" height="250"/>
    <div id="loginTitle">
        <span>INDIST</span>
    </div>
    <form action="/session" method="post">
        <label class="sign_input email">
        <input type="email" name="id" placeholder="이메일(example@gmail.com)"/>
        </label>
        <label class="sign_input pwd">
        <input type="password" name="pwd" placeholder="비밀번호(6자이상)"/>
        </label>
    <div id="loginBtn">
        <button class="loginSubmitInput">로그인</button>
    </div>
    </form>
</div>
</div>
</body>
</html>