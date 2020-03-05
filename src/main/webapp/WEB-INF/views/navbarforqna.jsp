<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <!-- Custom fonts for this theme -->
  <link href="resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

  <!-- Theme CSS -->
  <link href="resources/css/freelancer.min.css" rel="stylesheet">

<body id="page-top">
<!-- Bootstrap core JavaScript -->
  <script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Contact Form JavaScript -->
  <script src="resources/js/jqBootstrapValidation.js"></script>
  <script src="resources/js/contact_me.js"></script>

  <!-- Custom scripts for this template -->
  <script src="resources/js/freelancer.min.js"></script>

<!-- Navigation -->
  <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
    <div class="container">
     
       <a href="#page-top">Safe Food</a>
      
      <button class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
       	 <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="/safefood/list.food">HOME</a>
          </li>
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="/safefood/listNotice.food">공지사항</a>
          </li>
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="/safefood/product.food">상품정보</a>
          </li>
          <c:if test="${ type eq 'customer'}">
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="/safefood/bestProduct.food">베스트 상품 정보</a>
          </li>
          </c:if>
           <c:if test="${ type eq 'manager'}">
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="/safefood/mbestProduct.food">베스트 상품 정보</a>
          </li>
          </c:if>
          <c:if test="${ type eq 'manager'}">
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="/safefood/myproduct.food">내 상품</a>
          </li>
          </c:if>
          <c:if test="${ type eq 'customer'}"> 
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="/safefood/mymenu.food">내 식단</a>
          </li>
           </c:if>
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="/safefood/qna.food">QNA</a>
          </li >
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="/safefood/obesity.food">심심풀이</a>
          </li >
         <c:if test="${ not empty id }">
          <c:if test="${ type eq 'manager'}">
         <ui class="nav-link py-0 px-0 px-lg-3 rounded js-scroll-trigger">
      	   <li>${id }님, 환영합니다.</li>
           <li >
            <a href ="logout.food" name ="id" ><button type="button" class="btn btn-primary btn-sm">로그아웃</button></a>
            <a href ="managerPage.food?=${ id }" name = "mp"><button type="button" class="btn btn-primary btn-sm">관리페이지</button></a>
           </li>
          </ui>
          </c:if>
          
          <c:if test="${ type eq 'customer'}">
          <ui class="nav-link py-0 px-0 px-lg-3 rounded js-scroll-trigger">
      	   <li>${id }님, 환영합니다.</li>
           <li >
            <a href ="logout.food" name ="id" ><button type="button" class="btn btn-primary btn-sm">로그아웃</button></a>
            <a href ="myPage.food?=${ id }" name = "mp"><button type="button" class="btn btn-primary btn-sm">마이페이지</button></a>
           </li>
          </ui>
          
          </c:if>
		 </c:if>
	     <c:if test="${ empty id }">
		  <ui class="nav-link py-0 px-0 px-lg-3 rounded js-scroll-trigger">
           <li>로그인 해주세요 </li>
           <li >
			  <span class="portfolio-item" data-toggle="modal" data-target="#login">
            		<button type="button" class="btn btn-primary btn-sm">Login</button>
          		</span>
          		<span class="portfolio-item" data-toggle="modal" data-target="#join">
            		<button type="button" class="btn btn-primary btn-sm">join</button>
          		</span>
		  	 <!-- <a href="login.food" method="post">
				<button type="button" class="btn btn-primary btn-sm">Login</button>
			 </a> -->
          </li>
         </ui>
	</c:if>
        </ul>
      </div>
    </div>
  </nav>
  <!-- Portfolio Modal 1 -->
  	
  
	<div class="portfolio-modal modal fade" id="login" tabindex="10" role="dialog" aria-labelledby="portfolioModal1Label" aria-hidden="true">
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
    <div class="container">
		<div class="div_box">
			
			 <section class="page-section" id="contact">
    <div class="container">

      <!-- Contact Section Heading -->
      <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Login</h2>

      <!-- Icon Divider -->
      <div class="divider-custom">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
          <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
      </div>

      <!-- Contact Section Form -->
      <div class="row">
        <div class="col-lg-8 mx-auto">
          <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
          <form action="dologin.member" method="post"  name="sentMessage" >
            
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>ID</label>
                <input class="form-control" name="id"id="name" type="text" placeholder="ID" required="required" data-validation-required-message="Please enter your ID.">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>Password</label>
                <input class="form-control" name="pass" id="pass" type="password" placeholder="Password" required="required" data-validation-required-message="Please enter your Password.">
                <p class="help-block text-danger"></p>
              </div>
            </div>              
            <div class="form-group">
              <button type="submit" class="btn btn-primary btn-xl" id="sendMessageButton">로그인</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>
			<form class="text-center form-signin">
				<div class="btn-group" role="group" aria-label="Basic example">
					<a href="reg.food"><button type="button" class="btn btn-secondary btn-primary" >회원가입</button></a>
					<a href="findMember.food"><button type="button" class="btn btn-secondary btn-primary">아이디 찾기</button></a>
					<a href="findMember.food"><button type="button" class="btn btn-secondary btn-primary">비밀번호 찾기</button></a>
				</div>
				<p class="mt-5 mb-3 text-muted">&copy; 2017-2019</p>
			</form>

		</div>
	</div>
  </section>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--  Modal 2 -->
	<div class="portfolio-modal modal fade" id="join" tabindex="10" role="dialog" aria-labelledby="portfolioModal1Label" aria-hidden="true">
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
               
    <div class="container">
		<div class="aa div_box">
		 <!-- Contact Section -->
  <section class="page-section" id="contact">
    <div class="container">

      <!-- Contact Section Heading -->
      <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">join us</h2>

      <!-- Icon Divider -->
      <div class="divider-custom">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
          <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
      </div>

      <!-- Contact Section Form -->
      <div class="row">
        <div class="col-lg-8 mx-auto">
          <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
          <form action="insert.food" method="post" name="sentMessage" >
            
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>ID</label>
                <input class="form-control" name="id"id="name" type="text" placeholder="ID" required="required" data-validation-required-message="Please enter your ID.">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>Password</label>
                <input class="form-control" name="pass" id="pass" type="password" placeholder="Password" required="required" data-validation-required-message="Please enter your Password.">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>Name</label>
                <input class="form-control" name="name"id="name" type="text" placeholder="Name" required="required" data-validation-required-message="Please enter your name.">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>Email Address</label>
                <input class="form-control" name="email" id="email" type="email" placeholder="Email Address" required="required" data-validation-required-message="Please enter your email address.">
                <p class="help-block text-danger"></p>
              </div>
            </div>
             <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>AGE</label>
                <input class="form-control" name="age" id="age" type="text" placeholder="Age" required="required" data-validation-required-message="Please enter your Age.">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            <div >
              <div >
                <label>알레르기 정보</label>
				<fieldset>
					<input type="checkbox" name="d" value="대두" id="d1" /><label>대두</label>
					<input type="checkbox" name="d" value="땅콩" id="d2" /><label>땅콩</label>
					<input type="checkbox" name="d" value="우유" id="d3" /><label>우유</label>
					<input type="checkbox" name="d" value="게" id="d4" /><label>게</label>
					<input type="checkbox" name="d" value="새우" id="d5" /><label>새우</label>
					<input type="checkbox" name="d" value="참치" id="d6" /><label>참치</label>
					<input type="checkbox" name="d" value="연어" id="d7" /><label>연어</label>
					<input type="checkbox" name="d" value="소고기" id="d8" /><label>소고기</label>
					<br> <input type="checkbox" name="d" value="닭고기" id="d9" /><label>닭고기</label>
					<input type="checkbox" name="d" value="돼지고기" id="d10" /><label>돼지고기</label>
					<input type="checkbox" name="d" value="복숭아" id="d11" /><label>복숭아</label>
					<input type="checkbox" name="d" value="민들레" id="d12" /><label>민들레</label>
					<input type="checkbox" name="d" value="계란흰자" id="d13" /><label>계란흰자</label>
					<input type="checkbox" name="d" value="쑥" id="d14" /><label>쑥</label>

				</fieldset>
                <p class="help-block text-danger"></p>
              </div>
            </div>
            <div >
              <div >
                <label>가입 타입</label>
                <fieldset>
					<input type="checkbox" name="t" value="manager" id="d1" /><label>관리자</label>
					<input type="checkbox" name="t" value="customer" id="d2" /><label>소비자</label>
				</fieldset>
                <p class="help-block text-danger"></p>
              </div>
            </div>
            <div class="form-group">
              <button type="submit" class="btn btn-primary btn-xl" id="sendMessageButton">회원가입</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>
		</div>
			</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>