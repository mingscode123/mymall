	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.mall.table.vo.UserInfoVO"%>
<%
  UserInfoVO uservo =(UserInfoVO)session.getAttribute("MallUser");
%>

<main id="main">

    <!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details">
        <form id='dataform'>
            <input type='hidden' id="goodsCd" name="goodsCd" value="${vo.goodsCd}">
            <div class="container">
                <div class="row gy-4">
                    <div class="col-lg-8">
                        <div class="portfolio-details-slider swiper">
                            <div class="swiper-wrapper align-items-center" id="goodsImg">
                            </div>
                            <div class="swiper-pagination"></div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="portfolio-info">
                            <h3><font id="goodsName"></font></h3>
                            <ul>
                                <li><strong>정상가:</strong> <font id="normalPrice"></font> 원</li>
                                <li><strong>판매가:</strong> <font id="sellPrice"></font> 원</li>
                            </ul>
                        </div>
                        <div class="portfolio-description">
                            <h2>상품설명</h2>
                            <p><font id="content"></font></p>
                        </div>
                       <div>
						    <button type="button" class="btn btn-info" id="decrease">-</button>
						    <input type="text" id="buyQty" name="buyQty" value="1" style="width:50px;" >
						    <button type="button" class="btn btn-info" id="increase">+</button>
						</div>
                        <div>
                            <div colspan="2">
                                <button type="button" class="btn btn-info" onclick="cart();">장바구니</button>
                                <!--  button type="button" class="btn btn-info" onclick="directOrder();">바로주문</button-->
                            </div>
                        </div>	
                    </div>
                </div>
            </div>
        </form>
    </section><!-- End Portfolio Details Section -->

</main><!-- End #main -->

<script>
    function goodsData() {
        call_server(dataform, '/goods/goodsDetail', getGoodsDetail);
    }

    function getGoodsDetail(vo) {
        $('#goodsName').text(vo.goodsName);
        $('#normalPrice').text(vo.normalPrice);
        $('#sellPrice').text(vo.sellPrice);
        $('#content').text(vo.content);

        var str = '';
        for (var i = 0; i < vo.imgList.length; i++) {
            str += '<div class="swiper-slide">' +
                '<img src="' + vo.imgList[i].imgUrl + '" alt="">' +
                '</div>';
        }
        $('#goodsImg').append(str);
    }

    goodsData();
    
    $(document).ready(function() {
        $("#increase").click(function() {
            var currentValue = parseInt($("#buyQty").val());
            if (isNaN(currentValue)) {
                currentValue = 0;
            }
            if (currentValue < 999) {
                $("#buyQty").val(currentValue + 1);
            } else {
                $("#buyQty").val(currentValue);
            }
        });

        $("#decrease").click(function() {
            var currentValue = parseInt($("#buyQty").val());
            if (isNaN(currentValue)) {
                currentValue = 0;
            }
            if (currentValue > 1) {
                $("#buyQty").val(currentValue - 1);
            } else {
                $("#buyQty").val(currentValue);
            }
        });
    });
	
    function cart(){
    	<% if (uservo!=null && uservo.getUserId()!=null) {%>
    	if (confirm("장바구니에 추가하시겠습니까?")) {
    	call_server(dataform,'/goods/addToCart',addToCart);
    	}
    	<%}else{%>
    	 alert("로그인을 먼저 해주세요. 로그인 화면으로 이동합니다.");
    	location.href="/login";
    	<%}%>
    }

    function addToCart(cnt) {
		if (cnt > 0 ) {
		    alert("장바구니에 상품이 추가되었습니다");
		} else {
		    alert("장바구니에 상품이 이미 있습니다");
		}
		
	}
    
    /*function directOrder() {
        // 바로주문할 상품의 코드와 수량을 가져옵니다.
        var goodsCd = $('#goodsCd').val();
        var buyQty = $('#buyQty').val();
        
        // 주문 정보를 파라미터로 전달하여 주문 정보 페이지로 이동합니다.
        location.href = "/order/goodsOrder?goodsCd=" + goodsCd + "&buyQty=" + buyQty;
    }*/



</script>
