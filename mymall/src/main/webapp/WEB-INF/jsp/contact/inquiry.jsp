<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.mall.table.vo.UserInfoVO"%>
<%
  UserInfoVO uservo =(UserInfoVO)session.getAttribute("MallUser");
%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>1:1문의</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Muli:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->

  <!-- Template Main CSS File -->

  <!-- =======================================================
  * Template Name: Flattern
  * Template URL: https://bootstrapmade.com/flattern-multipurpose-bootstrap-template/
  * Updated: Mar 17 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  


    <!-- ======= Contact Section ======= -->
 

    <section id="contact" class="contact">
      <div class="container">

        <div class="row justify-content-center" data-aos="fade-up">

          <div class="col-lg-10">

            <div class="info-wrap">
              <div class="row">
                <div class="col-lg-4 info">
                  <i class="bi bi-geo-alt"></i>
                  <h4>주소:</h4>
                  <p>경기도 의정부시 의정부2동 <br>신흥로258번길 25 해태프라자2층</p>
                </div>

                <div class="col-lg-4 info mt-4 mt-lg-0">
                  <i class="bi bi-envelope"></i>
                  <h4>담당자 이메일:</h4>
                  <p>info@example.com<br>contact@example.com</p>
                </div>

                <div class="col-lg-4 info mt-4 mt-lg-0">
                  <i class="bi bi-phone"></i>
                  <h4>담당자 연락처:</h4>
                  <p>010-1234-1234<br>010-1234-7777</p>
                </div>
              </div>
            </div>

          </div>

        </div>
		<form id='dataform'>
        <div class="row mt-5 justify-content-center" data-aos="fade-up">
          <div class="col-lg-10">
            <form action="forms/contact.php" method="post" role="form" class="php-email-form">
             
              <div class="form-group mt-3">
                <input type="text" class="form-control" name="title" id="title" placeholder="제목" required>
              </div>
              <div class="row mt-3">
                <div class="col-md-6 form-group  mt-3 mt-md-0">
	  			<select class="form-control" id="boardType" name="boardType">
		                    	<option value=''>선택</option>
		                    	<option value='로그인문제'>로그인문제</option>
		                    	<option value='배송문제'>배송문제</option>
		                    	<option value='결제문제'>결제문제</option>
                 </select>
                </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                  <input type="text" class="form-control" name="attchFile" id="attchFile" placeholder="첨부파일" required>
                </div>
              </div>
              <div class="form-group mt-3">
                <textarea class="form-control" name="content" id="attchFile" rows="5" placeholder="문의내용" required></textarea>
              </div>
             
              <div class="form-group mt-3"><button type="button" class="btn btn-dark w-100" onclick = "send()">문의내용 보내기</button></div>
            </form>
          </div>

        </div>
        
        </form>

      </div>
    </section><!-- End Contact Section -->

 <!-- End #main -->



  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
	

  <!-- Template Main JS File -->
  <script src="/assets/js/main.js"></script>

</body>

</html>
<script>
function send() {
	    call_server(dataform, '/contact/insertInquiry', sendInquiry);
	}
	
  function sendInquiry(cnt) {
	    if (cnt > 0) {
	    	alert("문의내용이 정상적으로 등록되었습니다.");
	    	location.href = "/contact/myinquiry"
	    } else {
	        alert("실패");
	    }
	}
</script>