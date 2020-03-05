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
	<br>
	<br>
	<br>
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

</body>
</html>