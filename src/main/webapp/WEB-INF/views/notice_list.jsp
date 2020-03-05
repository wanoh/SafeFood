<%@ page contentType="text/html;charset=euc-kr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html><body>
<center>
		<h1>공지사항</h1>	
		<img src="resources/img/f1.jpg">
		<form method="post" action="search.bod">
			<select name="search">
				<option value="name">글쓴이</option>
				<option value="title">제목</option>
			</select>
			<input type="text" name="searchtext"/>
			<input type="submit" value="검색"/>
		</form>

		<TABLE BORDER=1 CELLSPACING=1 CELLPADDING = 1><TR>
		<th width=100 bgcolor=#113366><font color=#ffffee size=2>번호</th>
		<th width=200 bgcolor=#113366><font color=#ffffee size=2>제목</th>
		<th width=100 bgcolor=#113366><font color=#ffffee size=2>글쓴이</th>
		<th width=150 bgcolor=#113366><font color=#ffffee size=2>날짜</th>
		<th width=100 bgcolor=#113366><font color=#ffffee size=2>조회수</th>

	  <c:forEach var="row" items="${list}">
	    <tr bgcolor=blue>
		   <td align=center bgcolor=pink>&nbsp;<font size=2>${list. }</td>
	       
	      <td align=center bgcolor=pink>&nbsp;<font size=2>
	       <a href="read.bod?num=${row.num }">2</a></td>
	       
	      <td align=center bgcolor=pink>&nbsp;<font size=2>222</td>
	       
	      <td align=center bgcolor=pink>&nbsp;<font size=2>222</td>
	       
	      <td align=center bgcolor=pink>&nbsp;<font size=2>222</td>
	       
	    </tr>
	    </c:forEach>
</table>
<br></br>
<a href=insert.bod>새글쓰기</a>
</body></html>