<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>
  <script src="resources/js/jqBootstrapValidation.js"></script>
  <script src="resources/js/contact_me.js"></script>
  <script src="resources/js/freelancer.min.js"></script>
	<meta charset="UTF-8">
	<link href="resources/css/freelancer.min.css" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
</head>
<body id="page-top">
<%@ include file = "navbar.jsp" %>
	
	<header class="masthead bg-primary text-white text-center" style="height: 350px; padding-top: 150px;">
	<div class="container d-flex align-items-center flex-column">

      <!-- Masthead Avatar Image -->
	  <h1 class="masthead-heading text-uppercase mb-0">product</h1>
      <!-- Masthead Heading -->
     
      <div class="divider-custom divider-light">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
          <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
      </div>
       <form method="post" action = "search.food">
			<select name="condition" style="height: 35px;">
				<option value="name">상품명</option>
				<option value="material">영양성분</option>
			</select> 
			<input type="text" name="word" style="height: 35px;"> 
			<button type="submit" value="검색" class="btn btn-danger">검색</button>
		</form>
    </div>
		
	</header>
	
	<section class="page-section portfolio" id="portfolio">
    <div class="container" >
      <div class="row" >
		<c:forEach items="${list }" var="li" >
		<div class="col-md-6 col-lg-3">
          <div class="portfolio-item mx-auto" data-toggle="modal" data-target="portfolioModal1" >
        	<a href="detail.food?code=${li.code }">
           <img class="img-fluid" src="resources/${li.img }" alt="" width="100px" height=100px">
            <ui>
            	<li>이름 :${li.name }</li>
            	<li>브랜드:${li.maker }</li>
            	<li>권장량:${li.supportpereat}</li>
            </ui>
            </a>
          </div>
          
          <div>
          <c:if test="${ type eq 'customer'}"> 
          	<a role = "button" class="btn btn-primary" href="mylistadd.food?code=${li.code}">추가</a>
          	 <span >
            	<a href="eat.food?id=${id}&code=${li.code}&url=product"><button type="button" class="btn btn-primary">섭취</button></a>
          	</span>
          	<c:if test="${ li.allergy eq 'true'}"> 
          		 <span >
            		<a href="${li.link }"><button type="button" class="btn btn-danger">설문하기</button></a>
          		</span>
          	</c:if>
          	 
          </c:if>
          </div>
        </div>
		
		</c:forEach>
      </div>
      <!-- /.row -->

    </div>
  </section>
  
 
  
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

  <!-- Modals -->

  <!--Modal 1 -->

	<div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="10" role="dialog" aria-labelledby="portfolioModal1Label" aria-hidden="true">
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
                <!-- Portfolio Modal - Title -->
                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">Log Cabin</h2>
                <!-- Icon Divider -->
                <div class="divider-custom">
                  <div class="divider-custom-line"></div>
                  <div class="divider-custom-icon">
                    <i class="fas fa-star"></i>
                  </div>
                  <div class="divider-custom-line"></div>
                </div>
                <!-- Portfolio Modal - Image -->
                <img class="img-fluid rounded mb-5" src="resources/${li.img }" alt="">
                <!-- Portfolio Modal - Text -->
                <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
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
<!-- Portfolio Modal 1 -->
  	
  
	<div class="portfolio-modal modal fade" id="survey" tabindex="10" role="dialog" aria-labelledby="portfolioModal1Label" aria-hidden="true">
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
                <!-- Portfolio Modal - Title -->
                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">${f.name}</h2>
                <!-- Icon Divider -->
                <div class="divider-custom">
                  <div class="divider-custom-line"></div>
                  <div class="divider-custom-icon">
                    <i class="fas fa-star"></i>
                  </div>
                  <div class="divider-custom-line"></div>
                </div>
                <!-- Portfolio Modal - Image -->
                <img class="img-fluid rounded mb-5" src="resources/${li.img }" alt="">
                <!-- Portfolio Modal - Text -->
                <p class="mb-5">${li.link }</p>
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