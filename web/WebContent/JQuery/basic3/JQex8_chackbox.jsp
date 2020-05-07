<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">
	var m1=['양명모','이혜진','최서현','최혜진','박인찬'];
	var m2['배','고','파'];
	$(function(){
 		$("input[type='checkbox']").click(function(){
			$("div#state > p").text(this.checked? this.value+"를 선택했습니다.":this.value+"를 해제 했습니다.");
    		
			if($(this).val()=='요가'){
    			//$("div#show").html("<input type='checkbox'>양명모");
    			$.each(m1,function(index,dom){
    				$("div#state").append(dom+(index==m1.length-1?" ":","));
    			});
    		}
 		}); 

		
		$("button").click(function(){
		var id=this.id;
	
			if(id=='btn1'||id=='btn2'){			
				$("input[name='hobby']").each(function(index,dom){
					//$(this).attr("checked",true);
					//$(this).attr("checked",id=='btn1');
					$(this).prop("checked",id=='btn1');
				});
			}else if(id=='btn3'){
				var cnt=$("input[name='hobby']:checked").length;
				$("div#state > b").empty();
				$("input[name='hobby']:checked").each(function(index){
					$("div#state>b").append(
						$(this).val()+
						((cnt-1)!=index?", ":" "));
				});
				
				
			}
			
		});
	});
</script>
</head>
<body>

	<div id="check">
		<input type="checkbox" name="hobby" value="요가" />요가
		<input type="checkbox" name="hobby" value="필라테스" />필라테스
		<input type="checkbox" name="hobby" value="수영" />수영
		<input type="checkbox" name="hobby" value="자전거" />자전거
		<input type="checkbox" name="hobby" value="발레" />발레
	</div>
	
	<button id="btn1">전체선택</button>
	<button id="btn2">전체해제</button>
	<button id="btn3">선택값 확인</button>
	
	<div id="state">
		<p></p>
		<b></b>
	</div>
</body>
</html>