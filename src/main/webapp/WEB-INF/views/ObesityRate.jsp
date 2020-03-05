<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <!-- Custom fonts for this theme -->
  <link href="resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

  <!-- Theme CSS -->
  <link href="resources/css/freelancer.min.css" rel="stylesheet">
<meta charset="UTF-8">
<link href="resources/css/freelancer.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- <script>
	$(document).ready(
		function(){
				
	});
</script> -->
</head>
<body id="page-top">
	<%@ include file = "navbar.jsp" %>
	<header class="masthead bg-primary text-white text-center">
    <div class="container d-flex align-items-center flex-column">

      <!-- Masthead Avatar Image -->
     <img class="masthead-avatar mb-5" src="resources/img/get_fit.png" alt=""> 

      <!-- Icon Divider -->
      <div class="divider-custom divider-light">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
          <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
      </div>

      <!-- Masthead Subheading -->
      <p class="masthead-subheading font-weight-light mb-0">${id }님의 비만도를 체크해 보세요!</p>

    </div>
    <br><br><br>
    <!-- Obesity Section -->
   <ui class="nav-link py-0 px-0 px-lg-3 rounded js-scroll-trigger">
	   <!-- <li> -->
	  	<div class="portfolio-item" data-toggle="modal" data-target="#obesity" align="center">
	 		<a href="http://u-health.dobong.go.kr/hcal/fatness.asp"><button type="button" class="btn btn-danger btn-sm">비만도 체크 하기!</button></a>
		</div>
		<!-- </li> -->
	</ui>
	<br><br><br>
	
	<!-- Icon Divider -->
      <div class="divider-custom divider-light">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
          <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
      </div>
	<p class="masthead-subheading font-weight-light mb-0">음식 이상형 월드컵으로 좋아하는 음식을 찾아보세요!</p>
	<br><br><br>
	<!-- Obesity Section -->
   <ui class="nav-link py-0 px-0 px-lg-3 rounded js-scroll-trigger">
	   <!-- <li> -->
	  	<div class="portfolio-item" data-toggle="modal" data-target="#obesity" align="center">
	 		<a href="http://www.piku.co.kr/w/7zd4dE"><button type="button" class="btn btn-danger btn-sm">이상형 월드컵!</button></a>
		</div>
		<!-- </li> -->
	</ui>
	
  </header>
  

  
	<!-- Copyright Section -->
  <section class="copyright py-4 text-center text-white">
    <div class="container">
      <small>Copyright &copy; Your Website 2019</small>
    </div>
  </section>

  <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
  <div class="scroll-to-top d-lg-none position-fixed ">
    <a class="js-scroll-trigger d-block text-center text-white rounded" href="#page-top">
      <i class="fa fa-chevron-up"></i>
    </a>
  </div>

</body>
</html>