<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<!-- http : 프로토콜, 비연결지향 
	 sesson 객체  -> cookie 파일로 저장
 
-->

<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("input[type='button']").click(function(){
			$("form").submit();
		});
	});
</script>
</head>
<body>
	<form action="cookie2.jsp" method="post">
		<input type="radio" value="red" name="color"/>red
		<input type="radio" value="aquamarine" name="color"/>aquamarine
		<input type="radio" value="pink" name="color"/>pink
		<input type="radio" value="orange" name="color"/>orange
		<input type="button" value="Send"/>
	</form>
</body>
</html>