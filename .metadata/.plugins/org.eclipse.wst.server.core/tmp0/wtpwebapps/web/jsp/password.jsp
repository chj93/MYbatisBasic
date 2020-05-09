<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	.checkbox{
		display: inline-block;
	}

	.btn{
		width: 80px;
	    height: 30px;
	    background: black;
	    display: inline-block;
	    color: #fff;
	    border: none;
	    border-radius: 5px;
	}


</style>
</head>
<body>
<%
	String no=request.getParameter("no");
	String job=request.getParameter("job");
	String pageData=request.getParameter("page");
	String pnum=request.getParameter("pnum");

%>

	<div class="container">
	<%=pnum %>
	  <h2>비밀번호 입력</h2>
	  <form class="form-inline" action="passwordConfirm.jsp" method="post">
	  <!-- 비밀번호가 노출되면 안되므로 메소드 포스트 방식 -->
	    
	    <div class="form-group" style="display: inline-block;">
	      <label for="pwd">비밀번호 :</label>
	      <input type="password" class="form-control" id="pwd" placeholder="비밀번호를 입력하세요." name="cp">
	      <input type="hidden" name="no" value="<%=no%>">
	      <input type="hidden" name="job" value="<%=job%>">
	      <input type="hidden" name="page" value="<%=pageData%>">
	      <input type="hidden" name="pnum" value="<%=pnum%>">
	    </div>
	    <div class="checkbox">
	      <!-- <label><input type="checkbox" name="remember"> Remember me</label> -->
	    </div>
	    <button type="submit" class="btn btn-default" style="display: inline-block;">제출</button>
	  </form>
	</div>
</body>
</html>