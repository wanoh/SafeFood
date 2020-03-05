	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/css/freelancer.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript"></script>
</head>
<body id="page-top">
	<%@ include file = "navbar.jsp" %>
	
	<header >
	<div class="container d-flex align-items-center flex-column">

      <!-- Masthead Avatar Image -->

      <!-- Masthead Heading -->
      <form method="post" action = "search.food">
			<select name="condition">
				<option value="name">상품명</option>
				<option value="material">영양성분</option>
			</select> 
			<input type="text" name="word"> 
			<button type="submit" value="검색" class="btn btn-danger">검색</button>
		</form>

      <!-- Icon Divider -->
      <!-- Masthead Subheading -->
      <p class="masthead-subheading font-weight-light mb-0">you can do it</p>
    </div>
		
	</header>
    
     <section class="page-section portfolio" id="portfolio">
    <div class="container">

      <!-- Portfolio Section Heading -->
      <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">
      ${f.name}
		<c:choose>
	      	<c:when test="${yes_allergy eq '0'}">
	      		<img src="resources/img/no_allergy.JPG" alt="" width="50"> <img src="resources/img/safe_allergy.JPG" alt="" width="100"> 
	      	</c:when>
	      	<c:when test="${yes_allergy ne '0'}">
	      		<img src="resources/img/yes_allergy.JPG" alt="" width="50"> <img src="resources/img/danger_allergy.JPG" alt="" width="100"> 
	      	</c:when>
      </c:choose>
      </h2>

      <!-- Icon Divider -->
      <div class="divider-custom">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
          <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
      </div>
		<h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">${f.maker}</h2>
      <!-- Portfolio Grid Items -->
        <div class="row">
        <div class="col-lg-4 ml-auto">
        <br>
        
          <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal1">
            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
              <div class="portfolio-item-caption-content text-center text-white">
                <i class="fas fa-plus fa-3x"></i>
              </div>
            </div>
            <img class="img-fluid rounded mb-5" src="resources/${f.img}" alt="">
          </div>
        
		
			  <div class="text-center mt-4">
		<c:if test="${ type eq 'customer'}"> 
         <a class="btn btn-primary btn-sm" href="mylistaddproduct.food?code=${f.code }">
          <i class="fas fa-download mr-2"></i>
          	식단에 추가
         </a>
          <a class="btn btn-primary btn-sm" href="eat.food?id=${id}&code=${f.code}&url=product">
          <i class="fas fa-download mr-2"></i>
          	섭취
         </a>
          
         <c:if test="${ f.allergy eq 'true'}"> 
          		 <span >
            		<a href="${f.link }"><button type="button" class="btn btn-danger">설문하기</button></a>
          		</span>
          	</c:if>
        </c:if>
     
      </div>
        </div>
        <div class="col-lg-4 mr-auto">
          <p class="lead">
			<%@ include file = "GR.jsp" %>	
		  </p>
        </div>
        <div class="col-lg-4 mr-auto">
           <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#1">
        	
            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
              <div class="portfolio-item-caption-content text-center text-white">
                <i class="fas fa-plus fa-3x"></i>
              </div>
            </div>
          </div>
        </div>
     	 </div>
    </div>
    
  </section>
  
  <!-- Copyright Section -->
  <section class="copyright py-4 text-center text-white">
    <div class="container">
      <small>Copyright &copy; Your Website 2019</small>
    </div>
  </section>
 
  
  <!-- Portfolio Modal 1 -->
  	
  
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
                <img class="img-fluid rounded mb-5" src="resources/${f.img }" alt="">
                <!-- Portfolio Modal - Text -->
                <p class="mb-5">${f.material}</p>
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