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
	<section class="page-section portfolio" id="portfolio">
    <div class="container">
      <div class="row" >
		<c:forEach items="${mlist }" var="li" >
		<div class="col-md-4 col-lg-3 " >
          <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal1">
          <a href="detail.food?code=${li.code }">
            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
              <div class="portfolio-item-caption-content text-center text-white">
                <i class="fas fa-plus fa-3x"></i>
              </div>
            </div>
            <c:choose>
            <c:when test="${not empty mcnt  }">
           <img class="img-fluid" src="resources/${li.img }" alt="">
            <ui>
            	<li>${li.code }</li>
            	<li>${li.name }</li>
            	<li>${li.maker }</li>
            	<li>${li.supportpereat }</li>
            	<li>등록한 상품 총 조회수 ${mcnt}회 중에서 ${li.count }회 조회수로 가장 높습니다.</li>
            </ui>
            </c:when>
            <c:when test="${empty mcnt}">
            	<p class="masthead-subheading font-weight-light mb-0">${id }님이 업로드한 음식이 없습니다</p>
            </c:when>
          </c:choose>
            </a>
          </div>
          <div>
          	<a role = "button" class="btn btn-primary" href="mylistadd.food?code=${li.code}">추가</a>
          </div>
        </div>
		
		</c:forEach>
		
      </div>
      <!-- /.row -->

    </div>
  </section>
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