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
    	
    	$("body").css('background','burlywood');
    	$("body *").css('background','beige');
    	$("body>div>div").css('background','#fff');
    	$("body>div>ol>li").css('font-weight','bold');
    	
    	$("div>ol>li").each(function(index,dom){
    		console.log($(this).html());
    	});
    	
    	$("div ul li").click(function(){
    		$(this).html($(this).css('cursor','pointer'));
    		$(this).html($(this).html()+' Click');
    	});
    
    	$("h1").click(function(){
    		//this ==주소이기 때문에 x
    		//this.html('<b>Test</b>');
    		this.innerHTML='<b>Test</b>';
    	});
    	
    	$("div>ol>li").click(function(){
    		//this.style.display='none';
    		var data=$(this).html();
    		show(data);
    	});
    	
    	function show(data){
    		alert(data+"선택");
    		//this.style.cursor='pointer';
    	}
    	
/*		함수 테스트 1
    	var fun1=function(){
    		alert('Var function Test 1')
    	}
    	var fun2=function(){
    		alert('Var function Test 2')
    	}
    	function testFun(a){
    		a();
    	}
    	
    	testFun(fun1);
    	testFun(fun2);
*/    	
		//함수 테스트 2
    	function process(){
    		a=function(){
    			alert('test');
    		}
    		a();
    	}
    	process();
    	
    	
     });
</script>
</head>
<body>
	<h1>선택자테스트</h1>
	<div>
		<ul>
			<li>최혜진</li>
			<li>이혜진</li>
			<li>임명모</li>
			<li>최서현</li>
			<li>박인찬</li>
		</ul>
		<div>
			div 테스트
		</div>
	</div>
	
	<div>
		<ol>
			<li>아메리카노</li>
			<li>카페라떼</li>
			<li>바닐라라떼</li>
			<li>모카라떼</li>
			<li>녹차라떼</li>			
		</ol>
	</div>	
   
   

</body>
</html>






