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
	<header class="masthead bg-primary text-white text-center" style="height: 260px; padding-top: 150px;">
    <div class="container d-flex align-items-center flex-column">
      <h1 class="masthead-heading text-uppercase mb-0">My Page</h1>
      
        <!-- Icon Divider -->
      <div class="divider-custom divider-light">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
          <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
      </div>
    </div>
  </header>
  <center>
		 <!-- About Section -->
  <section class="page-section bg-primary text-white mb-0" id="about">
    <div class="container">

      <h5 class="page-section-heading text-center text-uppercase text-white">섭취정보및 개인정보를 관리하세요.</h5>
      <br><br><br><br>
      <div class="row">
        <div class="col-lg-4 ml-auto">
				<c:if test="${not empty eatlist}">
      		<TABLE BORDER=1 CELLSPACING=1 CELLPADDING=1>
				<TR>
					<th width=100 bgcolor=#113366><font color=#ffffee size=2>img</th>
					<th width=100 bgcolor=#113366><font color=#ffffee size=2>NUM</th>
					<th width=100 bgcolor=#113366><font color=#ffffee size=2>code</th>
					<th width=150 bgcolor=#113366><font color=#ffffee size=2>eat_Day</th>
					<th width=100 bgcolor=#113366><font color=#ffffee size=2>name</th>
					<th width=100 bgcolor=#113366><font color=#ffffee size=2>maker</th>
					<th width=100 bgcolor=#113366><font color=#ffffee size=2>howmany</th>
					<th width=100 bgcolor=#113366><font color=#ffffee size=2>calroy</th>


					<c:forEach var="row" items="${eatlist}">
					
					<script>
						var total=${row.n }*${row.calory};
					</script>
					
						<tr bgcolor=white>
				

							<td align=center bgcolor=white>&nbsp;<font size=2><img src="resources/${row.img}" width="50" height="50"></td>
							<td align=center bgcolor=white>&nbsp;<font size=2> <a>${row.num }</a></td>

							<td align=center bgcolor=white>&nbsp;<font size=2>${row.code }</td>

							<td align=center bgcolor=white>&nbsp;<font size=2>${row.eat_date }</td>
							
							<td align=center bgcolor=white>&nbsp;<font size=2>${row.name }</td>
							<td align=center bgcolor=white>&nbsp;<font size=2>${row.maker }</td>
							<td align=center bgcolor=white>&nbsp;<font size=2>${row.n }</td>
						
							<td align=center bgcolor=white>&nbsp;<font size=2>${row.calory}</td>
							

						</tr>
					</c:forEach>
			</table>
						</c:if>
						<c:if test="${empty eatlist}">
						<p class="lead" >누적된 섭취정보가 없습니다. 상품정보에서 섭취 버튼을 클릭하시면 누적 섭취정보를 보실수 있습니다.</p>
						</c:if>
      
        </div>
        <div class="col-lg-4 mr-auto">
       
          <p class="lead">${id }님의 섭취한 총 칼로리는 ${total_calory } kcal 입니다.
				총 칼로리를 다 태우려면 버피테스트를 약 ${result }회를 해야합니다.</p>
       
       
        </div>
      </div>

      <!-- About Section Button -->
      <div class="text-center mt-4">
        <span class="portfolio-item" data-toggle="modal" data-target="#info">
            		<button type="button" class="btn btn-xl btn-outline-light">정보수정</button>
         </span>
         <span >
            <a href="resetEat.food?id=${id}"><button type="button" class="btn btn-xl btn-outline-light">섭취정보 리셋</button></a>
         </span>
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
  	
  
	<div class="portfolio-modal modal fade" id="info" tabindex="10" role="dialog" aria-labelledby="portfolioModal1Label" aria-hidden="true">
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
			<div class="div_box" style="width: 600; ">
			
			<form action="update.food" method="post"
				class="text-center form-signin" style="padding-left: 180px;">
				<br><br><br>
			<center>
				<h1>정보 수정</h1>
				아이디 : ${id } <br>
				<p style="text-align: left">비밀번호</p>
				<label for="inputPassword" class="sr-only">Password</label> <input
					type="password" name="pass" id="inputPassword" class="form-control"
					placeholder="Password" required> <br>
				<p style="text-align: left">비밀번호 확인</p>
				<label for="inputPasswordco" class="sr-only">Password</label> <input
					type="password" id="inputPassword" class="form-control"
					placeholder="Password" required> <br>
				<p style="text-align: left">이름</p>
				<label for="Name" class="sr-only">name</label> <input type="text"
					name="name" class="form-control" id="Name" placeholder="Name"
					required> <br>
				<p style="text-align: left">E-mail</p>
				${email }
				<p style="text-align: left">알레르기 정보</p>
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
					<input type="checkbox" name="d" value="계란흰자" id="d12" /><label>계란흰자</label>
					<input type="checkbox" name="d" value="쑥" id="d12" /><label>쑥</label>

				</fieldset>
				<br>

				<input type="submit" class="btn btn-secondary btn-primary" value ="정보수정">
				<a href="main.food"><button type="button" class="btn btn-secondary btn-primary">돌아가기</button></a>
				<a	href="delete.food?id=${id }"><button type="button" class="btn btn-secondary btn-primary">회원 탈퇴</button></a>
			</form>
			

		</div>

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