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
	<header class="masthead bg-primary text-white text-center" style="height: 330px; padding-top: 150px;">
    <div class="container d-flex align-items-center flex-column">
      <h1 class="masthead-heading text-uppercase mb-0">Notice</h1>
      
        <!-- Icon Divider -->
      <div class="divider-custom divider-light">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
          <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
      </div>
      		<form method="post" action="search.bod">
				<select name="search" style="height: 35px;">
					<option value="name">글쓴이</option>
					<option value="title">제목</option>
				</select> 
				<input type="text" name="searchtext" style="height: 35px;" />
				<button type="submit" value="검색" class="btn btn-danger">검색</button>
			</form>
    </div>
  </header>

<section class="page-section portfolio" id="portfolio">
<center>
		<TABLE BORDER=2 style="">
		
 		<TR>
				<TH WIDTH=100 style="background-color: #2c3e50;"><font style="color:#fff ">NUM</font></TH><TD  width=100 align=center>${b.getNum() }</TD>
				<TH WIDTH=200 style="background-color: #2c3e50"><font style="color:#fff ">PASS</font></TH><TD width=100 align=center>${b.getPass() }</TD>
				
		</TR> 
				<TR>
				<TH WIDTH=100 style="background-color: #2c3e50"><font style="color:#fff ">NAME</font></TH><TD width=100 align=center>${b.getName() }</TD>
				<TH WIDTH=200 style="background-color: #2c3e50"><font style="color:#fff ">WDATE</font></TH><TD width=100 align=center>${b.getWdate() }</TD>
				
				</TR>
		<TR>
					<TH WIDTH=100 style="background-color: #2c3e50"><font style="color:#fff ">TITLE</font></TH>
					<TD COLSPAN=3>${b.getTitle() }</TD>
		</TR>
		<TR>
					<TH WIDTH=100 style="background-color: #2c3e50"><font style="color:#fff ">CONTENT</font></TH>
			<TD COLSPAN=3><textarea readonly cols=120 rows=20>${b.getContent() }</textarea></TD>
		</TR> 
			<TR>
				<TH WIDTH=100 style="background-color: #2c3e50"><font style="color:#fff ">COUNT</font></TH>
				<TD COLSPAN=3 align=center>${b.getCount() }</TD>
				
			</TR>		
	</TABLE><br>
	<br><a href="listNotice.food">전체화면</a>&nbsp;&nbsp;&nbsp;	
	<br><a href="deleteNotice.food?num=${b.getNum() }">삭제하기</a>&nbsp;&nbsp;&nbsp;	
	
			</section>
			
<!-- Copyright Section -->
  <section class="copyright py-4 text-center text-white">
    <div class="container">
      <small>Copyright &copy; Your Website 2019</small>
    </div>
  </section>
</body>
</html>
