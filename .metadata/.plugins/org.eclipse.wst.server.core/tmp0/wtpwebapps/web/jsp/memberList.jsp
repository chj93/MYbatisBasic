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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="imagetoolbar" content="no" />
<link href="/web/css/contents.css" rel="stylesheet" type="text/css" />
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
							<span class="button"><a href="#">검색</a></span>
							<span class="button"><a href="#">글쓰기</a></span>
						</span>
					</div>

					<table class="bbsWrite mgb35">
						<caption></caption>
						<colgroup>
							<col width="30" />
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
						</colgroup>
						<tbody>
						<tr>
							<th>검색</th>
							<td>
								<select>
									<option>선택하세요</option>
								</select>
								<input type="text" name="" class="inputText" size="30" />
							</td>
						</tr>
						</tbody>
					</table>

					<table class="bbsList">
						<colgroup>
							<col width="30" />
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
							
							
						</colgroup>
						<thead>
						<tr>
							<th scope="col" class="fir">NO</th>
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

						<tbody>
						<!-- 반복문  var="i" begin="1" end="10" step="1" items=목록
							i 변수를 1부터 10까지 1씩 증가
						-->
						<c:forEach var="i" items="${member}" varStatus="cnt">
						<tr>
							<td>${cnt.count}</td>
							<!--  -->
							<td>${i.id}</td>
							<td>${i.password}</td>
							<td>${i.gender}</td>
							<td>${i.birth}</td>
							<td>${i.address}</td>
							<td>${i.email}</td>
							<td>${i.tel}</td>
							<td>${i.cp}</td>
							<td>${i.regdate}</td>
							<td>${i.name}</td>
						</tr>
						</c:forEach>
						</tbody>
					</table>

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

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>