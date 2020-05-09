<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">    
     $(function(){
    	 //$("tr").eq(0).css('background','blue');
    	 //$("tr:nth-child(2)").css('color','pink');
    	 //$("tr:nth-child(2n+2)").css('background','cyan');
    	 //$("tr:lt(2)").css('color','gray');
    	 //$("tr:gt(2)").css('color','blue'); 
    	 
    	/*  $("tr").each(function(index,dom){
    		 //alert($(this).html());
    		 //alert($(this).text());
    	 });
    	  */
    	/*   $("tr#tr1 td").click(function(){
    		  $(this).css('color','blue');
    	  }); */
    	  //$("h1:eq(3)").css('color','blue');
    	  //$("h1:lt(3)").css('color','blue');
    	 //$("h1:gt(3)").css('color','blue');
    	 $('h1:not(#h1)').css('color','blue');
     });
</script>
</head>
<body>
<!-- &lt;[미만] &gt; [초과]&le; [이하]&ge; [이상] -->
 <!--  <table border="1" width="80%" align="center" cellpadding="0" cellspacing="0">
    <tr id="tr1">
      <td>이름</td>
      <td>성별</td>
      <td>주소</td>
    </tr>
    <tr>
      <td>이혜진</td>
      <td>여자</td>
      <td>서울시</td>
    </tr>
    <tr>
      <td>임명모</td>
      <td>남자</td>
      <td>경기도</td>
    </tr>
    <tr>
      <td>노승원</td>
      <td>남자</td>
      <td>부산시</td>
    </tr>
    <tr>
      <td>최서현</td>
      <td>여자</td>
      <td>서울시</td>
    </tr>
    <tr>
      <td>박인찬</td>
      <td>남자</td>
      <td>서울시</td>
    </tr>
    
  </table>
 -->
 <h1 id="h1">1</h1>
 <h1 id="h2">2</h1>
 <h1 id="h3">3</h1>
 <h1 id="h4">4</h1>
 <h1 id="h5">5</h1>
 <h1 id="h6">6</h1>
 <h1 id="h7">7</h1>
</body>
</html>






