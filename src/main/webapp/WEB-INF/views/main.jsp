<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
</head>
<body id="page-top">
	<%@ include file = "navbar.jsp" %>
	<header class="masthead bg-primary text-white text-center">
    <div class="container d-flex align-items-center flex-column">
		
      <!-- Masthead Avatar Image -->
     <img class="masthead-avatar mb-5" src="resources/img/avataaars.svg" alt=""> 

      <!-- Masthead Heading -->
      <form method="post" action = "search.food">
			<select name="condition">
				<option value="name">상품명</option>
				<option value="material">영양성분</option>
			</select> 
			<input type="text" name="word"> 
			<button type="submit" value="검색" class="btn btn-danger">검색</button>
		</form>
      <h1 class="masthead-heading text-uppercase mb-0">Safe Food</h1>

      <!-- Icon Divider -->
      <div class="divider-custom divider-light">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
          <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
      </div>

      <!-- Masthead Subheading -->
      <p class="masthead-subheading font-weight-light mb-0">you can do it</p>

    </div>
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
  
  <!--  Modal 2 -->
  	
  
	<div class="portfolio-modal modal fade" id="addfood" tabindex="10" role="dialog" aria-labelledby="portfolioModal1Label" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
      <div class="modal-content">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">
            <i class="fas fa-times"></i>
          </span>
        </button>
        <div class="modal-body text-center">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-8">
               <section class="page-section" id="contact">
    <div class="container" style="width: 400">
			<form class="text-center form-signin" action="AddFood.food" method="post" enctype="multipart/form-data">
				<p style="text-align: left">제품이미지</p>
				<label for="Name" class="sr-only">제품이미지</label> <input type="file"name="file" class="form-control" placeholder="제품이미지를 등록하세요(.jpg)" required> <br>
				<p style="text-align: left">제품 이름</p>
				<label for="Name" class="sr-only">제품이름</label> <input type="text" name="name" class="form-control"
					placeholder="제품이름" required> <br>
				<p style="text-align: left">제품 브랜드</p>
				<label for="Name" class="sr-only">제품 브랜드</label> <input type="text" name="maker" class="form-control"
					placeholder="제품 브랜드" required> <br>
				<p style="text-align: left">탄수화물</p>
				<label for="Name" class="sr-only">탄수화물</label> <input type="text" name="carvo" class="form-control"placeholder="탄수화물"
					required> <br>
				<p style="text-align: left">칼로리</p>
				<label for="Name" class="sr-only">칼로리</label> <input type="text" name="calory"  class="form-control"
					placeholder="칼로리" required autofocus> <br>
				<p style="text-align: left">단백질</p>
				<label for="Name" class="sr-only">단백질</label> <input type="text" name="protain"  class="form-control"
					placeholder="단백질" required autofocus> <br>
					<p style="text-align: left">나트륨</p>
				<label for="Name" class="sr-only">나트륨</label> <input type="text" name="natrium" class="form-control"
					placeholder="나트륨" required autofocus> <br>
					<p style="text-align: left">트랜스지방</p>
				<label for="Name" class="sr-only">트랜스지방</label> <input type="text" name="transfat"  class="form-control"
					placeholder="트랜스지방" required autofocus> <br>	
					<p style="text-align: left">원재료</p>
					<label for="Name" class="sr-only">지방</label> <input type="text" name="fat"  class="form-control"
					placeholder="지방" required autofocus> <br>	
					<p style="text-align: left">원재료</p>
				<label for="Name" class="sr-only">원재료</label> <textarea name="materials" class="form-control"
					placeholder="원재료를  쉼표(,)로 구분해서 적어주세요" required autofocus></textarea> <br>
					<input type="submit" value="등록하기">
										</form>
									</div>
  </section>
                <button class="btn btn-primary" href="#" data-dismiss="modal">
                  <i class="fas fa-times fa-fw"></i>
                  Close Window
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
</body>
</html>