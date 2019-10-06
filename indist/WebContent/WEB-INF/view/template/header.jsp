<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="header">
        <div id="headerBox">
            <div id="headerLogo"></div>
            <div id="menuTabBox">
                <div class="menu indie"><a href="/indie">INDIE</a></div>
                <div class="menu rookie"><a href="/rookie">ROOKIE</a></div>
                <div class="menu album"><a href="/albums">ALBUM</a></div>
                <div class="menu concert"><a href="/concert">CONCERT</a></div>
            </div>
            
            <button id="player"></button>
            <div id="profileBox">
                <div id="profile">
                    <img src="../../img/profile/${loginUser.profile }"/>
                    <div class="click">click</div>
                </div>
                <ul class="myAlertBox">
                    <li class="myAlert myInfo"><a href="/myInfo">My Info</a></li>
                    <li class="myAlert myBand"><a href="/myBand">My Band</a></li>
                    <li class="myAlert logout"><a href="/index">Logout</a></li>
                </ul>
                <button id="alert"></button>
                <ul class="alertBox">
                    <!--2017.06.20.김연화-->
                    <li>
                        <div class="alertName">피오</div>
                        <div class="alertImg oneProfile"></div>
                        <div class="alertText"> 밴드초대를 수락하시겠습니까?</div>
                        <div class="alertTime">22분전</div>
                    </li>
                    <li>
                        <div class="alertName">로꼬</div>
                        <div class="alertImg threeProfile"></div>
                        <div class="alertText">밴드초대를 거절 하였습니다.</div>
                        <div class="alertTime">1시간전</div>
                    </li>
                    <li>
                        <div class="alertName">정봉</div>
                        <div class="alertImg twoProfile"></div>
                        <div class="alertText">밴드초대를 수락하였습니다.</div>
                        <div class="alertTime">2017.06.20</div>
                    </li>
                </ul>
            </div>
        </div>
    </div>