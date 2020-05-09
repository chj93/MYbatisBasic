<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
 
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- c == core / prefix ="c" 가 아니어도 됨 (namespace) -->
<c:if test="${param.src eq 'java'}">
	<img src="/web/JQuery/img/${param.src}.jpg" style="width:200px; height:200px;" id="con1"/>
	java 영역
</c:if>
<!-- eq = == -->
<c:if test="${param.src eq 'oracle'}">
	<img src="/web/JQuery/img/${param.src}.jpg" style="width:200px; height:200px;" id="con1"/>
	${param.src}영역
</c:if>

<c:choose>
	<c:when test="${param.src eq 'jsp'}">
		${param.src}영역
		<img src="/web/JQuery/img/${param.src}.jpg" style="width:200px; height:200px;" id="con1"/>
	</c:when>

	<c:otherwise>
		<div class="container">
		  <h2>jsp의 otherwise!</h2>
		  <table class="table">
		    <thead>
		      <tr>
		        <th>Firstname</th>
		        <th>Lastname</th>
		        <th>Email</th>
		      </tr>
		    </thead>
		    <tbody>
		      <tr>
		        <td>John</td>
		        <td>Doe</td>
		        <td>john@example.com</td>
		      </tr>
		      <tr>
		        <td>Mary</td>
		        <td>Moe</td>
		        <td>mary@example.com</td>
		      </tr>
		      <tr>
		        <td>July</td>
		        <td>Dooley</td>
		        <td>july@example.com</td>
		      </tr>
		    </tbody>
		  </table>
		</div>
	</c:otherwise>
</c:choose>

<br/>
<b>전체영역</b>




<!-- request.getParameter("src")와 같은 방법 : AJOX에서 PARAMITER 넘기는 방법 -->

<%-- 
${param.src}
<img src="/web/JQuery/img/${param.src}.jpg" style="width:200px; height:200px;" id="con1"/>
 --%>
 
<!--   == 
<img src="/web/JQuery/img/java.jpg" style="width:200px; height:200px;" id="con1"/>
<img src="/web/JQuery/img/oracle.jpg" style="width:200px; height:200px;" id="con1"/>
<img src="/web/JQuery/img/jsp.jpg" style="width:200px; height:200px;" id="con1"/>
 -->
