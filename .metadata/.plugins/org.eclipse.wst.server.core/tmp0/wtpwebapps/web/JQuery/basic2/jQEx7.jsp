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
		$("button[id='c1']").click(function(){
			alert('button 중 id가 c1');
		});
		$("button").eq(1).click(function(){
			alert('button의 2번째');
		});
		$("#c3").click(function(){
			//alert('id=c3');
			ajaxProcess('/web/JQuery/ajaxData/data4.js',null,'GET','script');
		});
		$("button:last").click(function(){
			alert('마지막 button');
			ajaxProcess('/web/JQuery/ajaxData/data5.jsp',null,'GET','json');
		});
	});
	
/* 	
	function ajaxProcess(url,data,method){
		$.ajax({
			url:url,
			type:method,
			dataType:'script',
			success:function(v){
				//console.log(v);
				say();
				hello();
			}
		});
	}
*/
//dataType을 text로 할경우 eval();을 통해 자바스크립트로 실행될 수 있도록 만들 수 있음
/* 
	function ajaxProcess(url,data,method){
		$.ajax({
			url:url,
			type:method,
			dataType:'text',
			success:function(v){
				//console.log(v);
				eval(v);
				say();
				hello();
			}
		});
	}
 */
/* 	
	function ajaxProcess(url,data,method){
		$.ajax({
			url:url,
			type:method,
			dataType:'json',
			success:function(v){
				console.log(v);
				//console.log(v[0]+" "+v[1]);
 				$.each(v,function(index,dom){
					alert("NO="+dom.NO+", NAME="+dom['NAME']+", CNT="+dom.CNT);
				}); 
			}
		});
	}
  */
 
	function ajaxProcess(url,data,method,dateType){
		$.ajax({
			url:url,
			type:method,
			dataType:dateType,
			success:function(v){
				console.log(v);
				if(url.substring(url.lastIndexOf("/")+1)=='data4.js'){
					//alert('data4.js');
					//eval(v);
					//say();
					process1(v);
					
				}else if(url.substring(url.lastIndexOf("/")+1)=='data5.jsp'){
					//alert('data5.jsp');
	 				//$.each(v,function(index,dom){
						//alert("NO="+dom.NO+", NAME="+dom['NAME']+", CNT="+dom.CNT);
					//}); 
					process2(v);
				}
			}
		});
	}
	function process1(v){
		alert('data4.js');
		eval(v);
		say();
	}
	function process2(v){
		alert('data5.jsp');
		$.each(v,function(index,dom){
			alert("NO="+dom.NO+", NAME="+dom['NAME']+", CNT="+dom.CNT);
			console.log(v);
		}); 
	}
  
	
</script>
</head>
<body>
	<button id="c1">Click1</button>
	<button id="c2">Click2</button>
	<button id="c3">Click3</button>
	<button id="c4">Click4</button>
</body>
</html>