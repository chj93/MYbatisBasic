<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String no=request.getParameter("no");
	String job=request.getParameter("job");
	String pageData=request.getParameter("page");

%>

	<div class="container">
	
	  <h2>PassWord</h2>
	  <form class="form-inline" action="passwordConfirm.jsp" method="post">
	  <!-- ��й�ȣ�� ����Ǹ� �ȵǹǷ� �޼ҵ� ����Ʈ ��� -->
	    
	    <div class="form-group">
	      <label for="pwd">��й�ȣ :</label>
	      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="cp">
	      <input type="hidden" name="no" value="<%=no%>">
	      <input type="hidden" name="job" value="<%=job%>">
	      <input type="hidden" name="page" value="<%=pageData%>">
	    </div>
	    <div class="checkbox">
	      <!-- <label><input type="checkbox" name="remember"> Remember me</label> -->
	    </div>
	    <button type="submit" class="btn btn-default">����</button>
	  </form>
	</div>
</body>
</html>