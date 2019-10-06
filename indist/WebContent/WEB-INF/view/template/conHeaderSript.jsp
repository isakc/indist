<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script>
//헤더부분
    var $ticketBtn = $(".btn_ticket");
    var $boxBrowser = $("#box_ticketing_browser");
    var $date = $(".ticketing_date_choice>ul>li");
    var $time = $(".ticketing_time_choice>ul>li>a");
    
    

    $ticketBtn.click(function () {
        $boxBrowser.css("display","block");
    });

    $date.click(function () {
        $time.css("display","block");
    });


    var $div = $("#box_ticketing_seat_choice");

    $time.click(function () {

        $div.css("display","block");

    });//click

    var $seat = $(".seat_btn");
    var $ticket = $("#box_ticketing_prise");

    $seat.click(function () {
        $ticket.css("display","block");
        $div.css("display","none")
        
        var num2 = $(".result_1>li").length;
        var num1 = $(".result_2>li").length;
        var num3 = num2+num1 ;
        var yes = '';
        var i = 0;
        
        for( i = 0 ; i < num1 ; i++){
        	yes += $(".result_2>li").eq(i).text();
        }
        
        for(i = 0 ; i < num2 ; i++){
        	yes += $(".result_1>li").eq(i).text();
        }
       
        
        $(".user_ticket_choice_num").html("총 "+num3+"개 선택");
        $(".user_ticket_seat_num").html(yes);
        $(".won_right").html("총 "+pay+"원");
        $(".td_pay").html(pay+"원");
        
    });

    var $prev = $(".btn_pay_pre");

    $prev.click(function () {
        $div.css("display","block");
        $ticket.css("display","none");
    });

    var $confirm=$(".btn_pay_confirm");

    $confirm.click(function () {
        alert("결제가 완료되었습니다.");
    });


    $("input:radio[name=pay]").click(function () {

        var st = $(this).val();
        if (st == "1") {
            $(".user_creditcard_pay").css("display", "block");
            $(".user_deposit_pay").css("display", "none");
        } else if (st == "2") {
            $(".user_deposit_pay").css("display", "block");
            $(".user_creditcard_pay").css("display", "none");
        }
    });

    //헤더부분


    //좌석 예매1

    var $result = $('.result'),
        $seat = $('.con_check_seat_click .seat'),
        $colsHead = $('.con_check_seat_click .colsHead'),
        $rowsHead = $('.con_check_seat_click .rowsHead'),
        colsNum = 6, rowsNum = 3;

    var pay = 0;
    var pay1 = 0;
    var pay2 = 0;
    var strPay = '<span>'+'총 가격:'+'</span>'+'<strong>' + 0 +'원'+ '</strong>';

    var updateView = function() {
        var makeTag = '', i = 1, leng = 0;

        colsNum = 6;
        rowsNum = 3;

        for(i = 1, leng = colsNum * rowsNum; i <= leng; i++) {
            if( i % colsNum === 1 ) {
                makeTag += "<li style='clear:both;'></li>";
            } else {
                makeTag += "<li></li>";
            }
        }
        $seat.html(makeTag);

        for(makeTag = '', i = 1, leng = colsNum; i <= leng; i++) {
            makeTag += '<li>' + i + '</li>';
        }
        $colsHead.html(makeTag);

        for(makeTag = '', i = 65, leng = 65 + rowsNum; i < leng; i++) {
            makeTag += '<li>' + String.fromCharCode(i) + '</li>';
        }
        $rowsHead.html(makeTag);

        $result.html('없음');
    };

    var getSeatName = function( index ) {
        var colsIndex = (index % colsNum) + 1,
            rowsIndex = Math.ceil((index + 1) / colsNum) - 1,
            rowsName = String.fromCharCode((65 + rowsIndex));

        return rowsName + colsIndex ;
    };

    var add ='';

    var count = 0;
    var conadd= 1;

    $seat.on('click', 'li', function() {


        var $this = $(this),
            index = $this.index();

        $this.addClass('reserve');
        
   	    if(count+count2>7) {
            alert("최대 8자리 예매 가능합니다.");
            $this.removeClass('reserve');
        }else if(count==1) {
            add += '<li>' + getSeatName(index) + '</li>';
        } else  if(count==0){
            add += '<li>' +getSeatName(index)+','+ '</li>';
        }else if(count>1&&count+count2<=8){
            add += '<li>'+',' + getSeatName(index) + '</li>';
        }

        for(count = 0; count < conadd; count++){
            
            $(".result_1").html(add);
        }
       

        conadd++;


        pay1 =  count * 55000;
        pay=pay1+pay2;
        strPay = '<span>'+'총 가격:'+'</span>'+'<strong>' + pay +'원' + '</strong>';
        $(".ticket_all_pay").html(strPay);

    });

    updateView();


    //좌석 예매1

    //좌석 예매2
    var $seat2 = $('.con_check_seat_click_2 .seat_2'),
        $rowsHead2 = $('.con_check_seat_click_2 .rowsHead_2'),
        colsNum2 = 16,
        rowsNum2 = 6;

    var updateView2 = function() {
        var makeTag = '', i = 1, leng = 0;

        colsNum2 = 16;
        rowsNum2 = 6;

        for(i = 1, leng = colsNum2 * rowsNum2; i <= leng; i++) {
            if( i % colsNum2 === 1 ) {
                makeTag += "<li style='clear:both;'></li>";
            } else {
                makeTag += "<li></li>";
            }
        }
        $seat2.html(makeTag);

        for(makeTag = '', i = 68, leng = 68 + rowsNum2; i < leng; i++) {
            makeTag += '<li>' + String.fromCharCode(i) + '</li>';
        }
        $rowsHead2.html(makeTag);

    };

    var getSeatName2 = function( index ) {
        var colsIndex = (index % colsNum2) + 1,
            rowsIndex = Math.ceil((index + 1) / colsNum2) - 1,
            rowsName = String.fromCharCode((68 + rowsIndex));

        return rowsName  + colsIndex ;
    };

    var add2='';
    var count2 = 0;
    var conadd2= 1;



    $seat2.on('click', 'li', function() {
        var $this = $(this),
            index = $this.index();

        $this.toggleClass('reserve');

        if(count+count2>7) {
            alert("최대 8자리 예매 가능합니다.");
            $this.removeClass('reserve');
        }else if(count2==1) {
            add2 += '<li>' + getSeatName2(index) + '</li>';
        }else if(count2>1&&count+count2<=8){
            add2 += '<li>'+',' + getSeatName2(index) + '</li>';
        }else if(count2==0){
            add2 += '<li>' +getSeatName2(index)+','+ '</li>';
        }


        for(count2 = 0; count2 < conadd2; count2++){

            $(".result_2").html(add2);
        }

        conadd2++;


        pay2 =  count2 * 45000;
        pay=pay1+pay2;
        strPay = '<span>'+'총 가격:'+'</span>'+'<strong>' + pay +'원' + '</strong>';
        $(".ticket_all_pay").html(strPay);

    });

    updateView2();
    

    //좌석 예매2

    </script>