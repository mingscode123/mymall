<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.mall.table.vo.UserInfoVO"%>

<%
	UserInfoVO uservo =(UserInfoVO)session.getAttribute("MallUser");
 %>
 
 
 
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

   <!-- ======= Header ======= -->
<header id="header" class="d-flex align-items-center">
    <div class="container d-flex justify-content-between">

        <div class="logo">
            <h1 class="text-light"><a href="/">MY SHOP</a></h1>
        </div>

        <nav id="navbar" class="navbar">
            <ul>
                <li><a class="active" href="/">홈</a></li>
                <li><a href="/contact/FAQ">FAQ</a></li>
                <%
		          if(uservo== null || uservo.getUserId()==null){
		          %>
		          <li><a href="/login">로그인</a></li>
		          <li><a href="/user/join">회원가입</a></li>
		          
		          <%}else{ %>
		           <li><a href="/contact/myinquiry">내 문의 </a></li>
		          <li><a href="/goods/cart">장바구니</a></li>
		          <li><a href="#" onclick="logout();">로그아웃</a></li>
		          <%}
				%>
            </ul>
            <i class="bi bi-list mobile-nav-toggle"></i>
        </nav><!-- .navbar -->

    </div>
</header><!-- End Header -->
  <form id='logoutform'>
  
  </form>
  
  <script>
  	function logout(){
  		call_server(logoutform, "/logout", chkLogOut);
  	}
  	
  	function chkLogOut(){
  		location.href='/';
  	}
  </script>
