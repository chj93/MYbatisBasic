<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions"%> 
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
<script type="text/javascript"
	src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script>
	$(function() {
		 //$("input#all").prop("checked",true);
		 //$("input#all").trigger("click");
        $("table#ajaxTable").hide();
		$("a#search").click(
				function() {
					if ($("select#query").val() == 'empty'
							|| $("input#data").val().length == 0) {
						alert('SearchDataCheck!');
						$("select#query").prop("selectedIndex", 0);
						$("input#data").val('');
						return false;
					}
					//$("form").submit();
					$.ajax({
						url:'memberList.do',
						dataType:'json',
						type:'POST',
						contentType:'application/x-www-form-urlencoded;charset=UTF-8',
						data:{cmd:'memberList',
							  query:$("select#query").val(),
							  data:$("input#data").val()},							  
						success:function(v){
							$("table#ajaxTable").show(1000).hide(100000);
							$("tbody#tv").empty();
							$(v).each(function(index,dom){
								$("tbody#tv").append("<tr><td>"+dom.no+"</td><td>"+dom.id+"</td><td>"+dom.name+"</td><td>"+dom.password+"</td><td>"+dom.gender+"</td><td>"+dom.birth+"</td><td>"+dom.address+"</td><td>"+dom.email+"</td><td>"+dom.tel+"</td><td>"+dom.cp+"</td><td>"+dom.regedate+"</td></tr>");
							});
						},error:function(){
							alert('검색 error');
						}	  							  
					});
				});
		
	  $("input#all").click(function(event){		  
		 $("input[name='nt']").each(function(){			 
			 $(this).prop("checked",$("input#all").is(":checked"));			 
		 });
	  });	
	  $("input[name='nt']").click(function(){
		  var state=false;
		  $("input[name='nt']").each(function(){			  
			  if(!$(this).prop("checked")){
				  state=true;
			  }
		  });//each
		  $("input#all").prop("checked",(!state));  
		  
	  });
	  $("a[name='del']").click(function(){
		  if($(this).text()=='DEL'){
			  $.ajax({
				 url:'/web/memberDelete.do',
				 dataType:'text',
				 type:'POST',
				 data:{cmd:'memberDelete',no:this.id,job:'ajaxDel'},
				 success:function(v){
					 location.reload();
				 }					 
			  });
		  }		  
		 $(this).html("DEL");
		 var delId=this.id;
		 $("input[type=checkbox]").each(function(){
			 //<a name="del" href="#" id="${i.no}">삭제</a>
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
		   var st=0;
		 $("input[name='nt']").each(function(){
			if($(this).is(":checked")){
				st++;
			}//if 
		 });//each
		 if(st<=0){
			 alert('CheckBoxCheck');
			 return false;
		 }
		 $("form[name='delForm']").submit();
		 
	  });//click
	  
	  //수정
	  $("a[name='modify']").click(function(){
	  var id=this.id;
		 if($(this).text()=='MODI'){
		 var json="no="+id+"&";
			 $("tr[lang='"+this.id+"'] td input[type=text]").each(function(index,dom){
				//alert($(dom).val()); 
				//열,속성 -> Key, value
				if($("tr[lang='"+id+"'] td input[type=text]").length-1==index){
					json+=dom.name+"="+dom.value;
				}else{
					json+=dom.name+"="+dom.value+"&";
				}
			 });
			 console.log(json);
			 $.ajax({
				url:'memberModify.do?cmd=memberModify',
				type:'POST',
				dataType:'text',
				data:json,
				success:function(){
					location.reload();
				},error:function(){
					alert('error!');
				}
			 });
			 
			 
			 
		 }
	  	
	  
		 $("tr[lang='"+this.id+"'] a[name='modify']").each(function(){
			 $(this).text($(this).text()=='수정'?"MODI":"수정");
			 if($(this).text()=='수정'){
				 $("tr[lang='"+id+"']").eq(0).show();
				 //수정전
				 $("tr[lang='"+id+"']").eq(1).hide();
				 //수정모드창
			 //수정모드 (MODI)
			 }else{
				 $("tr[lang='"+id+"']").eq(1).show();
				 //수정모드창
				 $("tr[lang='"+id+"']").eq(0).hide();
				 //수정창
			 }
		 });
		 
		 
	  });
	  
});

</script>
</head>
<%-- <c:if test="${id eq null }">
   <c:redirect url="jsp/admin.jsp"></c:redirect>
</c:if> --%>
<body>
	<div id="wrapper">
		<div id="header">
			<div class="topInfoWrap">
				<div class="topInfoArea clfix">
					<div class="loginWrap">
						<span class="fir">2012.05.17</span> <span>13:30:22</span> <span><em>OOO님</em>
							좋은 하루 되세요</span> <a href="" class="btnLogout"><img
							src="/web/img/common/btn_logout.gif" alt="로그아웃" /></a>
					</div>
				</div>
			</div>
			<div class="gnbSubWrap"></div>
		</div>
		<div id="container">
			<div id="contentsWrap" class="contentsWrap">
				<div class="contents">
					<h1 class="title">게시판 리스트</h1>
					<div class="btnSet clfix mgb15">
						<span class="fr"> <span class="button"><a href="#"
								id="search">검색</a></span> <span class="button"><a href="#">글쓰기</a></span>
							<span class="button"><a href="#" id="ckDel">삭제</a></span>
						</span>
					</div>
					<form action="" method="post" enctype="application/x-www-form-urlencoded">
						<table class="bbsWrite mgb35">
							<caption></caption>
							<colgroup>
								<col width="80" />
								<col width="130" />
								<col width="130" />
								<col width="130" />
								<col width="200" />
								<col width="200" />
								<col width="130" />
								<col width="130" />
								<col width="130" />
								<col width="130" />
								<col width="130" />
								<col width="230" />
							</colgroup>
							<tbody>
								<tr>
									<th>검색</th>
									<td><select id="query" name="query">
											<option value="empty" selected="selected">선택하세요</option>
											<option value="ID">ID</option>
											<option value="NAME">NAME</option>
											<option value="EMAIL">EMAIL</option>
									</select> <input type="text" name="data" id="data" class="inputText"
										size="30" /></td>
								</tr>
							</tbody>
						</table>
					</form>
					<form action="memberDelete.do?cmd=memberDelete" name="delForm" method="post">
					<table class="bbsList">
						<colgroup>
							<col width="80" />
							<col width="130" />
							<col width="130" />
							<col width="130" />
							<col width="200" />
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
									name="all" id="all" /> NO</th>
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


						<!--  for(int i=1;i<=5;i++){
                         }
                         for(String s:String[]){
                         }  -->

						<tbody>
							<c:forEach var="i" items="${member}" varStatus="cnt">
								<tr lang="${i.no}">
									<td><input type="checkbox" id="${i.no}"  name="nt" value="${i.no}" /> ${cnt.count}</td>
									<td>${i.id }</td>
									<td>${i.password }</td>
									<td>${i.gender }</td>
									<td>${i.birth }</td>
									<td>${i.address }</td>
									<td>${i.email }</td>
									<td>${i.tel }</td>
									<td>${i.cp }</td>
									<td>${i.regdate }</td>
									<td>${i.name}</td>
									<td><span class="button"><a href="#" name="modify" id="${i.no}">수정</a></span> <span
										class="button"><a name="del" href="#" id="${i.no}">삭제</a></span></td>
								</tr>
								<tr lang="${i.no}" style="display: none;">
									<td><input type="checkbox" id="${i.no}"  name="nt" value="${i.no}" /> ${cnt.count}</td>
									<td><input type="text" value="${i.id}" class="modify" name="id"/></td>
									<td><input type="text" value="${i.password}" class="modify" name="password"/></td>
									<td><input type="text" value="${i.gender}" class="modify" name="gender"/></td>
									<td><input type="text" value="${i.birth}" class="modify" name="birth"/></td>
									<td>${i.address }</td>
									<td>${i.email }</td>
									<td>${i.tel }</td>
									<td>${i.cp }</td>
									<td>${i.regdate }</td>
									<td>${i.name}</td>
									<td><span class="button"><a href="#" id="${i.no}" name="modify">수정</a></span> <span
										class="button"><a name="del" href="#" id="${i.no}">삭제</a></span></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
                  </form>
					<div class="paging">
						<a href="memberList.do?cmd=memberList&page=1">
							<img src="/web/img/button/btn_first.gif"alt="처음페이지" />
						</a>
						<c:choose>
							<c:when test="${pageBean.currentBlock gt 1}">
								<a href="memberList.do?cmd=memberList&page=${pageBean.startPage-1}">
								<img src="/web/img/button/btn_prev.gif" alt="이전" />
								</a> 
							</c:when>
<%-- 							<c:otherwise>
								<a href="#">
								<img src="/web/img/button/btn_prev.gif" alt="이전" />
								</a> 
							</c:otherwise> 
--%>
						</c:choose>
						
						
						
						<c:forEach var="i" begin="${pageBean.startPage}" end="${pageBean.endPage}" >
							<span>
								<c:choose>
									<c:when test="${pageBean.currentPage eq i}">
										<strong>
											<a href="#" style="color:red;">${i}</a> 
										</strong>
									</c:when>
									<c:otherwise>
										<a href="memberList.do?cmd=memberList&page=${i}">${i}</a> 
									</c:otherwise>
								</c:choose>
							</span>
						</c:forEach>
						
						<c:choose>
							<c:when test="${pageBean.totalPage gt pageBean.endPage}">
								<a href="memberList.do?cmd=memberList&page=${pageBean.endPage+1}"><img src="/web/img/button/btn_next.gif" alt="다음" /></a>
							</c:when>
						</c:choose>
						
						
						
						<a href="memberList.do?cmd=memberList&page=${pageBean.totalPage}"><img src="/web/img/button/btn_last.gif" alt="마지막페이지" /></a>

					</div>
				</div>
			</div>
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
</body>
</html>