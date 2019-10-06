<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div id="wrap">
    
    <!-- conDetail_header부분 -->
    <div id="concertDetailPoster">
        <div class="con_img_poster">
            <img src="/img/concert/브로콜리너마저_포스터.png" />
        </div><!--//con_img_poster -->
        <div class="con_info">
            <h1>브로콜리너마저 여름 장기 공연 '이른 열대야'</h1>
            <p>잠 못 이루는 당신의 뜨거운 여름을 함께 시작할 브로콜리너마저 여름 장기 공연 '이른 열대야'</p>
            <table>
                <thead>
                <tr>
                    <th>공연기간</th>
                    <td>2017.06.21~2017.07.11</td>
                    <th>공연장</th>
                    <td>당나귀홀</td>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th>관람시간</th>
                    <td>100분</td>
                    <th>관람등급</th>
                    <td>전체관람가</td>
                </tr>
                </tbody>


            </table>
        </div><!--//con_info -->
    </div><!--//concertDetailPoster -->
    <div class="box_ticketing_process">
        <dl class="date_choice first">
            <dt class="tit_date_choice">
                <img src="/img/concert/콘서트_날짜선택.png" />
                <img src="/img/concert/nxtrightarrow.png" class="date_choice_arrow"/>
            </dt>
        </dl>
        <dl class="date_choice">
            <dt class="tit_date_choice">
                <img src="/img/concert/콘서트_시간선택.png" />
                <img src="/img/concert/nxtrightarrow.png" class="date_choice_arrow"/>
            </dt>
        </dl>
        <dl class="date_choice">
            <dt class="tit_date_choice">
                <img src="/img/concert/콘서트_좌석선택.png" />
                <img src="/img/concert/nxtrightarrow.png" class="date_choice_arrow"/>
            </dt>

        </dl>
        <dl class="date_choice last">
            <dt class="tit_date_choice">
                <img src="/img/concert/콘서트_배송&결제.png" />
            </dt>
        </dl>
    </div><!--//box_ticketing_process -->
    <div id="box_ticketing_seat_choice">
        <div class="tit_seat_choice">
            <strong>좌석 선택</strong>
            <span>브로콜리너마저</span>
            <span>여름 장기공연 '이른 열대야'</span>
            <select>
                <option>2017.06.30 (금) 10:00</option>
                <option>2017.06.30 (금) 14:00</option>
                <option selected>2017.06.30 (금) 18:00</option>
            </select>
        </div><!--//tit_seat_choice -->
        <div class="seat_choice">
            <div class="seat_select">
                <!--2017.06.18 신애 추가 -->
                <div class="seat_check_notice">
                    <h1>무대</h1>
                    <h2>A~C열은 S석이며, D~I열은 R석입니다.</h2>
                </div>
                <div class="seat_wrap">
                    <div class="con_check_seat_click">
                        <ul class="rowsHead"></ul>
                        <ol class="seat"></ol>
                    </div>
                    <div class="con_check_seat_click_2">
                        <ul class="rowsHead_2"></ul>
                        <ol class="seat_2"></ol>
                    </div>
                </div>
                <!--2017.06.18 신애 추가 -->
            </div><!--//seat_select -->
            <div class="seat_choice_notice">
                <span>좌석을 선택해주세요.</span>
            </div><!--//seat_choice_notice -->
        </div><!--//seat_choice -->
        <div class="seat_sidebar">
            <div class="dng_logo">
                <img src="img/concert/DANGNAGUI-logo.png"/>
            </div>
            <div class="seat_rc">
                <span>좌석등급/잔여석</span>
            </div><!--//seat_rc -->
            <div class="seat_type">
                <ul>
                    <li class="seat_left"><div class="seat_block"></div></li>
                    <li class="seat_left">S석</li>
                    <li class="seat_right">55,000원</li>
                    <li class="seat_right">65석</li>
                </ul>
                <ul>
                    <li class="seat_left"><div class="seat_block"></div></li>
                    <li class="seat_left">R석</li>
                    <li class="seat_right">45,000원</li>
                    <li class="seat_right">25석</li>
                </ul>
                <!-- 2017.6.19 신애 추가 -->
                <fieldset>
                    <div class="seat_rc">
                        <span>선택 좌석</span>
                    </div><!--//seat_rc -->
                    <div class="ul_result_1">
                        <span>좌석명</span>
                        <strong>S석</strong>
                        <br>
                        <span>좌석번호</span>
                        <ul class="result_1">
                        </ul>
                    </div>
                    <div class="ul_result_2">
                        <span>좌석명</span>
                        <strong>R석</strong>
                        <br>
                        <span>좌석번호</span>
                        <ul class="result_2">
                        </ul>
                    </div>
                    <div class="ticket_all_pay">
                        <span>총 가격:</span>
                        <strong>10000원</strong>
                    </div>
                </fieldset>
                <!-- 2017.6.19 신애 추가 -->
            </div><!--//seat_type -->
            <div class="seat_btn">
                <span><a href="#">좌석선택완료</a></span>
            </div><!--//seat_btn -->
        </div><!--//seat_sidebar -->
    </div><!--//box_ticketing_seat_choice -->
    <div id="box_ticketing_prise">
        <div class="pay_way">
            <strong class="pay_strong">현장수령</strong>
            <div class="user_info_pay">
                <strong>주문자 정보</strong>
                <div class="pay_user">
                    <span>이름</span>
                    <span class="star">*</span>
                    <span>김정봉</span>
                </div><!--//pay_user -->
                <div class="pay_user_phone">
                    <span>연락처</span>
                    <span class="star">*</span>
                    <input type="text" class="user_phone_fir" />
                    <input type="text" class="user_phone_sec"/>
                    <input type="text" class="user_phone_thr"/>
                </div><!--//pay_user_phone -->
                <div class="pay_user_email">
                    <span>이메일</span>
                    <span class="star">*</span>
                    <input type="text" placeholder="dng@naver.com" disabled/>
                </div><!--//pay_user_email -->
            </div><!--//user_info_pay -->
            <strong class="pay_type">결제수단을 선택하세요</strong>
            <br>
            <div class="user_pay_type">
                <label><input type="radio" name="pay" value="1"/>신용카드</label>
                <label><input type="radio" name="pay" value="2"/>무통장 입금</label>
                <label><input type="radio" name="pay" value="3" disabled/>휴대폰 결제</label>
                <label><input type="radio" name="pay" value="4" disabled/>카카오 페이</label>
                <label><input type="radio" name="pay" value="4" disabled/>OK 캐쉬백</label>
            </div>
            <div class="user_info_way">
                <div class="user_creditcard_pay">
                    <span>카드 종류를 선택하세요</span>
                    <select>
                        <option>농협</option>
                        <option>신한은행</option>
                        <option>국민은행</option>
                        <option>하나은행</option>
                    </select>
                </div><!--//user_creditcard_pay -->
                <div class="user_deposit_pay">
                    <table>
                        <tbody>
                        <tr>
                            <th>임금액</th>
                            <td class="td_pay">55,000원</td>
                        </tr>
                        <tr>
                            <th>입금하실 은행</th>
                            <td>
                                <select>
                                    <option>농협</option>
                                    <option>신한은행</option>
                                    <option>국민은행</option>
                                    <option>하나은행</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th colspan="2">
                                은행에 따라 밤 11시 30분 이후로는<br>
                                온라인이 입금이 제한 될 수 있습니다.
                            </th>
                        </tr>
                        <tr>
                            <th>입금 마감시간</th>
                            <td>2017년 06월 23일 오후 23시 59분</td>
                        </tr>
                        <tr>
                            <th>예금주명</th>
                            <td>(주)당나귀</td>
                        </tr>
                        </tbody>
                    </table>
                </div><!--//user_deposit_pay -->
            </div><!--//user_info_way -->
        </div><!--//pay_way -->
        <div class="pay_result">
            <div class="tit_pay_result">
                <span>브로콜리너마저 여름 장기공연 '이른 열대야'</span>
            </div><!--//tit_pay_result -->
            <div class="pay_seat_result">
                <span>2017.06.30(금) 18:00</span>
                <hr>
                <span class="user_ticket_choice_num">총 1석 선택</span>
                <br>
                <span class="user_ticket_seat_num">S석 D 4번</span>
            </div><!--//pay_seat_result -->
            <div class="won_strong">
                <strong>결제 금액</strong>
            </div>
            <div class="pay_result_won">
                <span class="won_left">티켓금액</span>
                <span class="won_right">55,000원</span>
            </div><!--//pay_result_won -->
            <div class="won_cancle">
                <span>취소기한 : 2017년 06월 30일 (금) 17:00</span>
                <span>취소 수수료: 티켓금액의 0~30%</span>
            </div>
            <div class="pay_btn">
                <div class="btn_pay_pre">
                    <span>이전</span>
                </div><!--//btn_pay_pre -->
                <div class="btn_pay_confirm">
                    <a href="TPList"><span>결제하기</span></a>
                </div><!--//pay_confirm -->
            </div><!--//pay_btn pay_confirm-->
        </div><!--//pay_result -->
    </div><!--//box_ticketing_prise -->
    <div id="box_ticketing_browser">
        <div class="ticketing_date_choice">
            <ul>
                <li>2017년 06년 28일 수요일</li>
                <li>2017년 06년 29일 목요일</li>
                <li>2017년 06년 30일 금요일</li>
                <li>2017년 07년 01일 토요일</li>
                <li class="ticketing_date_choice_last">2017년 07년 01일 일요일</li>
            </ul>
        </div>
        <div class="ticketing_time_choice">
            <ul>
                <li><a href="#">10시 00분</a></li>
                <li><a href="#">14시 00분</a></li>
                <li><a href="#">18시 00분</a></li>
            </ul>
        </div>
    </div><!--//box_ticketing_browser -->
    <div class="box_ticketing_btn">
        <div class="btn_ticket">
            <span>예매하기</span>
        </div><!--//btn_ticket -->
    </div><!--//box_ticketing_btn -->
    <div id="box_cont">
        <ul id="box_cont_tab">
            <li class="cont_tab_info cont_tab on">
                <a href="concertDetail">상세페이지</a>
            </li>
            <li class="cont_tab_qna cont_tab">
                <a href="conDetailQnA">QnA</a>
            </li>
            <li class="cont_tab_hall cont_tab">
                <a href="conDetailInfo">공연장 정보</a>
            </li>
            <li class="cont_tab_notice cont_tab">
                <a href="conDetailGuide">예매안내</a>
            </li>
            <li class="cont_tab_review cont_tab">
                <a href="conDetailReview">후기</a>
            </li>
        </ul>
    </div><!-- //box_cont -->
    <!-- //conDetail_header부분 -->