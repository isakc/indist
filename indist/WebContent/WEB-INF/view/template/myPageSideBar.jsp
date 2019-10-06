<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div id="MyPageLeftSnb">
    <ul class="snb_main_list">
        <li>
            <a href="myInfo">내정보</a>
        </li>
        <li>
            <span>구매내역</span>

            <ul class="snb_sub_list">
                <li>
                    <a href="TPList">티켓</a>
                </li>
                <li>
                    <a href="APList">앨범</a>
                </li>
            </ul>

        </li>

        <li>
            <a href="cart">장바구니</a>
        </li>

        <li>
            <span>좋아요</span>
            <ul class="snb_sub_list">
                <li>
                    <a href="contentLike">컨텐츠</a>
                </li>
                <li>
                    <a href="albumLike">앨범</a>
                </li>
            </ul>
        </li>

        <li>
            <span>팬 맺기</span>
            <ul class="snb_sub_list">
                <li>
                    <a href="indieLike">인디</a>
                </li>
                <li>
                    <a href="rookieLike">루키</a>
                </li>
            </ul>
        </li>

        <li>
            <span>내 게시글</span>
            <ul class="snb_sub_list">
                <li>
                    <a href="QnA">QnA</a>
                </li>
                <li>
                    <a href="concertReview">콘서트 리뷰</a>
                </li>
            </ul>
        </li>
    </ul>
</div><!-- #MyPageLeftSnb end-->