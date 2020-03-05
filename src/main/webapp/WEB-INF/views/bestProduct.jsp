<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/css/freelancer.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body id="page-top">
	<%@ include file = "navbar.jsp" %>
		
	<header class="masthead bg-primary text-white text-center" style="height: 330px; padding-top: 150px;">
	<div class="container d-flex align-items-center flex-column">

      <!-- Masthead Avatar Image -->
	  <h1 class="masthead-heading text-uppercase mb-0">Best product</h1>
      <!-- Masthead Heading -->
      <div class="divider-custom divider-light">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
          <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
      </div>
      <!-- Masthead Subheading -->
    
    </div>
	</header>
	<c:forEach items="${list }" var="li" >
	 <section class="page-section portfolio" id="portfolio">
    <div class="container">

      <!-- Portfolio Section Heading -->
      <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">
      ${li.name}
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
		<h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">${li.maker}</h2>
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
            <img class="img-fluid rounded mb-5" src="resources/${li.img}" alt="">
          </div>
        
		
			  <div class="text-center mt-4">
		<c:if test="${ type eq 'customer'}"> 
         <a class="btn btn-primary btn-sm" href="mylistaddproduct.food?code=${li.code }">
          <i class="fas fa-download mr-2"></i>
          	식단에 추가
         </a>
          <a class="btn btn-primary btn-sm" href="eat.food?id=${id}&code=${li.code}&url=product">
          <i class="fas fa-download mr-2"></i>
          	섭취
         </a>
          
         <c:if test="${ li.allergy eq 'true'}"> 
          		 <span >
            		<a href="${li.link }"><button type="button" class="btn btn-danger">설문하기</button></a>
          		</span>
          	</c:if>
        </c:if>
     
      </div>
        </div>
       <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
      		<ui>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
           
            	<li>상품명 : ${li.name }</li>
            	<li>브랜드 : ${li.maker }</li>
            	<li>권장량 : ${li.supportpereat }</li>
            	<li>총 조회수 ${mcnt}회 중에서 ${li.count }회 조회수로 가장 높습니다.</li>
            </ui>
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
  
  </c:forEach>

   <c:if test="${empty id}"> 
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  </c:if>
  	<!-- Copyright Section -->
  <section class="copyright py-4 text-center text-white">
    <div class="container">
      <small>Copyright &copy; Your Website 2019</small>
    </div>
  </section>
</body>
</html>