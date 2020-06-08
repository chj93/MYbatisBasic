<%@page import="java.util.List"%>
<%@page import="sist.com.model.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!--  prefix="c" == 접두사 원하는 것 작성  모델2 mvc사용하기위한 지시자-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>관리자</title>
<style>
input.modify{
	width:90%;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="imagetoolbar" content="no" />
<link href="/web/css/contents.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">
$(function(){
	$("table#ajaxTable").hide();
	 
	$("a#searchBtn").click(function(){
		if($("select#query").val()=='empty'||$("input#data").val().length==0){
			alert('검색정보를 선택하세요.');
			$("select#query").prop("selectedIndex",0);
			$("input#data").val('');
			return false;
		//$("form").submit(); 모델 1 방식
		//memberList.do?cmd=memberList
		}//if
		$.ajax({
			url:'memberList.do',
			dataType:'json',
			type:'POST',
			contentsType:'application/x-www-form-urlencoded;charset=UTF-8',
			data:{cmd:'memberList', query:$("select#query").val(),data:$("input#data").val()},
			success:function(v){
				$("table#ajaxTable").show(100).hide(7000);
				$("tbody#tv").empty();
				$(v).each(function(index,dom){
					$("tbody#tv").append("<tr><td>"+dom.no+"</td><td>"+dom.id+"</td><td>"+dom.name+"</td><td>"+dom.password+"</td><td>"+dom.gender+"</td><td>"+dom.birth+"</td><td>"+dom.address+"</td><td>"+dom.email+"</td><td>"+dom.tel+"</td><td>"+dom.cp+"</td><td>"+dom.regedate+"</td></tr>");
				});
			},error:function(){
				alert('에러');
			}
		});//ajax
	});//"a#searchBtn".click
	
	$("input#all").click(function(){
		 //alert($(this).is(":checked"));
		 //alert(this.checked);
		 //alert($(this).prop("checked"));
		 //$(this).prop("checked",$(this).is(":checked"));
		 
		 $("input[name='nt']").each(function(){
			$(this).prop("checked",$("input#all").is(":checked"));
		 });
	});//input#all".click
		 
	
	$("input[name='nt']").click(function(){
		 var state=false;
		 
		 $("input[name='nt']").each(function(){
			//alert($("input#all").is(":checked"));
			//$(this).prop("checked",$("input#all").is(":checked"));
			//전체 선택, 해제
			if(!$(this).prop("checked")){
				state=true;
			}
		 });
		 $("input#all").prop("checked",(!state));
	});//input[name='nt'].click
	
	 //삭제 -ajax
	 /* <span class="button"><a href="#" id="${i.no}" name="del">삭제</a></span> */
	 $("a[name='del']").click(function(){
		if($(this).text()=='DEL'){
			$.ajax({
				url:'/web/memberDelete.do',
				dataType:'text',
				type:'POST',
				data:{no:this.id, job:'ajaxDel', cmd:'memberDelete'},
				success:function(v){
					location.reload();
				}
			});
		}
		$(this).html("DEL");	 
		//$(this).html("삭제가능"+this.id);
		var delId=this.id;
/* 		$("input[type=checkbox]").each(function(){
			$(this).prop("checked",delId==this.id);
		});
 */
 		//전체삭제 - 비동기
 		$("input[name='nt']").each(function(){
 			if(delId==this.id){
 				$(this).prop("checked",true);
 				$("a[name='del']").each(function(){
 					if(this.id!=delId){
 						$(this).html("삭제");
 					}
 				});
 			}else{
 				$(this).prop("checked",false);
 			}
 			
		}); 
	 });
	 
	 $("a#ckDel").click(function(){
		 var st=false;
		$("input[name='nt']").each(function(){
			if($(this).is(":checked")){
				st=true;
			}
		});
		
		if(!st){
			alert('삭제할 데이터를 선택하세요.');
			return false;
		}else{
			$("form[name='delForm']").submit();
		}
	 });
	 
	 //수정
	 $("input.modify").hide();
	 $("a[name='modify']").click(function(){
		 $(this).text('수정가능');
		 var modId=this.id; 
		 //id== no값
		 $("input.modify").each(function(index){
			 
			 if(modId==this.id){
				 $(this).show(10);
				 values=this.value;
			 }
			 
		 });//input.modify
		 if($("a[name='modify']").text()=='수정가능'){
			 $.ajax({
				 url:'/web/memberModify.do',
				 dateType:'text',
				 type:'POST',
				 data:{no:this.id, cmd:'memberModify',value:this.value},
				 success:function(v){
					 //console.log(value);
					 //location.reload();
				 }
		 	 });
		 }
		 

		 
	 });//("a[name='modify']").click

});//전체

</script>
</head>
<body >
<%-- ${member} --%>
	<div id="wrapper">
		<div id="header">
				<div class="topInfoWrap">
					<div class="topInfoArea clfix">
						<div class="loginWrap">
							<span class="fir">2012.05.17</span>
							<span>13:30:22</span>
							<span><em>OOO님</em> 좋은 하루 되세요</span>
							<a href="" class="btnLogout"><img src="/web/img/common/btn_logout.gif" alt="로그아웃" /></a>
						</div>
					</div>
				</div>
				<div class="gnbSubWrap">
					
				</div>
			</div>
		<div id="container">
			<div id="contentsWrap" class="contentsWrap">
				<div class="contents">
					<h1 class="title">게시판 리스트</h1>
					<div class="btnSet clfix mgb15">
						<span class="fr">
							<span class="button"><a href="#" id="searchBtn">검색</a></span>
							<span class="button"><a href="#">글쓰기</a></span>
							<span class="button"><a href="#" id="ckDel">삭제</a></span>
						</span>
					</div>
					<form action="" method="post">
						<table class="bbsWrite mgb35">
							<caption></caption>
							<colgroup>
								<col width="70" />
								<col width="130" />
								<col width="130" />
								<col width="130" />
								<col width="130" />
								<col width="200" />
								<col width="130" />
								<col width="130" />
								<col width="130" />
								<col width="130" />
								<col width="130" />
								<col width="200" />
							</colgroup>
							<tbody>
							<tr>
								<th>검색</th>
								<td>
									<select id="query" name="query">
										<option value="empty" selected="selected">선택하세요</option>
										<option value="ID">ID</option>
										<option  value="NAME">NAME</option>
										<option  value="EMAIL">EMAIL</option>
									</select>
									<input type="text" name="data" id="data" class="inputText" size="30" />
								</td>
							</tr>
							</tbody>
						</table>
					</form>
					
					<form action="memberDelete.do?cmd=memberDelete" name="delForm" method="post">
						<table class="bbsList">
							<colgroup>
								<col width="70" />
								<col width="130" />
								<col width="130" />
								<col width="130" />
								<col width="130" />
								<col width="200" />
								<col width="130" />
								<col width="130" />
								<col width="130" />
								<col width="130" />
								<col width="130" />
								<col width="200" />
								
								
							</colgroup>
							<thead>
							<tr>
								<th scope="col" class="fir">
									<input type="checkbox" name="all" id="all"/>
									NO
								</th>
								<th scope="col" class="fir">ID</th>
								<th scope="col" class="fir">PASSWORD</th>
								<th scope="col" class="fir">GENDER</th>
								<th scope="col" class="fir">BIRTH</th>
								<th scope="col" class="fir">ADDRESS</th>
								<th scope="col" class="fir">EMAIL</th>
								<th scope="col" class="fir">TEL</th>
								<th scope="col" class="fir">CP</th>
								<th scope="col" class="fir">REGDATE</th>
								<th scope="col" class="fir">NAME</th>
								<th scope="col" class="fir">STATE</th>
							</tr>
							</thead>
	
							<tbody>
							<!-- 반복문  var="i" begin="1" end="10" step="1" items=목록
								i 변수를 1부터 10까지 1씩 증가
							-->
							<c:forEach var="i" items="${member}" varStatus="cnt">
							<tr id="con">
								
								<td>
									<input type="checkbox" name="nt" id="${i.no}" value="${i.no}"/>
									${cnt.count}
								</td>
								<!--  -->
								<td>
									${i.id}
									<input type="text" name="modify" class="modify" value="${i.id}" id="${i.no}"/>
								</td>
								<td>
									${i.password}
									<input type="text" name="modify" class="modify" value="${i.password}" id="${i.no}"/>
								</td>
								<td>
									${i.gender}
									<input type="text" name="modify" class="modify" value="${i.gender}" id="${i.no}"/>
								</td>
								<td>
									${i.birth}
									<input type="text" name="modify" class="modify" value="${i.birth}" id="${i.no}"/>
								</td>
								<td>${i.address}</td>
								<td>${i.email}</td>
								<td>${i.tel}</td>
								<td>${i.cp}</td>
								<td>${i.regdate}</td>
								<td>${i.name}</td>
								<td>
									<span class="button"><a href="#" id="${i.no}" name="modify">수정</a></span>
									<span class="button"><a href="#" id="${i.no}" name="del">삭제</a></span>
								</td>
							</tr>
							</c:forEach>
							</tbody>
						</table>
					</form>
					

					<div class="paging">
						<a href="#"><img src="/web/img/button/btn_first.gif" alt="처음페이지" /></a>
						<a href="#"><img src="/web/img/button/btn_prev.gif" alt="이전" /></a>
						
						<span>
							<a href="#">1</a>
							<a href="#">2</a>
							<a href="#">3</a>
							<strong>4</strong>
							<a href="#">5</a>
							<a href="#">6</a>
							<a href="#">7</a>
							<a href="#">8</a>
							<a href="#">9</a>
						</span>				

						<a href="#"><img src="/web/img/button/btn_next.gif" alt="다음" /></a>
						<a href="#"><img src="/web/img/button/btn_last.gif" alt="마지막페이지" /></a>

					</div><!-- //.paging -->
					
								<br></br><br></br>
			<table class="bbsList" id="ajaxTable">
						<colgroup>
							<col width="80" />
							<col width="130" />
							<col width="130" />
							<col width="130" />
							<col width="130" />
							<col width="200" />
							<col width="130" />
							<col width="130" />
							<col width="130" />
							<col width="130" />
							<col width="130" />
							<col width="230" />
						</colgroup>
						<thead>
							<tr>
								<th scope="col" class="fir"><input type="checkbox"
									name="all" /> NO</th>
								<th scope="col" class="fir">ID</th>
								<th scope="col" class="fir">PASSWORD</th>
								<th scope="col" class="fir">GENDER</th>
								<th scope="col" class="fir">BIRTH</th>
								<th scope="col" class="fir">ADDRESS</th>
								<th scope="col" class="fir">EMAIL</th>
								<th scope="col" class="fir">TEL</th>
								<th scope="col" class="fir">CP</th>
								<th scope="col" class="fir">REGDATE</th>
								<th scope="col" class="fir">NAME</th>
								


							</tr>
						</thead>
						<tbody id="tv">							
															
						</tbody>
					</table>
					
					
				</div>
			</div>
		</div>
	</div>
</body>
</html>