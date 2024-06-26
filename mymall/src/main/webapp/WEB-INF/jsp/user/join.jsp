<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Pages / Register - NiceAdmin Bootstrap Template</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->


  <!-- Template Main CSS File -->
  

  <!-- =======================================================
  * Template Name: NiceAdmin
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Updated: Mar 17 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <main>
    <div class="container">

      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
       
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <div class="d-flex justify-content-center py-4">
                <a href="/" class="logo d-flex align-items-center w-auto">
                  <img src="/assets/img/myshop.png" alt="">
                </a>
              </div><!-- End Logo -->
  
              <div class="card mb-3">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">* 회원 가입 *</h5>
                    <p class="text-center small">계정 생성을 위해 회원정보를 입력해주세요 </p>
                  </div>

                  <form id="dataform" class="row g-3 needs-validation" novalidate>
                    <div class="col-12">
                      <label for="yourUserName" class="form-label">회원명</label>
                      <input type="text" name="userName" class="form-control" id="yourName" required>
                      <div class="invalid-feedback">이름을 입력해주세요!</div>
                    </div>

                    <div class="col-12">
                      <label for="yourEmail" class="form-label">이메일</label>
                      <input type="email" name="email" class="form-control" id="yourEmail" required>
                      <div class="invalid-feedback">이메일을 입력해주세요!</div>
                    </div>
                    
                    <div class="col-12">
                      <label for="yourPhone" class="form-label">전화번호</label>
                      <input type="text" name="phone" class="form-control" id="yourPhone" required>
                      <div class="invalid-feedback">전화번호를 입력해주세요!</div>
                    </div>
                    
                    <div class="col-12">
                      <label for="yourAddress" class="form-label">주소</label>
                      <input type="text" name="addr" class="form-control" id="yourAddress" required>
                      <div class="invalid-feedback">주소를 입력해주세요!</div>
                    </div>
                    
                     <div class="col-12">
                      <label for="yourAddressDtl" class="form-label">상세주소</label>
                      <input type="text" name="addrDtl" class="form-control" id="yourAddressDtl" required>
                    </div>

                    <div class="col-12">
				    <label for="yourUserId" class="form-label">회원 ID</label>
					    <div class="input-group has-validation">
					        <input type="text" name="userId" class="form-control" id="yourUserId" required onblur="check()" style="width:100%">
					          <div id='checkUserId'></div>
					        <div class="invalid-feedback" >아이디를 입력해주세요!</div>
					        <div id="userIdValidationMessage"></div>
					    </div>
					</div>

                    <div class="col-12">
                      <label for="yourPassword" class="form-label">비밀번호</label>
                      <input type="password" name="userPwd" class="form-control" id="yourPassword" required>
                      <div class="invalid-feedback">비밀번호를 입력해주세요!</div>
                    </div>
                    
                    <div class="col-12">
                      <label for="checkPassword" class="form-label">비밀번호 재확인</label>
                      <input type="password" name="checkPassword" class="form-control" id="checkPassword" required>
                      <div id="passwordMatchMessage"></div>
                    </div>

                    <div class="col-12">
                      <div class="form-check">
                        <input class="form-check-input" name="terms" type="checkbox" value="" id="acceptTerms" required>
                        <label class="form-check-label" for="acceptTerms">모두 확인하였으며 동의합니다. <a href="#">약관보기</a></label>
                        <div class="invalid-feedback">약관에 동의해주세요.</div>
                      </div>
                    </div>
                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="button" onclick="join()">회원가입</button>
                    </div>
                    <div class="col-12">
                      <p class="small mb-0">이미 계정이 있으신가요? <a href="/login">로그인</a></p>
                    </div>
                  </form>

                </div>
              </div>

              <div class="credits">
                <!-- All the links in the footer should remain intact. -->
                <!-- You can delete the links only if you purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
                Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
              </div>

            </div>
          </div>
        </div>

      </section>

    </div>
  </main><!-- End #main -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  

  <!-- Template Main JS File -->
  <script src="/assets/js/main.js"></script>
  <script src="/assets/js/jquery-3.7.1.js"></script>
  <script src="/assets/js/common.js"></script>

  <script>
    $(document).ready(function() {
        $('#yourPassword, #checkPassword').on('input', function() {
            comparePasswords();
        });
    });

    function comparePasswords() {
        var password = $('#yourPassword').val();
        var confirmPassword = $('#checkPassword').val();

        if (password === confirmPassword) {
            $('#passwordMatchMessage').text('비밀번호가 일치합니다').css('color', 'green');
        } else {
            $('#passwordMatchMessage').text('비밀번호가 일치하지 않습니다').css('color', 'red');
        }
    }

    function validation() {
        if ($('#yourName').val() == '') {
            alert("회원명을 입력해주세요!");
            return false;
        }
        if ($('#yourEmail').val() == '') {
            alert("이메일을 입력해주세요!");
            return false;
        }
        if ($('#yourPhone').val() == '') {
            alert("전화번호를 입력해주세요!");
            return false;
        }
        if ($('#yourAddress').val() == '') {
            alert("주소를 입력해주세요!");
            return false;
        }
        if ($('#yourUserId').val() == '') {
            alert("회원ID를 입력해주세요!");
            return false;
        }
        if ($('#yourPassword').val() == '') {
            alert("비밀번호를 입력해주세요!");
            return false;
        }
        if ($('#yourPassword').val() !== $('#checkPassword').val()) {
            alert("비밀번호와 비밀번호 재확인이 일치하지 않습니다!");
            return false;
        }
        if (!$('#acceptTerms').is(':checked')) {
            alert("약관에 동의해주세요!");
            return false;
        }
        return true;
    }

    function join() {
        if (!validation()) {
            return;
        }
        call_server(dataform, '/user/userjoin', userjoin);
    }

    function userjoin(cnt) {
        if (cnt > 0) {
            alert("회원가입 성공!");
            location.href = '/login';
        } else {
            alert("회원가입 실패!");
        }
    }

    function check() {
        call_server(dataform, '/user/checkUserId', checkUserId);
    }

    var idValid = false;

    function checkUserId(cnt) {
        if (cnt == 1) {
            idValid = false;
            $("#checkUserId").text("이미 사용 중인 아이디입니다. 다른 아이디를 입력해주세요.").css("color", "red");
        } else if (cnt == 0) {
            idValid = true;
            $("#checkUserId").text("사용 가능한 아이디입니다.").css("color", "green");
        }
    }
  </script>

</body>

</html>
