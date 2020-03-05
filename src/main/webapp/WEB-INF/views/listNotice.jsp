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
	<!-- Navigation -->
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
			
			<TABLE BORDER=1 CELLSPACING=1 CELLPADDING=1>
				<TR>
					<th width=100 bgcolor=#113366><font color=#ffffee size=2>NUM</th>
					<th width=200 bgcolor=#113366><font color=#ffffee size=2>PASS</th>
					<th width=100 bgcolor=#113366><font color=#ffffee size=2>NAME</th>
					<th width=150 bgcolor=#113366><font color=#ffffee size=2>WDATE</th>
					<th width=100 bgcolor=#113366><font color=#ffffee size=2>TITLE</th>
					<th width=100 bgcolor=#113366><font color=#ffffee size=2>CONTENT</th>
					<th width=100 bgcolor=#113366><font color=#ffffee size=2>COUNT</th>


					<c:forEach var="row" items="${list}">
						<tr bgcolor=white>

							<td align=center bgcolor=white>&nbsp;<font size=2> <a
									href="detailNotice.food?num=${row.num }">${row.num }</a></td>

							<td align=center bgcolor=white>&nbsp;<font size=2>${row.pass }</td>

							<td align=center bgcolor=white>&nbsp;<font size=2>${row.name }</td>

							<td align=center bgcolor=white>&nbsp;<font size=2>${row.wdate }</td>

							<td align=center bgcolor=white>&nbsp;<font size=2>${row.title }</td>


							<td align=center bgcolor=white>&nbsp;<font size=2>${row.content }</td>

							<td align=center bgcolor=white>&nbsp;<font size=2>${row.count }</td>
						</tr>
					</c:forEach>
			</table>
			<br><br>
			 <a href=insertNoticeForm.food>
			 	<button type="button" class="btn btn-primary btn-sm">새글 쓰기</button>
			 </a>
			</section>
			
			 <!-- Copyright Section -->
  <section class="copyright py-4 text-center text-white">
    <div class="container">
      <small>Copyright &copy; Your Website 2019</small>
    </div>
  </section>
</body>
</html>
