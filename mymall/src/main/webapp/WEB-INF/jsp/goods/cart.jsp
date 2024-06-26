	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	
	<main id="main">
	
	    <!-- ======= Portfolio Details Section ======= -->
	    <section id="portfolio-details" class="portfolio-details">
	    <form id='dataform'>
	     <input type="hidden" id="goodsCd" name="goodsCd">
	     <input type="hidden" id="buyQty" name="buyQty">
	     <input type="hidden" id="userId" name="userId">
	        <div class="container">
	            <h2>장바구니</h2>
	            <div class="row">
	                <div class="col-md-9">
	                    <div id="cartInfo" class="row">
	                        <!-- 장바구니 항목이 여기에 추가됨 -->
	                   <div id="noItemsMessage" class="mt-3" style="display: none; font-size: 18px;">
						    장바구니에 상품이 없습니다. 상품을 구매하러 가시겠습니까? <a href="/" class="btn btn-primary w-100">상품 구매하러 가기!!</a>
						</div>
	                </div>
	                <div class="col-md-3" id="orderButtonContainer">
	                    <button type="button" class="btn btn-info btn-lg btn-block mt-3" onclick="goodsOrder()">주문하기</button>
	                </div>
	            </div>
	        </div>
	        </form>
	    </section><!-- End Portfolio Details Section -->
	
	</main><!-- End #main -->
	
	<script>
	    function cartinfodata() {
	        call_server(dataform, '/goods/cartInfo', getCartInfo);
	    }
	
	    function getCartInfo(list) {
	        if (list.length > 0) {
	            $('#noItemsMessage').hide();
	            $('#orderButtonContainer').show();
	            for (var i = 0; i < list.length; i++) {
	                var str = '<div class="card mb-3">' +
	                              '<div class="row g-0">' +
	                                  '<div class="col-md-3">' +
	                                      '<img src="' + list[i].thumnailUrl + '" class="img-fluid"  style="width: 100%; height: auto;"  alt="">' +
	                                  '</div>' +
	                                  '<div class="col-md-9">' +
	                                      '<div class="card-body">' +
	                                          '<h5 class="card-title">' + list[i].goodsName + '</h5>' +
	                                          '<p class="sellPrice" hidden>' + list[i].sellPrice + '원</p>' + // 상품 당 가격
	                                          '<p class="totalPrice">' + list[i].sellPrice + '원</p>' + // 총 가격
	                                          '<input type="number" class="buyQty" value="' + (list[i].buyQty ? list[i].buyQty : 1) + '" style="width:50px;" min="1" max="999" onblur="updateQty(\'' + list[i].goodsCd + '\', this.value)">' +
	                                          '<button type="button" class="btn btn-danger delete" onclick="deleteBtn(\'' + list[i].goodsCd + '\')">상품삭제</button>' +
	                                      '</div>' +
	                                  '</div>' +
	                              '</div>' +
	                          '</div>';
	                $('#cartInfo').append(str);
	            }
	        } else {
	            $('#noItemsMessage').show();
	            $('#orderButtonContainer').hide();
	        }
	    }
	
	    function goodsOrder() {
	        location.href = "/order/goodsOrder";
	    }
	
	    function goShopping() {
	    	location.href = "/";
	    }
	
	    cartinfodata();
	
	    function updateQty(cd, qty) {
	        $('#goodsCd').val(cd);
	        $('#buyQty').val(qty); 
	        call_server(dataform, '/goods/updateBuyQty', updateBuyQty);
	        calculateTotalPrice(); // 수량 변경 후에 총 가격 다시 계산
	    }

	    function calculateTotalPrice() {
	        var totalPrice = 0;
	        $('.card').each(function() {
	            var sellPrice = parseInt($(this).find('.sellPrice').text()); // 상품 당 가격
	            var buyQty = parseInt($(this).find('.buyQty').val()); // 구매 수량
	            var subTotalPrice = sellPrice * buyQty;
	            totalPrice += subTotalPrice;
	            $(this).find('.totalPrice').text(subTotalPrice + '원'); // 총 가격 업데이트
	        });
	        // 총 가격을 화면에 출력
	        $('#totalPrice').text(totalPrice + '원');
	    }
	
	    function updateBuyQty(cnt) {
	        if (cnt > 0) {
	            // 성공적으로 업데이트됨
	        } else {
	            alert("업데이트 실패");
	        }
	    }
	    
	    function deleteBtn(cd , id) {
	    	$('#goodsCd').val(cd);
	    	$('#userId').val(id);
	  	    call_server(dataform, '/goods/deleteGoods', deleteGoods);
	  	}
	  	
	      function deleteGoods(cnt) {
	  	    if (cnt > 0) {
	  	    	 alert("장바구니에서 삭제했습니다.");
	  	    	 location.reload();
	  	    } else {
	  	        alert("실패");
	  	    }
	  	}
	</script>
