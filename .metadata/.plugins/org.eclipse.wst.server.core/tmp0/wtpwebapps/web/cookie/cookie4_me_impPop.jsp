<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>이미지 팝업</title>
<style type="text/css">
div>p{
    font-size: 13px;
    display: inline-block;
}
</style>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("input#ck").attr("")
	});
</script>
</head>
<body>
	<img src="/web/reImage/CS1.jpg" alt="이미지1" width="100%" height="100%"/>
	<div>
		<p>오늘 하루 이창 다시 보지 않기</p>
		<form action="#">
			<input type="checkbox" name="ck" id="ck">
		</form>
	</div>
<%
	String ck="";
	Cookie cookie=new Cookie("ck",ck);
	
    if(ck!=null&& ck.equals("on") ){
    	cookie.setMaxAge(60);
		response.addCookie(cookie);
    }else{
    	cookie.setMaxAge(0);
    }

%>

</body>
</html>