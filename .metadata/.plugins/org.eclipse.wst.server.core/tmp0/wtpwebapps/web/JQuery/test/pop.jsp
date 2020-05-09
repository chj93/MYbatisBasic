<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">
	$(function(){
	
	});
</script>
</head>
<body>
	<%for(int i=1; 5<i; i++){ %>
		<div id="atc<%=i%>">
			<div class="question">질문질문질문질문질문질질문문질문질문질문질문</div>
			<div class="answer">대답대답대답대답대답대답대답대답대답대답</div>
		</div>
	<%} %>

</body>
</html>