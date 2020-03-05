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
<style>
  *{margin:0;padding:0;}
  ul,li{list-style:none;}
  #slide{width:800px;height:700px;position:relative;overflow:hidden;}
  #slide ul{width:400%;height:100%;transition:1s;}
  #slide ul:after{content:"";display:block;clear:both;}
  #slide li{float:left;width:25%;height:100%;}
  #slide li:nth-child(1){background:#faa;}
  #slide li:nth-child(2){background:#ffa;}
  #slide li:nth-child(3){background:#faF;}
  #slide li:nth-child(4){background:#aaf;}
  #slide input{display:none;}
  #slide label{display:inline-block;vertical-align:middle;width:10px;height:10px;border:2px solid #666;background:#fff;transition:0.3s;border-radius:50%;cursor:pointer;}
  #slide .pos{text-align:center;position:absolute;bottom:10px;left:0;width:100%;text-align:center;}
  #slide .benerfont{font-family: 'Nanum Myeongjo', serif; font-size: xx-large;}
  #pos1:checked~ul{margin-left:0%;}
  #pos2:checked~ul{margin-left:-100%;}
  #pos3:checked~ul{margin-left:-200%;}
  #pos4:checked~ul{margin-left:-300%;}
  #pos1:checked~.pos>label:nth-child(1){background:#666;}
  #pos2:checked~.pos>label:nth-child(2){background:#666;}
  #pos3:checked~.pos>label:nth-child(3){background:#666;}
  #pos4:checked~.pos>label:nth-child(4){background:#666;}
</style>
	<%@ include file = "navbar.jsp" %>

	 
	<header class="masthead bg-primary text-white text-center" style="height: 330px; padding-top: 150px;">
    <div class="container d-flex align-items-center flex-column">
     	<c:if test="${ type eq 'manager'}">
           <h1 class="masthead-heading text-uppercase mb-0">My Product</h1>
        </c:if>
        <c:if test="${ type eq 'customer'}">
      		<h1 class="masthead-heading text-uppercase mb-0">My Food</h1>
		</c:if>
      <div class="divider-custom divider-light">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
          <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
      </div>
    </div>
  </header>
		
	<section class="page-section portfolio" id="portfolio">
    <div class="container">
      <div class="row" width=100 >
		<c:forEach items="${list }" var="li" >
		<div class="col-md-4 col-lg-3" >
          <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal1">
          <a href="detail.food?code=${li.code }">
            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
              <div class="portfolio-item-caption-content text-center text-white">
                <i class="fas fa-plus fa-3x"></i>
              </div>
            </div>
           <img class="img-fluid" src="resources/${li.img }" alt="">
            <ui>
            	<li>${li.code }</li>
            	<li>${li.name }</li>
            	<li>${li.maker }</li>
            	<li>${li.supportpereat }</li>
            	<li>${li.count }</li>
            </ui>
            </a>
          </div>
          <div>
         <c:if test="${ type eq 'manager'}"> 
         		<c:if test="${ li.allergy eq 'true'}"> 
          			<a target="_blank" class="btn btn-danger btn-sm" href="deletelink.food?code=${li.code}">
          			<i class="fas fa-download mr-2"></i>
          				설문지 삭제
        			</a>
          		</c:if>
          		<c:if test="${ li.allergy ne 'true'}"> 
          			
          			<a target="_blank" role = "button" class="btn btn-primary btn-sm" href="https://docs.google.com/forms/u/0/">설문지 만들기</a>
        			<button type="button" class="btn btn-dark btn-sm portfolio-item-caption" data-toggle="modal" data-target="#howtosurvey">?</button>
        		
        		</c:if>
         <form action="link.food">
         	<input placeholder="설문 URL을 입력하세요" type="text" name="link">
         	<input  type="hidden" name="code" value="${li.code }">
         	<button class="btn btn-primary btn-sm" type="submit">등록</button>
         </form>
         <br>
         <a role = "button" class="btn btn-danger btn-sm" href="DeleteAddFood.food?code=${li.code }">음식 삭제</a>
        </c:if>
        
          <c:if test="${ type eq 'customer'}">
      			<a role = "button" class="btn btn-primary" href="mylistdelete.food?code=${li.code}">삭제하기</a>
      			 <span >
            	<a href="eat.food?id=${id}&code=${li.code}"><button type="button" class="btn btn-primary">섭취</button></a>
          		</span>
		  </c:if>
          
          </div>
        </div>
		
		</c:forEach>
      </div>
      <!-- /.row -->

    </div>
  </section>
  <c:if test="${ empty id}"> 
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

  <!-- Portfolio Modal 1 -->
  <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label" aria-hidden="true">
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
                <img class="img-fluid rounded mb-5" src="resouces/img/portfolio/cabin.png" alt="">
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
  
  <div class="portfolio-modal modal fade" id="howtosurvey" tabindex="10" role="dialog" aria-labelledby="portfolioModal1Label" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
      <div class="modal-content">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">
            <i class="fas fa-times"></i>
          </span>
        </button>
        <div class="modal-body text-center">
          <div class="container">
          	<div class="div_box">
			</div>
            <div class="row justify-content-center">
              <div class="col-lg-8">
               <section class="page-section" id="contact">
    <div class="container"><!-- 슬라이드 배너 시작 --> 
		<div id="slide">
			  <input type="radio" name="pos" id="pos1" checked>
			  <input type="radio" name="pos" id="pos2">
			  <input type="radio" name="pos" id="pos3">
			  <input type="radio" name="pos" id="pos4">
			  <ul>
			    <li>
			    	<img src="resources/img/1.jpg" alt="" width="750px" height="500px">
			    	<p class="benerfont">새로운 양식을 만들거나 </p>
			    	<p class="benerfont">기존의 설문조사양식을 선택합니다. </p>
			    </li>
			    <li>
			    	<img src="resources/img/2.jpg" alt="" width="750px" height="500px"><br><br>
			    	<p class="benerfont">양식선택이 완료되면 보내기 버튼을 클릭합니다</p>
			    </li>
			    <li>
			    	<img src="resources/img/3.jpg" alt="" width="750px" height="500px"><br><br>
			    	<p class="benerfont">클립모양을 탭에서 주소를 복사합니다</p>
			    </li>
			    <li>
			    	<img src="resources/img/4.jpg" alt="" width="750px" height="500px"><br> <br>
			    	<p class="benerfont">복사한 주소를 입력칸에 넣은 후 등록 버튼을 누릅니다</p>
			    </li>
			  </ul>
			  <p class="pos">
			    <label for="pos1"></label>
			    <label for="pos2"></label>
			    <label for="pos3"></label>
			    <label for="pos4"></label>
			  </p>
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
               <section class="page-section" id="contact">
    <div class="container">
		<div class="aa div_box">
			
			<!-- <script>
			
			location.href="https://docs.google.com/forms/u/0/";
			
			</script>
 -->
		</div>
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
