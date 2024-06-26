<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.mall.table.vo.UserInfoVO"%>
<%
  UserInfoVO uservo =(UserInfoVO)session.getAttribute("MallUser");
%>
<main id="main">

    <!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details">
	<form id="dataform">
	    <div class="container" id="cartInfo">
	        <input type="hidden" id="goodsCd" name="goodsCd">
	        <input type="hidden" id="buyQty" name="buyQty">
	    </div>
	
	    <!-- 주문자 정보 -->
		  <div class="container" id="orderInfo">
		    <h2>주문자 정보</h2>
		    <label for="userName">이름:</label>
		    <span id="userName"></span><br>
		
		    <label for="phone">연락처:</label>
		    <span id="phone"></span><br>
		
		    <label for="addr">주소:</label>
		    <span id="addr"></span><br>
		</div>

	
	    <!-- 수취인 정보 -->
	    <div class="container" id="recipientInfo">
	        <h2>수취인 정보</h2>
	         <input type="checkbox" id="sameAsOrder"> 주문자와 동일<br>
	        <label for="receiveName">이름:</label>
	        <input type="text" id="receiveName" name="receiveName"><br>
	
	        <label for="receivePhone">전화번호:</label>
	        <input type="text" id="receivePhone" name="receivePhone"><br>
	
	        <label for="recipientAddress">주소:</label>
	        <input type="text" id="receiveAddr" name="addr"><br>
	    </div>
	    <!-- 결제 정보 -->
		<div class="container" id="paymentInfo">
		    <h2>결제 정보</h2>
		    <input type="radio" id="bankTransfer" name="paymentMethod" value='온라인'>
		    <label for="creditCard">온라인입금</label>
		    
		    <input type="radio" id="creditCard" name="paymentMethod" value='카드'>
		    <label for="bankTransfer">카드</label>
		    
		    <input type="radio" id="payPal" name="paymentMethod"value='PayPal'>
		    <label for="cash">PayPal</label>
		</div>
		
		<!-- 총 금액 -->
		<div class="container" id="totalAmount">
		    <h2>총 결제금액</h2>
		    <span id="totalPrice">0</span><br>
		    <button type="button" class="btn btn-info" onclick="order();">주문완료</button>
		</div>
			
	    
           
      </form>
    </section><!-- End Portfolio Details Section -->

</main><!-- End #main -->

	<script>
	function cartinfodata() {
	    call_server(dataform, '/goods/cartInfo', getCartInfo);
	}
	
	function getCartInfo(list) {
	    for (var i = 0; i < list.length; i++) {
	        var str = '<div class="card mb-3">' +
	                      '<div class="row g-0">' +
	                          '<div class="col-md-3">' +
	                              '<img src="' + list[i].thumnailUrl + '" class="img-fluid"  style="width: 410px; height: 410px;"  alt="">' +
	                          '</div>' +
	                          '<div class="col-md-8">' +
	                              '<div class="card-body">' +
	                                  '<h5 class="card-title">' + list[i].goodsName + '</h5>' +
	                                  '<p class="sellPrice" hidden>' + list[i].sellPrice + '원</p>' + // 상품 당 가격
	                                  '<p class="totalPrice">' + (parseInt(list[i].sellPrice) * list[i].buyQty) + '원</p>' + // 총 가격
	                                  '<input type="number" class="buyQty" value="' + list[i].buyQty + '" style="width:50px;" readonly>' +
	                                  '<button type="button" class="btn btn-danger delete" onclick="deleteBtn(\'' + list[i].goodsCd + '\')">상품삭제</button>' +
	                              '</div>' +
	                          '</div>' +
	                      '</div>' +
	                  '</div>';
	        $('#cartInfo').append(str);
	    }
	}
	
	cartinfodata();
	
	function userInfodata() {
	    call_server(dataform, '/order/userInfo', fillOrderInfo);
	}
 
	function fillOrderInfo(vo) {
	    $("#userName").text(vo.userName);
	    $("#phone").text(vo.phone);
	    $("#addr").text(vo.addr);
	}

     userInfodata();
     
     $(document).ready(function() {
    	    $("#sameAsOrder").change(function() {
    	        if (this.checked) {
    	            var userName = $("#userName").text();
    	            var phone = $("#phone").text();
    	            var addr = $("#addr").text();

    	            $("#receiveName").val(userName);
    	            $("#receivePhone").val(phone);
    	            $("#receiveAddr").val(addr);
    	        } else {
    	            $("#receiveName").val("");
    	            $("#receivePhone").val("");
    	            $("#receiveAddr").val("");
    	        }
    	    });
    	});

     function calculateTotalPrice() {
         var totalPrice = 0;
         $(".totalPrice").each(function() {
             var price = parseInt($(this).text().replace("원", "").replace(",", "")); 
             totalPrice += price;
         });
         $("#totalPrice").text(totalPrice.toLocaleString() + "원"); 
     }

     $(document).ready(function() {
         calculateTotalPrice();
     });


     function order() {
  	    call_server(dataform, '/goods/order', finalOrder);
  	}
  	
      function finalOrder(cnt) {
  	    if (cnt > 0) {
  	    	alert("주문성공했습니다");
  	    	location.href = "/"
  	    } else {
  	        alert("실패");
  	    }
  	}
    
	


    
  

</script>
