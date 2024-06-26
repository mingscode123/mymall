<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<section id="hero">
    <div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade" data-bs-ride="carousel">
        <div class="carousel-inner" role="listbox">
            <!-- Slide 1 -->
            <div class="carousel-item active" style="background-image: url(assets/img/backimg1.jpg);">
            </div>
            <!-- Slide 2 -->
            <div class="carousel-item" style="background-image: url(assets/img/backimg2.jpg);">
                <div class="carousel-container">
                </div>
            </div>
            <!-- Slide 3 -->
            <div class="carousel-item" style="background-image: url(assets/img/backimg3.jpg);">
                <div class="carousel-container">
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
            <span class="carousel-control-prev-icon bx bx-left-arrow" aria-hidden="true"></span>
        </a>
        <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
            <span class="carousel-control-next-icon bx bx-right-arrow" aria-hidden="true"></span>
        </a>
        <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>
    </div>
</section><!-- End Hero -->

<main id="main">
    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio">
        <form id='dataform'>
            <div class="container">
                <div class="section-title" data-aos="fade-up">
                    <h2><strong>HOT ITEMS</strong></h2>
                </div>
                <div class="row" data-aos="fade-up" id="hotitem">
                </div>
            </div>
        </form>
    </section>
    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio">
        <form id='hiddenform'>
            <div class="container">
                <div class="row" data-aos="fade-up">
                    <div class="col-lg-12 d-flex justify-content-center">
                        <ul id="portfolio-flters">
                            <li data-filter="*" class="filter-active">전체</li>
                        </ul>
                    </div>
                </div>
                <div id='category' class="row portfolio-container" data-aos="fade-up">
                </div>
            </div>
        </form>
    </section><!-- End Portfolio Section -->
</main><!-- End #main -->
<script>
    function hotItemData() {
        call_server(dataform, '/main/hotItem', getHotItemData);
    }
    function getHotItemData(list) {
        for (var i = 0; i < list.length; i++) {
            var str = '<div class="col-lg-3 col-md-6" onclick="goodsView(\'' + list[i].goodsCd + '\')" style="cursor: pointer;">' +
                '<img src="' + list[i].thumnailUrl + '" class="img-fluid"  style="width: 250px; height: 250px;"  alt="">' +
                '<div>' +
                '<h6>' + list[i].goodsName + '</h6>' +
                '<p>' + list[i].sellPrice + '원' + '</p>' +
                '</div>' +
                '</div>';
            $('#hotitem').append(str);
        }
    }

    hotItemData();
    function showGoods() {
        call_server(hiddenform, '/main/displaygoods', displaygoods);
    }
    function displaygoods(list) {
        for (var i = 0; i < list.length; i++) {
            var str = '<div class="col-lg-4 col-md-6 portfolio-item filter-' + list[i].ctCd + '">' +
                '<img src="' + list[i].thumnailUrl + '" class="img-fluid"  style="width: 410px; height: 410px;"  alt="">' +
                '<div class="portfolio-info">' +
                '<h4>' + list[i].goodsName + '</h4>' +
                '<p>' + list[i].sellPrice + '원' + '</p>' +
                '<a href="' + list[i].thumnailUrl + '" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="확대이미지">' +
                '<i class="bx bx-plus"></i></a>' +
                '<a href="/goods/view?goodsCd=' + list[i].goodsCd + '" class="details-link" title="상품상세"><i class="bx bx-link"></i></a>' +
                '</div>' +
                '</div>';
            $('#category').append(str);
        }
    }

    showGoods();
    function category() {
        call_server(hiddenform, '/main/category', getCategory);
    }
    function getCategory(list) {
        for (var i = 0; i < list.length; i++) {
            var str = '<li data-filter=".filter-' + list[i].ctCd + '">' + list[i].ctName + '</li>';
            $('#portfolio-flters').append(str);
        }
    }
    category();
    
    function goodsView(cd) {
        location.href = "/goods/view?goodsCd=" + cd;
  
    }
    
    
</script>
